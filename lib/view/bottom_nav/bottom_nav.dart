import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:servaid/constants/colors_constants/colors_constants.dart';
import 'package:servaid/constants/fonts_size_constant/fonts_size_constant.dart';
import 'package:servaid/controller/bottom_nav_controller/bottom_nav_controller.dart';


class BottomNav extends StatelessWidget {
  const BottomNav({super.key});

  @override

  Widget build(BuildContext context) {
  
    return GetBuilder<BottomNavController>(
        init: BottomNavController(),
        builder: (bottomNavController) {
          return Scaffold(
              backgroundColor: App_Constants_Colors.app_blue_color,
              body:
                  bottomNavController.screens[bottomNavController.currentIndex],
        
              bottomNavigationBar: BottomNavigationBar(
                elevation: 5,
                type: BottomNavigationBarType.fixed,
                backgroundColor: App_Constants_Colors.app_white_color,
                selectedItemColor: App_Constants_Colors.app_blue_color,
                selectedFontSize: App_Fonts_Constants.text_font_size.sp,
                currentIndex: bottomNavController.currentIndex,
                onTap: bottomNavController.changeIndex,
                items: [
                  BottomNavigationBarItem(
                    activeIcon: Icon(
                      Icons.home,
                      color: App_Constants_Colors.app_blue_color,
                    ),
                    icon: Icon(
                      Icons.home,
                      color: App_Constants_Colors.app_grey_color,
                    ),
                    label: "Home",
                  ),
                  BottomNavigationBarItem(
                    activeIcon: Icon(
                      Icons.search,
                      color: App_Constants_Colors.app_blue_color,
                    ),
                    icon: Icon(
                      Icons.search,
                      color: App_Constants_Colors.app_grey_color,
                    ),
                    label: "Search",
                  ),
                  BottomNavigationBarItem(
                    activeIcon: Icon(
                      Icons.shopping_cart,
                      color: App_Constants_Colors.app_blue_color,
                    ),
                    icon: Icon(
                      Icons.shopping_cart,
                      color: App_Constants_Colors.app_grey_color,
                    ),
                    label: "Cart",
                  ),
                  BottomNavigationBarItem(
                    activeIcon: Icon(
                      Icons.category,
                      color: App_Constants_Colors.app_blue_color,
                    ),
                    icon: Icon(
                      Icons.category,
                      color: App_Constants_Colors.app_grey_color,
                    ),
                    label: "Categories",
                  ),
                  BottomNavigationBarItem(
                    activeIcon: Icon(
                      Icons.more,
                      color: App_Constants_Colors.app_blue_color,
                    ),
                    icon: Icon(
                      Icons.more,
                      color: App_Constants_Colors.app_grey_color,
                    ),
                    label: "More",
                  ),
                ],
              ));
        
        });
  
  }

}
