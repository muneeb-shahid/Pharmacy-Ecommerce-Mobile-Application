import 'package:get/get.dart';
import 'package:servaid/routes/routes_name.dart';
import 'package:servaid/view/bottom_nav_view/bottom_nav_view.dart';
import 'package:servaid/view/cart_view/cart_view.dart';
import 'package:servaid/view/categories_view/Categories.dart';
import 'package:servaid/view/full_product_detail_page_view/full_product_detail_page_view.dart';
import 'package:servaid/view/more_view/more_view.dart';
import 'package:servaid/view/search_view/search_view.dart';

import '../view/home_view/home_view.dart';

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
