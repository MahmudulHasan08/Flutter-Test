import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:test/Controllers/signin_controller.dart';
import 'package:test/Controllers/signup_controller.dart';
import 'package:test/Utils/utils.dart';
import 'package:test/Widgets/authbutton.dart';
import 'package:test/Widgets/custombutton.dart';
import 'package:test/Widgets/customtext.dart';
import 'package:test/Widgets/reuseable_textfiled.dart';

class OnbordingSecondScreen extends StatelessWidget {
  const OnbordingSecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: const Color(0xffF6F6F7),
      body: Stack(
        children: [
          Column(
            children: [
              height(75.h),
              Padding(
                padding: EdgeInsets.only(right: 20.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {
                        Get.back();
                      },
                      icon: Image.asset(
                        "assets/images/arrow_back.png",
                        width: 21.w,
                      ),
                    ),
                    Container(
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
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              height(22.h),
              Image.network(
                "https://upload.wikimedia.org/wikipedia/en/thumb/e/e2/IMG_Academy_Logo.svg/800px-IMG_Academy_Logo.svg.png",
                height: 410.h,
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
            top: 180,
            left: 22,
            right: 22,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 22, vertical: 21.h),
              decoration: BoxDecoration(
                  color: const Color(0xffFFFFFF),
                  borderRadius: BorderRadius.only(
                      topRight: Radius.elliptical(40.r, 40.r),
                      topLeft: Radius.elliptical(40.r, 40.r),
                      bottomLeft: Radius.elliptical(40.r, 40.r)),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0xff000000).withOpacity(0.1),
                      // spreadRadius: 1,
                      blurRadius: 6,
                      offset: const Offset(0, 3), // changes position of shadow
                    )
                  ]),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 20.h),
                    child: Container(
                      height: 24.h,
                      width: 24.w,
                      decoration: BoxDecoration(
                          color: const Color(0xff8E9775),
                          borderRadius: BorderRadius.circular(5.r)),
                      child: Center(
                          child: CustomText(
                        text: "Jp",
                        color: const Color(0xffFFFFFFDE),
                        fontWeight: FontWeight.bold,
                        size: 14.sp,
                      )),
                    ),
                  ),
                  width(21.w),
                  Expanded(
                      child: CustomText(
                    text: "Got any creative ideas a 10 years old's birthday?",
                    color: const Color(0xff3E3E3E),
                    size: 15.sp,
                  ))
                ],
              ),
            ),
          ),
          Positioned(
            top: 285,
            left: 22,
            right: 22,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 22, vertical: 21.h),
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
                      offset: const Offset(0, 3), // changes position of shadow
                    )
                  ]),
              child: Column(
                children: [
                  Row(
                    // crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(bottom: 20.h),
                        child: Container(
                          height: 24.h,
                          width: 24.w,
                          decoration: BoxDecoration(
                              color: const Color(0xff8E9775),
                              borderRadius: BorderRadius.circular(5.r)),
                          child: Center(
                              child: CustomText(
                            text: "Jp",
                            color: const Color(0xffFFFFFFDE),
                            fontWeight: FontWeight.bold,
                            size: 14.sp,
                          )),
                        ),
                      ),
                      width(15.w),
                      Padding(
                        padding: EdgeInsets.only(bottom: 25.h),
                        child: CustomText(
                          text: "Here are a few ideas:",
                          color: const Color(0xff3E3E3E),
                          size: 15.sp,
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 38.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(
                          text:
                              "1. Have a themed party, such as a sports party.",
                          color: const Color(0xff3E3E3E),
                          size: 15.sp,
                        ),
                        CustomText(
                          text:
                              "2. Go to a trampoline park or laser tag venue.",
                          color: const Color(0xff3E3E3E),
                          size: 15.sp,
                        ),
                        CustomText(
                          text: "3. Have a backyard campout with tents.",
                          color: const Color(0xff3E3E3E),
                          size: 15.sp,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            left: 20.w,
            right: 20.w,
            // bottom: 20.h,
            bottom: 45,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 25.w)
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
                          width: 9.w,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30.r),
                              border: Border.all(
                                color: const Color(0xff2C9676),
                                width: 1.w,
                              )),
                        ),
                        width(5.w),
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
                      ],
                    ),
                    height(28.h),
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: 'Live ',
                            style: TextStyle(
                                fontWeight: FontWeight.w900,
                                fontSize: 28.sp,
                                color: const Color(0xff25946A)),
                          ),
                          TextSpan(
                            text: 'dialogue.',
                            style: TextStyle(
                                fontWeight: FontWeight.w900,
                                fontSize: 28.sp,
                                color: const Color(0xff2C2C2C)),
                          ),

                          // TextSpan(text: ' world!'),
                        ],
                      ),
                    ),
                    height(10.h),
                    CustomText(
                      text:
                          "Get the perfect results every time with Jarvis dialogue-based editing and live feedback feature.",
                      textAlign: TextAlign.center,
                      size: 15.sp,
                      color: const Color(0xff5C5C5C),
                    ),
                    height(25.h),
                    CustomButton(
                      name: "Next",
                      onTap: () {
                        openBottomSheetCreateAccount(context);
                      },
                    ),
                    height(15.h),
                    Text.rich(TextSpan(children: [
                      TextSpan(
                        text: 'Already have an account?  ',
                        style: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 14.sp,
                            color: const Color(0xff5C5C5C)),
                      ),
                      TextSpan(
                        text: 'Log in',
                        recognizer: TapGestureRecognizer()..onTap = ()=> openBottomSheet(context),
                        style: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 14.sp,
                            color: const Color(0xff25946A),
                            decoration: TextDecoration.underline),
                      ),
                    ]))

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


 openBottomSheetCreateAccount(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 425.h,
          width: double.maxFinite,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
            boxShadow: [
              BoxShadow(
                color: const Color(0xff000029).withOpacity(0.1),
                offset: const Offset(0, 3),
                // blurRadius: 5,
              )
            ],
          ),
          child: Column(
            children: [
              height(20.h),
              Container(
                width: 100.w,
                height: 5.h,
                color: const Color(0xffEDEDED),
              ),
              height(50.h),
              CustomText(
                text: "Wellcome to jarvis GPT-3",
                color: const Color(0xff2C9676),
                size: 25.sp,
                fontWeight: FontWeight.w900,
              ),
              height(40.h),
              AuthButton(
                name: "SIGN UP WITH EMAIL",
                imgPath: "assets/images/email.png",
                color: const Color(0xff2C9676),
                onTap: () {
                  openBottomSheetSignUp(context);
                },
              ),
              const AuthButton(
                name: "SIGN UP WITH APPLE",
                imgPath: "assets/images/fb.png",
                color: Color(0xff424242),
              ),
              const AuthButton(
                name: "SIGN UP WITH GOOGLE",
                imgPath: "assets/images/google.png",
                color: Color(0xfFBC5D46),
              ),
              height(30.h),
              Text.rich(TextSpan(children: [
                TextSpan(
                  text: 'Already have an account?  ',
                  style: TextStyle(
                      // fontWeight: FontWeight.w900,
                      fontSize: 14.sp,
                      color: const Color(0xff000000)),
                ),
                TextSpan(
                  text: 'Log In',
                  recognizer: TapGestureRecognizer()..onTap = ()=> openBottomSheet(context),
                  // TapGestureRecognizer()..onTap = () => openBottomSheetSignIn(context),
                  style: TextStyle(
                      // fontWeight: FontWeight.w900,
                      fontSize: 14.sp,
                      color: const Color(0xff2C9676),
                      decoration: TextDecoration.underline),
                ),
              ]))
            ],
          ),
        );
      },
    );
  }


  openBottomSheet(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 425,
          width: double.maxFinite,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
            boxShadow: [
              BoxShadow(
                color: const Color(0xff000029).withOpacity(0.1),
                offset: const Offset(0, 3),
                blurRadius: 12,
              )
            ],
          ),
          child: Column(
            children: [
              height(20.h),
              Container(
                width: 100.w,
                height: 5.h,
                color: const Color(0xffEDEDED),
              ),
              height(50.h),
              CustomText(
                text: "Wellcome back!",
                color: const Color(0xff2C9676),
                size: 25.sp,
                fontWeight: FontWeight.w900,
              ),
              height(40.h),
              AuthButton(
                name: "SIGN IN WITH EMAIL",
                imgPath: "assets/images/email.png",
                color: const Color(0xff2C9676),
                onTap: () {
                  openBottomSheetSignIn(context);
                },
              ),
              const AuthButton(
                name: "SIGN IN WITH APPLE",
                imgPath: "assets/images/fb.png",
                color: Color(0xff424242),
              ),
              const AuthButton(
                name: "SIGN IN WITH GOOGLE",
                imgPath: "assets/images/google.png",
                color: Color(0xfFBC5D46),
              ),
              height(30.h),
              Text.rich(TextSpan(children: [
                TextSpan(
                  text: "Dont't have an account? ",
                  style: TextStyle(
                      // fontWeight: FontWeight.w900,
                      fontSize: 14.sp,
                      color: const Color(0xff000000)),
                ),
                TextSpan(
                  text: 'Get Started',
                  recognizer: TapGestureRecognizer()..onTap = ()=> openBottomSheetCreateAccount(context),
                  style: TextStyle(
                      // fontWeight: FontWeight.w900,
                      fontSize: 14.sp,
                      color: const Color(0xff2C9676),
                      decoration: TextDecoration.underline),
                ),
              ]))
            ],
          ),
        );
      },
    );
  }



  openBottomSheetSignUp(BuildContext context) {
    final controller = Get.put(SignUpPageController());
    return showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (BuildContext context) {
        return Padding(
          padding:  EdgeInsets.only(
             bottom: MediaQuery.of(context).viewInsets.bottom
          ),
          child: Container(
            height: 475.h,
            width: double.maxFinite,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
              boxShadow: [
                BoxShadow(
                  color: const Color(0xff000029).withOpacity(0.1),
                  offset: const Offset(0, 3),
                  blurRadius: 12,
                )
              ],
            ),
            child: Column(
              children: [
                height(18.h),
                Container(
                  width: 100.w,
                  height: 5.h,
                  color: const Color(0xffEDEDED),
                ),
                height(50.h),
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'Wellcome to ',
                        style: TextStyle(
                            // fontWeight: FontWeight.w900,
                            fontSize: 25.sp,
                            color: const Color(0xff2C9676),
                            fontWeight: FontWeight.w900
                            ),
                      ),
                      TextSpan(
                        text: 'Jarvis ',
                        style: TextStyle(
                            // fontWeight: FontWeight.w900,
                            fontSize: 25.sp,
                            color: const Color(0xff3E3E3E),
                            fontWeight: FontWeight.w900
                            ),
                      ),
                      TextSpan(
                        text: 'GPT-3',
                        style: TextStyle(
                            // fontWeight: FontWeight.w900,
                            fontSize: 25.sp,
                            color: const Color(0xff2C9676),
                            fontWeight: FontWeight.w900
                            ),
                      ),
                    ],
                  ),
                ),
                // CustomText(
                //   text: "Wellcome back!",
                //   color: Color(0xff2C9676),
                //   size: 25.sp,
                //   fontWeight: FontWeight.w900,
                // ),
                height(30.h),
                // ReuseableTextField(hint: "Email",icon: Icons.email_outlined,),
                // ReuseableTextField(hint: "Password",icon: Icons.key_off_outlined,),
                // ReuseableTextField(hint: "Re-enter Password",icon: Icons.key_off_outlined,),
                ReuseableTextField(hint:"Email", icon: Icons.email_outlined,controller: controller.emailController,),
                ReuseableTextField(hint:"Password", icon: Icons.key,controller: controller.passController,),
                ReuseableTextField(hint:"Re-enter Password", icon: Icons.key,controller: controller.reEnterPassController,),
                
                height(18.h),
                const CustomButtonAuth(name: "SIGN UP"),
                height(30.h),
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'Already have an account?  ',
                        style: TextStyle(
                            // fontWeight: FontWeight.w900,
                            fontSize: 14.sp,
                            color: const Color(0xff000000)),
                      ),
                      TextSpan(
                        text: 'Log In',
                         recognizer: TapGestureRecognizer()..onTap = () => openBottomSheet(context),
                        style: TextStyle(
                            // fontWeight: FontWeight.w900,
                            fontSize: 14.sp,
                            color: const Color(0xff2C9676),
                            decoration: TextDecoration.underline),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

   openBottomSheetSignIn(BuildContext context) {
    final controller = Get.put(SignInPageController());
    return showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (BuildContext context) {
        return Padding(
          padding:  EdgeInsets.only(
             bottom: MediaQuery.of(context).viewInsets.bottom
          ),
          child: Container(
            height: 475.h,
            width: double.maxFinite,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
              boxShadow: [
                BoxShadow(
                  color: const Color(0xff000029).withOpacity(0.1),
                  offset: const Offset(0, 3),
                  blurRadius: 12,
                )
              ],
            ),
            child: Column(
              children: [
                height(18.h),
                Container(
                  width: 100.w,
                  height: 5.h,
                  color: const Color(0xffEDEDED),
                ),
                height(50.h),
                
                CustomText(
                  text: "Wellcome back!",
                  color: const Color(0xff2C9676),
                  size: 25.sp,
                  fontWeight: FontWeight.w900,
                ),
                height(30.h),
                
                ReuseableTextField(hint:"Email", icon: Icons.email_outlined,controller: controller.emailController,),
                ReuseableTextField(hint:"Password", icon: Icons.key,controller: controller.passController,),
                Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding:  EdgeInsets.only(right: 84.w),
                    child: CustomText(
                      text: "Forget Password?",
                      color: const Color(0xff2C9676),
                      size: 14.sp,
                      // fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
                
                
                height(18.h),
                const CustomButtonAuth(name: "Sign In"),
                height(30.h),
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'Don’t have an account?  ',
                        style: TextStyle(
                            // fontWeight: FontWeight.w900,
                            fontSize: 14.sp,
                            color: const Color(0xff000000)),
                      ),
                      TextSpan(
                        text: 'Get Started',
                         recognizer: TapGestureRecognizer()..onTap = () => openBottomSheetCreateAccount(context),
                        style: TextStyle(
                            // fontWeight: FontWeight.w900,
                            fontSize: 14.sp,
                            color: const Color(0xff2C9676),
                            decoration: TextDecoration.underline),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
