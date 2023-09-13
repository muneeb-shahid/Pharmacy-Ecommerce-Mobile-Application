import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:servaid/constants/fonts_size_constant/fonts_size_constant.dart';



var mediaQueryData = Get.mediaQuery;

double screenHeight = mediaQueryData.size.height * 1;
double screenWidth = mediaQueryData.size.width * 1;

customLogin_SignupButton(
    {required func,
    required innerColor,
    required var textColor,
    required String text}) {
  return GestureDetector(
    onTap: func,
    
    child: Container(
      
      height: screenHeight * 0.07,
      width: screenWidth * 0.8,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: innerColor,
      ),
      child: Center(
          child: Text(
        text,
        style: TextStyle(
            fontFamily: App_Fonts_Constants.heading_font_family,
            fontSize:App_Fonts_Constants.sub_heading_font_size.sp,
            fontWeight: FontWeight.bold,
            color: textColor),
      )),
    ),
  );
}
