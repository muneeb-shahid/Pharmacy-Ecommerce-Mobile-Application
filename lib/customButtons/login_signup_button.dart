import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../constants/fonts_size_constant/fonts_size_constant.dart';

class Login_SignUp_Button {
  customButton(BuildContext context,
      {var nextScreen,
      required var innerColor,
      required var textColor,
      required String text}) {
    var heightt = MediaQuery.of(context).size.height * 1;
    var widthh = MediaQuery.of(context).size.width * 1;

    return Column(children: <Widget>[
      MaterialButton(
        minWidth: widthh * 0.8,
        height: heightt * 0.07,
        onPressed: ()=> Get.to(nextScreen),
        
        color: innerColor,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5)),
        child: FittedBox(
          child: Text(
            text,
            style: TextStyle(
                color: textColor,
                fontWeight: FontWeight.bold,
                fontSize: App_Fonts_Constants.sub_heading_font_size.sp,
                fontFamily: App_Fonts_Constants.heading_font_family,
                wordSpacing: 1,
                letterSpacing: 1),
          ),
        ),
      ),
    ]);
  }
}
