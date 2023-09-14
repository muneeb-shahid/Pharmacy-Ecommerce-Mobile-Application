import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:servaid/constants/colors_constants/colors_constants.dart';

import '../../constants/fonts_size_constant/fonts_size_constant.dart';

HomeCategoryName(String HomeCategoryName,) {
  return Padding(
    padding: EdgeInsets.only(left: 20, right: 20),
    child: Row(
      children: [
        Text(
          HomeCategoryName,
          style: TextStyle(
              color: App_Constants_Colors.app_blue_color,
              fontSize: App_Fonts_Constants.sub_heading_font_size.sp,
              fontFamily: App_Fonts_Constants.heading_font_family,
              fontWeight: FontWeight.bold),
        ),
       
      ],
    ),
  );
}
