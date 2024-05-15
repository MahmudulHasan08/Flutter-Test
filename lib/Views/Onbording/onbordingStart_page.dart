import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:test/Utils/utils.dart';
import 'package:test/Views/Onbording/onbordingSecond_page.dart';
import 'package:test/Widgets/custombutton.dart';
import 'package:test/Widgets/customtext.dart';

class OnbordingFirstScreen extends StatelessWidget {
  const OnbordingFirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF6F6F7),
      body: Stack(
        children: [
          Column(
            children: [
              //  height(30.h),
              Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: EdgeInsets.only(top: 75.h, right: 20.w),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30.r),
                        border: Border.all(
                          color: const Color(0xffE7E7E7),
                          width: 1.5.w,
                        )),
                    height: 45.h,
                    width: 75.w,
                    child: Center(
                        child: CustomText(
                      text: 'Skip',
                      color: const Color(0xff5C5C5C),
                      size: 16.sp,
                      fontWeight: FontWeight.w600,
                    )),
                  ),
                ),
              ),
              height(20.h),
              Image.network(
                "https://upload.wikimedia.org/wikipedia/en/thumb/e/e2/IMG_Academy_Logo.svg/800px-IMG_Academy_Logo.svg.png",
                height: 388.h,
              ),
              Expanded(child: Container()),
              Container(
                height: 240.h,
                width: double.maxFinite,
                color: const Color(0xff00DAAE),
              ),
            ],
          ),
          Positioned(
            left: 20.w,
            right: 20.w,
            // bottom: 20.h,
            bottom: 45,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 23.w)
                  .copyWith(top: 22.h, bottom: 30.h),
              

              // width: double.maxFinite,
              // color: Colors.red,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30.r),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0xff000029).withOpacity(0.5),
                      offset: const Offset(0, 3),
                      blurRadius: 12,
                    )
                  ]),
              child: SingleChildScrollView(
                child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 9.h,
                          width: 38.w,
                          decoration: const BoxDecoration(
                              gradient: LinearGradient(colors: [
                            Color(0xffD8FFE3),
                            Color(0xffA5FDD1),
                            Color(0xff49E3B4),
                            Color(0xff13D399),
                            Color(0xff0DD59B),
                            Color(0xff56D1AC),
                            Color(0xff8AE6CA)
                          ])),
                          // child: Text('sheut'),
                        ),
                        width(5.w),
                        Container(
                          height: 9.h,
                          width: 9.w,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30.r),
                              border: Border.all(
                                color: const Color(0xff2C9676),
                                width: 1.w,
                              )),
                        )
                      ],
                    ),
                    height(28.h),
                     Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: 'Meet ',
                            style: TextStyle(
                                fontWeight: FontWeight.w900,
                                fontSize: 28.sp,
                                color: const Color(0xff2C2C2C)),
                          ),
                          TextSpan(
                            text: 'Jarvis',
                            style: TextStyle(
                                fontWeight: FontWeight.w900,
                                fontSize: 28.sp,
                                color: const Color(0xff25946A)),
                          ),
                          // TextSpan(text: ' world!'),
                        ],
                      ),
                    ),
                    height(10.h),
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: 'The AI-powered GPT-3 ',
                            style: TextStyle(
                                fontWeight: FontWeight.w900,
                                fontSize: 15.sp,
                                color: const Color(0xff2C2C2C)),
                          ),
                          TextSpan(
                            text: 'serach ',
                            style: TextStyle(
                                fontWeight: FontWeight.w900,
                                fontSize: 15.sp,
                                color: const Color(0xff25946A)),
                          ),
                          TextSpan(
                            text: 'and ',
                            style: TextStyle(
                                fontWeight: FontWeight.w900,
                                fontSize: 15.sp,
                                color: const Color(0xff2C2C2C)),
                          ),
                          TextSpan(
                            text: 'content',
                            style: TextStyle(
                                fontWeight: FontWeight.w900,
                                fontSize: 15.sp,
                                color: const Color(0xff25946A)),
                          ),
                          // TextSpan(text: ' world!'),
                          // TextSpan(text: ' world!'),
                        ],
                      ),
                    ),
                    Text.rich(TextSpan(children: [
                      TextSpan(
                        text: 'creation  ',
                        style: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 15.sp,
                            color: const Color(0xff25946A)),
                      ),
                      TextSpan(
                        text: 'app that gives you accurate, ad-',
                        style: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 15.sp,
                            color: const Color(0xff2C2C2C)),
                      ),
                    ])),
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: 'free results instantly.',
                            style: TextStyle(
                                fontWeight: FontWeight.w900,
                                fontSize: 15.sp,
                                color: const Color(0xff2C2C2C)),
                          ),
                        ],
                      ),
                    ),
                
                    height(25.h),
                     CustomButton(name: "Next",onTap: (){
                      Get.to(()=> OnbordingSecondScreen());
                     },),
                    height(15.h),
                    Text.rich(TextSpan(
                      children: [
                         TextSpan(
                        text: 'Already have an account?  ',
                        style: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 14.sp,
                            color: const Color(0xff5C5C5C)),
                      ),
                         TextSpan(
                        text: 'Log in',
                        style: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 14.sp,
                            color: const Color(0xff25946A),
                            decoration: TextDecoration.underline
                            ),
                            
                      ),
                     
                      ]
                    ))
                
                    // CustomText(
                    //   text: "Meet Jarvis",
                    //   size: 28.sp,
                    //   fontWeight: FontWeight.bold,
                    // )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
