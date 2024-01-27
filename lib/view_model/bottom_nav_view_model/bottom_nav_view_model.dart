import 'package:get/get.dart';
import 'package:servaid/view/cart_view/cart_view.dart';
import '../../view/categories/categories.dart';
import '../../view/home_view/home_view.dart';
import '../../view/more/more.dart';
import '../../view/search/search.dart';

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
