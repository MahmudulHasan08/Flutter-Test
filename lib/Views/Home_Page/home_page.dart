import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test/Views/ApiHandle/fetch_product_api.dart';
import 'package:test/Widgets/custombutton.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CustomButtonAuth(name: "FETCH DATA FROM API",onTap: (){
          Get.to(()=> FetchProductAPi());
        },),
      ),
    );
  }
}