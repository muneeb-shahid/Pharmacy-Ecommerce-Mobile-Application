import 'package:get/get.dart';
import 'package:servaid/view/cart_view/cart_view.dart';
import 'package:servaid/view/categories_view/Categories.dart';
import 'package:servaid/view/more_view/more_view.dart';
import 'package:servaid/view/search_view/search_view.dart';
import '../../view/home_view/home_view.dart';


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
}
