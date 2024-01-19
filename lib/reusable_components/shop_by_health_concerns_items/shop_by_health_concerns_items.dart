import 'package:flutter/material.dart';
import 'package:servaid/model/shop_by_health_concerns_ads/shop_by_health_concerns_ads.dart';
import 'package:servaid/images/images.dart';

List<ShopbyHealthConcernsAds> shopbyHealthConcernsItems = [
  ShopbyHealthConcernsAds(image: App_Images.shop_by_Health_Concerns_5),
  ShopbyHealthConcernsAds(image: App_Images.shop_by_Health_Concerns_1),
  ShopbyHealthConcernsAds(image: App_Images.shop_by_Health_Concerns_2),
  ShopbyHealthConcernsAds(image: App_Images.shop_by_Health_Concerns_3),
  ShopbyHealthConcernsAds(image: App_Images.shop_by_Health_Concerns_4),
];

Widget buildShopByHealthCard({
  required ShopbyHealthConcernsAds shopbyHealthConcernsItems,
}) =>
    ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Image(
        image: AssetImage(shopbyHealthConcernsItems.image),
        fit: BoxFit.cover,
      ),
    );
