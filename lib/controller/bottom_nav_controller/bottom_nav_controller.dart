import 'package:get/get.dart';
import 'package:servaid/view/Cart/Cart.dart';
import '../../view/categories/categories.dart';
import '../../view/Home/Home.dart';
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
