import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:servaid/view/Home/Home.dart';
import 'package:servaid/view/Search/Search.dart';

import '../../constants/colors_constants/colors_constants.dart';
import '../../constants/fonts_size_constant/fonts_size_constant.dart';
import '../../controller/BottomNavController/BottomNavController.dart';

//             body: bottomNavController.screens[bottomNavController.currentIndex],

BottomNavController bottomNavController = Get.put(BottomNavController());
var mediaQueryData = Get.mediaQuery;

double screenHeight = mediaQueryData.size.height * 1;
double screenWidth = mediaQueryData.size.width * 1;

bottomNavigation() {
  return GetBuilder<BottomNavController>(
      init: BottomNavController(),
      builder: (bottomNavController) {
        bottomNavController.screens[bottomNavController.currentIndex];
        App_Constants_Colors.app_blue_color;
        return BottomNavigationBar(
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
              activeIcon: GestureDetector(
                  onTap: () {
                    Get.to(Search());
                  },
                  child: Column(
                    children: [
                      Icon(
                        Icons.search,
                        color: App_Constants_Colors.app_blue_color,
                      ),
                      SizedBox(
                        height: screenHeight * 0.001,
                      ),
                    ],
                  )),
              label: "Search",
              icon: Icon(
                Icons.search,
                color: App_Constants_Colors.app_grey_color,
              ),
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
        );
      });

  // return GetBuilder<BottomNavController>(
  //     init: BottomNavController(),
  //     builder: (bottomNavController) {
  //       return SizedBox(
  //         height: 100,
  //         child: Column(
  //           children: [
  //             bottomNavController.screens[bottomNavController.currentIndex],
  //             BottomNavigationBar(
  //               elevation: 5,
  //               type: BottomNavigationBarType.fixed,
  //               backgroundColor: App_Constants_Colors.app_white_color,
  //               selectedItemColor: App_Constants_Colors.app_blue_color,
  //               selectedFontSize: App_Fonts_Constants.text_font_size.sp,
  //               currentIndex: bottomNavController.currentIndex,
  //               onTap: bottomNavController.changeIndex,
  //               items: [
  //                 BottomNavigationBarItem(
  //                   activeIcon: Icon(
  //                     Icons.home,
  //                     color: App_Constants_Colors.app_blue_color,
  //                   ),
  //                   icon: Icon(
  //                     Icons.home,
  //                     color: App_Constants_Colors.app_grey_color,
  //                   ),
  //                   label: "Home",
  //                 ),
  //                 BottomNavigationBarItem(
  //                   activeIcon: Icon(
  //                     Icons.search,
  //                     color: App_Constants_Colors.app_blue_color,
  //                   ),
  //                   icon: Icon(
  //                     Icons.search,
  //                     color: App_Constants_Colors.app_grey_color,
  //                   ),
  //                   label: "Search",
  //                 ),
  //                 BottomNavigationBarItem(
  //                   activeIcon: Icon(
  //                     Icons.shopping_cart,
  //                     color: App_Constants_Colors.app_blue_color,
  //                   ),
  //                   icon: Icon(
  //                     Icons.shopping_cart,
  //                     color: App_Constants_Colors.app_grey_color,
  //                   ),
  //                   label: "Cart",
  //                 ),
  //                 BottomNavigationBarItem(
  //                   activeIcon: Icon(
  //                     Icons.category,
  //                     color: App_Constants_Colors.app_blue_color,
  //                   ),
  //                   icon: Icon(
  //                     Icons.category,
  //                     color: App_Constants_Colors.app_grey_color,
  //                   ),
  //                   label: "Categories",
  //                 ),
  //                 BottomNavigationBarItem(
  //                   activeIcon: Icon(
  //                     Icons.more,
  //                     color: App_Constants_Colors.app_blue_color,
  //                   ),
  //                   icon: Icon(
  //                     Icons.more,
  //                     color: App_Constants_Colors.app_grey_color,
  //                   ),
  //                   label: "More",
  //                 ),
  //               ],
  //             )
  //           ],
  //         ),
  //       );

  //       // backgroundColor: App_Constants_Colors.app_blue_color,
  //       // body:bottomNavController.screens[bottomNavController.currentIndex],
  //     });
}
