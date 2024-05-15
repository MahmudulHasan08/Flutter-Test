import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  CustomText({
    Key? key,
    required this.text,
    this.size,
    this.color,
    this.fontWeight,
    this.fontFamily,
    this.overflow,
    this.decoration,
    this.textAlign
  }) : super(key: key);
  String text;
  double? size;
  FontWeight? fontWeight;
  String? fontFamily;
  Color? color;
  TextOverflow? overflow;
  TextDecoration? decoration;
  TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: overflow,
      textAlign: textAlign,
      style: TextStyle(
        color: color ?? Colors.black,
        fontSize: size ?? 16,
        fontWeight: fontWeight,
        decoration: decoration,
        fontFamily: fontFamily,
      ),
    );
  }
}