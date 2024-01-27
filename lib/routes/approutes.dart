import 'package:get/get.dart';
import 'package:servaid/routes/routes_name.dart';
import 'package:servaid/view/bottom_nav_view/bottom_nav_view.dart';
import 'package:servaid/view/cart_view/cart_view.dart';
import 'package:servaid/view/categories/categories.dart';
import 'package:servaid/view/full_product_detail_page/full_product_detail_page.dart';
import 'package:servaid/view/more_view/more_view.dart';

import '../view/home_view/home_view.dart';
import '../view/search/search.dart';

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
