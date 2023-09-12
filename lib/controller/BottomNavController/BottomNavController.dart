import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:servaid/view/Cart/Cart.dart';

import '../../view/Categories/Categories.dart';
import '../../view/Home/Home.dart';
import '../../view/More/More.dart';
import '../../view/Search/Search.dart';

class BottomNavController extends GetxController {
  int currentIndex = 0;
  final screens = const [
    Home(),
    Search(),
    Cart(),
    Categories(),
    More(),
  ];

  void changeIndex(int index) {
    currentIndex = index;
    update();
  }

  // RxInt selectedIndex = 0.obs;

  // void onItemTapped(int index) {
  //   selectedIndex.value = index;
  //   update();
  // }
}
