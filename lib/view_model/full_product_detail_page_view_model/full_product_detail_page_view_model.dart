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
                backgroundColor: AppColors.appBlueColor,
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
                  color: AppColors.appWhiteColor,
                  child: SingleChildScrollView(
                    child: ReadMoreText(
                      Getarguments,
                      style: TextStyle(
                        letterSpacing: 2,
                        wordSpacing: 2,
                        color: AppColors.appBlackColor,
                        fontFamily: AppFontsConstants.regularFontFamily,
                        fontSize: AppFontsConstants.textFontSize.sp,
                      ),
                      trimLines: 5,
                      lessStyle: TextStyle(
                        color: AppColors.appBlueColor,
                        decoration: TextDecoration.underline,
                        fontWeight: FontWeight.bold,
                        fontFamily: AppFontsConstants.regularFontFamily,
                        fontSize: AppFontsConstants.textFontSize.sp,
                      ),
                      trimMode: TrimMode.Line,
                      trimCollapsedText: 'Read more',
                      trimExpandedText: 'Read less',
                      moreStyle: TextStyle(
                        color: AppColors.appBlueColor,
                        decoration: TextDecoration.underline,
                        fontWeight: FontWeight.bold,
                        fontFamily: AppFontsConstants.regularFontFamily,
                        fontSize: AppFontsConstants.textFontSize.sp,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        backgroundColor: AppColors.appWhiteColor);
  }
}
