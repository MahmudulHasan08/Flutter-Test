import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test/Utils/utils.dart';
import 'package:test/Widgets/customtext.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.name, this.onTap});
  final String name;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 265.w,
        height: 45.h,
        decoration: BoxDecoration(
            color: Color(0xff25946A),
            borderRadius: BorderRadius.circular(25.r),
            boxShadow: [
              BoxShadow(
                color: Color(0xff0000001A).withOpacity(0.1),
                spreadRadius: 1,
                blurRadius: 20,
                offset: Offset(0, 10), // changes position of shadow
              )
            ]),
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding:  EdgeInsets.only(left: 112.w),
              child: CustomText(
                text: name,
                size: 14.sp,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
        
            width(60.w),
             Image.asset("assets/images/right.png",width: 15.w,),
           
            
            // SvgPicture.asset(
            //   "assets/svg/right.svg",color: Colors.white,height: 20,
            // ),
          ],
        ),
      ),
    );
  }
}

class CustomButtonAuth extends StatelessWidget {
  const CustomButtonAuth({super.key, required this.name, this.onTap});
  final String name;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 265.w,
        height: 45.h,
        decoration: BoxDecoration(
            color: Color(0xff25946A),
            borderRadius: BorderRadius.circular(25.r),
            boxShadow: [
              BoxShadow(
                color: Color(0xff0000001A).withOpacity(0.1),
                spreadRadius: 1,
                blurRadius: 20,
                offset: Offset(0, 10), // changes position of shadow
              )
            ]),
        child: Center(
          child: CustomText(
            text: name,
            size: 14.sp,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

