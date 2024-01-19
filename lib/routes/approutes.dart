import 'package:get/get.dart';
import 'package:servaid/routes/routes_name.dart';
import 'package:servaid/view/Home/Home.dart';
import 'package:servaid/view/bottom_nav/bottom_nav.dart';
import 'package:servaid/view/full_product_detail_page/full_product_detail_page.dart';

import '../view/Cart/Cart.dart';
import '../view/Categories/Categories.dart';
import '../view/More/More.dart';
import '../view/Search/Search.dart';

class AppRoutes {
  static appRoutes() => [
        GetPage(
          name: RoutesName.bottomNav,
          page: () => const BottomNav(),
        ),
        GetPage(
          name: RoutesName.cart,
          page: () => const Cart(),
        ),
        GetPage(name: RoutesName.categories, page: () => const Categories()),
        GetPage(
          name: RoutesName.fullProductDetailPage,
          page: () =>const FullProductDetailPage(),
        ),
        GetPage(
          name: RoutesName.home,
          page: () => const Home(),
        ),
        GetPage(
          name: RoutesName.more,
          page: () => const More(),
        ),
        GetPage(
          name: RoutesName.search,
          page: () => const Search(),
        ),
      ];
}
