import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test/Utils/utils.dart';
import 'package:test/Widgets/customtext.dart';

class AuthButton extends StatelessWidget {
  const AuthButton({super.key, required this.name, required this.imgPath, required this.color, this.onTap});
  final String imgPath;
  final String name;
  final Color color;
  final void Function()? onTap;
  

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 80.w).copyWith(bottom: 15.h),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 15.h).copyWith(left: 15.w),
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(40),
            boxShadow: [
              BoxShadow(
                color: Color(0xff00001A).withOpacity(0.1),
                // spreadRadius: ,
                blurRadius: 12,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ]
          ),
          child: Row(
          children: [
              Image.asset(imgPath,width: 20.w,),
              width(20.w),
              CustomText(text: name,size: 14.sp,fontWeight: FontWeight.w900,color: Color(0xffFFFFFF),)
          ],
        ),
        ),
      ),
    );
  }
}

