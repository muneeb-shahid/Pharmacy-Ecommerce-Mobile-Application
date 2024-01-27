import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:servaid/constants/colors_constants/colors_constants.dart';

import '../../constants/fonts_size_constant/fonts_size_constant.dart';

homeCategoryName(
  String homeCategoryName,
) {
  return Padding(
    padding: const EdgeInsets.only(left: 20, right: 20),
    child: Row(
      children: [
        Text(
          homeCategoryName,
          style: TextStyle(
              color: AppColors.appBlueColor,
              fontSize: AppFontsConstants.subHeadingFontSize.sp,
              fontFamily: AppFontsConstants.headingFontFamily,
              fontWeight: FontWeight.bold),
        ),
      ],
    ),
  );
}
