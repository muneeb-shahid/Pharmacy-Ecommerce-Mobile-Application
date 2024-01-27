import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:servaid/constants/fonts_size_constant/fonts_size_constant.dart';

var mediaQueryData = Get.mediaQuery;

double screenHeight = mediaQueryData.size.height * 1;
double screenWidth = mediaQueryData.size.width * 1;

customLoginSignupButton(
    {required func,
    required innerColor,
    required var textColor,
    required String text}) {
  return GestureDetector(
    onTap: func,
    child: Container(
      height: screenHeight * 0.06,
      width: screenWidth * 0.6,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: innerColor,
      ),
      child: Center(
          child: Text(
        text,
        style: TextStyle(
            fontFamily: AppFontsConstants.headingFontFamily,
            fontSize: AppFontsConstants.subHeadingFontSize.sp,
            fontWeight: FontWeight.bold,
            color: textColor),
      )),
    ),
  );
}
