import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class VestiTextStyles extends TextStyle {
  // white = fontColor , 28 = fontSize , 700 = fontWeight
  static TextStyle white28700 = TextStyle(
      fontSize: 28.sp, color: Colors.white, fontWeight: FontWeight.w700);
  static TextStyle white14300 = TextStyle(
      fontSize: 14.sp, color: Colors.white, fontWeight: FontWeight.w300);
  static TextStyle white16600 = TextStyle(
      fontSize: 16.sp, color: Colors.white, fontWeight: FontWeight.w600);
  static TextStyle black28700 = TextStyle(
      fontSize: 28.sp,
      color: Color.fromRGBO(29, 41, 57, 100),
      fontWeight: FontWeight.w700);
  static TextStyle black12600 = TextStyle(
      fontSize: 12.sp, color: Color(0xff1d2939), fontWeight: FontWeight.w600);
  static TextStyle black16700 = TextStyle(
      fontSize: 16.sp, color: Color(0xff1d2939), fontWeight: FontWeight.w700);
  static TextStyle black16600 = TextStyle(
      fontSize: 16.sp, color: Color(0xff1d2939), fontWeight: FontWeight.w600);
  static TextStyle grey14500 = TextStyle(
      fontSize: 14.sp, color: Color(0xff667085), fontWeight: FontWeight.w500);
  static TextStyle grey12300 = TextStyle(
      fontSize: 12.sp, color: Color(0xff667085), fontWeight: FontWeight.w300);
  static TextStyle grey14300 = TextStyle(
      fontSize: 14.sp, color: Color(0xff667085), fontWeight: FontWeight.w300);
  static TextStyle dBlack14600 = TextStyle(
      fontSize: 14.sp, color: Color(0xff101828), fontWeight: FontWeight.w600);
  static TextStyle blue14600 = TextStyle(
      fontSize: 14.sp, color: Color(0xff303d94), fontWeight: FontWeight.w600);
  static TextStyle blue14500 = TextStyle(
      fontSize: 14.sp, color: Color(0xff303d94), fontWeight: FontWeight.w500);
}
