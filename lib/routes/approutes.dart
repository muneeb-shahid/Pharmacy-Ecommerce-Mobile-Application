import 'package:get/get.dart';
import 'package:servaid/routes/routes_name.dart';
import 'package:servaid/view/BottomNav/BottomNav.dart';
import 'package:servaid/view/Home/Home.dart';

import '../view/Cart/Cart.dart';
import '../view/Categories/Categories.dart';
import '../view/Full_Product_Detail_Page/Full_Product_Detail_Page.dart';
import '../view/More/More.dart';
import '../view/Search/Search.dart';

class AppRoutes {
  static appRoutes() => [
        GetPage(
          name: RoutesName.BottomNav,
          page: () => BottomNav(),
        ),
        GetPage(
          name: RoutesName.Cart,
          page: () => Cart(),
        ),
        GetPage(name: RoutesName.Categories, page: () => Categories()),
        GetPage(
          name: RoutesName.Full_Product_Detail_Page,
          page: () => Full_Product_Detail_Page(),
        ),
        GetPage(
          name: RoutesName.Home,
          page: () => Home(),
        ),
        GetPage(
          name: RoutesName.More,
          page: () => More(),
        ),
        GetPage(
          name: RoutesName.Search,
          page: () => Search(),
        ),
      ];
}
