import 'dart:async';
import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:test/Models/product_model.dart';
import 'package:http/http.dart' as http;

class ProductApiController extends GetxController {
  @override
  void onInit() {
    Future.delayed(const Duration(milliseconds: 500), () {
      fetchProduct();
    });

    super.onInit();
  }

  List<ProductModel> product = [];
  RxList<ProductModel> products = RxList<ProductModel>();
  // RxList<ProjectElement> projectElements = RxList<ProjectElement>();

  Future<List<ProductModel>> fetchProduct() async {
    http.Response response = await http
        .get(Uri.parse("https://mvs.bslmeiyu.com/api/v1/products/popular"));
    if (response.statusCode == 200) {
      var data = jsonDecode(response.body)['products'];
      print(data);

      for (int i = 0; i < data.length; i++) {
        products.add(ProductModel.fromMap(data[i]));
      }
    }
    print(products[0].name);
    return products;
  }
}
