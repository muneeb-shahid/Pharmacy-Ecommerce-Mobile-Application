import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:servaid/controller/full_product_detail_page_controller/full_product_detail_page_controller.dart';

import '../../constants/colors_constants/colors_constants.dart';
import '../../constants/fonts_size_constant/fonts_size_constant.dart';

reuseableProductDetails(String appbarName, Getarguments) {
  FullProductDetailPageController fullProductDetailPageController =
      Get.put(FullProductDetailPageController());

  return InkWell(
    onTap: () {
      fullProductDetailPageController.productsDetailBottomSheet(
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
