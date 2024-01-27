import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:servaid/view_model/full_product_detail_page_view_model/full_product_detail_page_view_model.dart';

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
          color: AppColors.appWhiteColor,
          height: 2,
          thickness: 2,
        ),
        ListTile(
          title: Text(
            appbarName,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: AppColors.appBlueColor,
              fontFamily: AppFontsConstants.headingFontFamily,
              fontSize: AppFontsConstants.subHeadingFontSize.sp,
            ),
          ),
          trailing: Icon(
            Icons.arrow_forward_ios_outlined,
            color: AppColors.appBlueColor,
          ),
        ),
      ],
    ),
  );
}
