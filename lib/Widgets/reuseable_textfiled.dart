import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ReuseableTextField extends StatelessWidget {
  const ReuseableTextField({super.key, required this.hint,required this.icon, required this.controller});
  final String hint;
  // final String imgPath;
  final IconData icon;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 84.w).copyWith(bottom: 20.h),
      child: SizedBox(
        width: 265.w,
        height: 45.h,
        child: Center(
          child: TextFormField(
            controller: controller,
            decoration: InputDecoration(
              filled: true,
              fillColor: Color(0xffEFEFF5),
              contentPadding: EdgeInsets.only(bottom: 5,left: 15,top: 2,right: 15),
              hintText: hint,
              hintStyle: TextStyle(
                fontSize: 12.sp,
                color: Color(0xffB2B2B2),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25.r),
                borderSide: BorderSide(
                  color: Color(0xffEFEFF5),
                ),
              ),
              focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xffEFEFF5)),
            borderRadius: BorderRadius.circular(25.7),
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Color(0xffEFEFF5)),
            borderRadius: BorderRadius.circular(25.7),
          ),
          suffixIcon: Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Icon(icon,color: Color(0xff2C9676),),
          ),
            ),
          ),
        ),
      ),
    );
  }
}