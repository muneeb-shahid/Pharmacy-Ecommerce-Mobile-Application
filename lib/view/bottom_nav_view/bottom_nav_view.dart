import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:servaid/constants/colors_constants/colors_constants.dart';
import 'package:servaid/constants/fonts_size_constant/fonts_size_constant.dart';
import 'package:servaid/view_model/bottom_nav_view_model/bottom_nav_view_model.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<BottomNavController>(
        init: BottomNavController(),
        builder: (bottomNavController) {
          return Scaffold(
              backgroundColor: AppColors.appBlueColor,
              body:
                  bottomNavController.screens[bottomNavController.currentIndex],
              bottomNavigationBar: BottomNavigationBar(
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
                    activeIcon: Icon(
                      Icons.search,
                      color: AppColors.appBlueColor,
                    ),
                    icon: Icon(
                      Icons.search,
                      color: AppColors.appGreyColor,
                    ),
                    label: "Search",
                  ),
                  BottomNavigationBarItem(
                    activeIcon: Icon(
                      Icons.shopping_cart,
                      color: AppColors.appBlueColor,
                    ),
                    icon: Icon(
                      Icons.shopping_cart,
                      color: AppColors.appGreyColor,
                    ),
                    label: "Cart",
                  ),
                  BottomNavigationBarItem(
                    activeIcon: Icon(
                      Icons.category,
                      color: AppColors.appBlueColor,
                    ),
                    icon: Icon(
                      Icons.category,
                      color: AppColors.appGreyColor,
                    ),
                    label: "Categories",
                  ),
                  BottomNavigationBarItem(
                    activeIcon: Icon(
                      Icons.more,
                      color: AppColors.appBlueColor,
                    ),
                    icon: Icon(
                      Icons.more,
                      color: AppColors.appGreyColor,
                    ),
                    label: "More",
                  ),
                ],
              ));
        });
  }
}
