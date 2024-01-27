import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:servaid/view/cart_view/cart_view.dart';

import 'package:servaid/view/categories_view/Categories.dart';

import 'package:servaid/view/more_view/more_view.dart';

import 'package:servaid/view/search_view/search_view.dart';

import '../../constants/colors_constants/colors_constants.dart';
import '../../constants/fonts_size_constant/fonts_size_constant.dart';
import '../../view_model/bottom_nav_view_model/bottom_nav_view_model.dart';

var mediaQueryData = Get.mediaQuery;
double screenHeight = mediaQueryData.size.height * 1;
double screenWidth = mediaQueryData.size.width * 1;

bottomNavigation() {
  return GetBuilder<BottomNavController>(
      init: BottomNavController(),
      builder: (bottomNavController) {
        bottomNavController.screens[bottomNavController.currentIndex];
        AppColors.appBlueColor;
        return BottomNavigationBar(
          elevation: 5,
          type: BottomNavigationBarType.fixed,
          backgroundColor: AppColors.appWhiteColor,
          selectedItemColor: AppColors.appBlueColor,
          selectedFontSize: AppFontsConstants.textFontSize.sp,
          currentIndex: bottomNavController.currentIndex,
          onTap: bottomNavController.changeIndex,
          items: [
            BottomNavigationBarItem(
              activeIcon: Icon(
                Icons.home,
                color: AppColors.appBlueColor,
              ),
              icon: Icon(
                Icons.home,
                color: AppColors.appGreyColor,
              ),
              label: "Home",
            ),
            BottomNavigationBarItem(
              activeIcon: GestureDetector(
                  onTap: () => Get.to(const Search()),
                  child: Column(
                    children: [
                      Icon(
                        Icons.search,
                        color: AppColors.appBlueColor,
                      ),
                      SizedBox(
                        height: screenHeight * 0.001,
                      ),
                    ],
                  )),
              label: "Search",
              icon: Icon(
                Icons.search,
                color: AppColors.appGreyColor,
              ),
            ),
            BottomNavigationBarItem(
              activeIcon: GestureDetector(
                  onTap: () => Get.to(const Cart()),
                  child: Column(
                    children: [
                      Icon(
                        Icons.shopping_cart,
                        color: AppColors.appBlueColor,
                      ),
                      SizedBox(
                        height: screenHeight * 0.001,
                      ),
                    ],
                  )),
              icon: Icon(
                Icons.shopping_cart,
                color: AppColors.appGreyColor,
              ),
              label: "Cart",
            ),
            BottomNavigationBarItem(
              activeIcon: GestureDetector(
                onTap: () => Get.to(const Categories()),
                child: Column(
                  children: [
                    Icon(
                      Icons.category,
                      color: AppColors.appBlueColor,
                    ),
                    SizedBox(
                      height: screenHeight * 0.001,
                    ),
                  ],
                ),
              ),
              icon: Icon(
                Icons.category,
                color: AppColors.appGreyColor,
              ),
              label: "Categories",
            ),
            BottomNavigationBarItem(
              activeIcon: GestureDetector(
                onTap: () => Get.to(const More()),
                child: Column(
                  children: [
                    Icon(
                      Icons.more,
                      color: AppColors.appBlueColor,
                    ),
                    SizedBox(
                      height: screenHeight * 0.001,
                    ),
                  ],
                ),
              ),
              icon: Icon(
                Icons.more,
                color: AppColors.appGreyColor,
              ),
              label: "More",
            ),
          ],
        );
      });
}
