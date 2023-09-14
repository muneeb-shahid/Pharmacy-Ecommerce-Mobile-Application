import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:servaid/controller/Full_Product_Detail_PageController/Full_Product_Detail_PageController.dart';

import '../../constants/colors_constants/colors_constants.dart';
import '../../constants/fonts_size_constant/fonts_size_constant.dart';

ReuseableProductDetails(String appbarName, Getarguments) {
  Full_Product_Detail_PageController full_product_detail_pageController =
      Get.put(Full_Product_Detail_PageController());

  return InkWell(
    onTap: () {
      full_product_detail_pageController.productsDetailBottomSheet(
          appbarName, Getarguments);
    },
    child: Column(
      children: [
        Divider(
          color: App_Constants_Colors.app_white_color,
          height: 2,
          thickness: 2,
        ),
        ListTile(
          title: Text(
            appbarName,
            style: TextStyle(
                
              fontWeight: FontWeight.bold,
              color: App_Constants_Colors.app_blue_color,
              fontFamily: App_Fonts_Constants.heading_font_family,
              fontSize: App_Fonts_Constants.sub_heading_font_size.sp,
            ),
          ),
          trailing: Icon(
            Icons.arrow_forward_ios_outlined,
            color: App_Constants_Colors.app_blue_color,
          ),
        ),
      ],
    ),
  );
}
