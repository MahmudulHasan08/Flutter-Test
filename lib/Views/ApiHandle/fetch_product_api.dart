import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:test/Controllers/product_api_controller.dart';
import 'package:test/Models/product_model.dart';
import 'package:test/Utils/utils.dart';
import 'package:test/Widgets/customtext.dart';

class FetchProductAPi extends StatelessWidget {
  const FetchProductAPi({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(ProductApiController());
    return Scaffold(
      appBar: AppBar(
        title: const Text("Show Products"),
        centerTitle: true,
        backgroundColor: const Color(0xffF6F6F7),
      ),
      body: Obx(() =>  controller.products.isEmpty
          ? const Center(child: CircularProgressIndicator(color: Color(0xff2C9676),))
          :  Column(
            children: [
              Expanded(
                  child: ListView.builder(
                    itemCount: controller.products.length,
                    itemBuilder: (_, index) {
                      ProductModel product = controller.products[index];
                      return Container(
                        // color: Colors.lightBlue.shade400,
                        decoration: BoxDecoration(
                            color: const Color(0xffFFFFFF),
                            borderRadius: BorderRadius.only(
                                topRight: Radius.elliptical(40.r, 40.r),
                                topLeft: Radius.elliptical(40.r, 40.r),
                                bottomRight: Radius.elliptical(40.r, 40.r)),
                            boxShadow: [
                              BoxShadow(
                                color: const Color(0xff000000).withOpacity(0.1),
                                // spreadRadius: 1,
                                blurRadius: 6,
                                offset: const Offset(
                                    0, 3), // changes position of shadow
                              )
                            ]),
                        margin: EdgeInsets.all(16.r),
                        child: Padding(
                          padding: EdgeInsets.all(16.r),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text.rich(TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'Product Name: ',
                                    style: TextStyle(
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  TextSpan(
                                    text: product.name,
                                    style: TextStyle(
                                        fontSize: 14.sp,
                                        ),
                                  ),
                                ]
                              )),
                              height(8.h),
                             
                              height(8.h),
                              Text.rich(TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'Product Description: ',
                                    style: TextStyle(
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  TextSpan(
                                    text: product.description,
                                    style: TextStyle(
                                        fontSize: 14.sp,
                                        ),
                                  ),
                                ]
                              )),
                              
                              height(8.h),
                              Text.rich(TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'Price: ',
                                    style: TextStyle(
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  TextSpan(
                                    text: product.price.toString(),
                                    style: TextStyle(
                                        fontSize: 14.sp,
                                        ),
                                  ),
                                ]
                              )),
                              
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
            ],
          ),),
    );
  }
}
