import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:readmore/readmore.dart';
import 'package:servaid/constants/fonts_size_constant/fonts_size_constant.dart';

import '../../constants/colors_constants/colors_constants.dart';

class FullProductDetailPageController extends GetxController {
  void productsDetailBottomSheet(String appbarName, String Getarguments) {
    Get.bottomSheet(
        SingleChildScrollView(
          child: Column(
            children: [
              AppBar(
                backgroundColor: App_Constants_Colors.app_blue_color,
                elevation: 0,
                centerTitle: true,
                title: Text(appbarName),
                actions: [
                  IconButton(
                      onPressed: () {
                        Get.back();
                      },
                      icon: const Icon(Icons.close))
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  color: App_Constants_Colors.app_white_color,
                  child: SingleChildScrollView(
                    child: ReadMoreText(
                      Getarguments,
                      style: TextStyle(
                        letterSpacing: 2,
                        wordSpacing: 2,
                        color: App_Constants_Colors.app_black_color,
                        fontFamily: App_Fonts_Constants.regular_font_family,
                        fontSize: App_Fonts_Constants.text_font_size.sp,
                      ),
                      trimLines: 5,
                      lessStyle: TextStyle(
                        color: App_Constants_Colors.app_blue_color,
                        decoration: TextDecoration.underline,
                        fontWeight: FontWeight.bold,
                        fontFamily: App_Fonts_Constants.regular_font_family,
                        fontSize: App_Fonts_Constants.text_font_size.sp,
                      ),
                      trimMode: TrimMode.Line,
                      trimCollapsedText: 'Read more',
                      trimExpandedText: 'Read less',
                      moreStyle: TextStyle(
                        color: App_Constants_Colors.app_blue_color,
                        decoration: TextDecoration.underline,
                        fontWeight: FontWeight.bold,
                        fontFamily: App_Fonts_Constants.regular_font_family,
                        fontSize: App_Fonts_Constants.text_font_size.sp,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        backgroundColor: App_Constants_Colors.app_white_color);
  }
}
