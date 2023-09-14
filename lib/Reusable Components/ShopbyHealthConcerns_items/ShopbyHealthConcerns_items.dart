import 'package:flutter/material.dart';
import 'package:servaid/Model/ShopbyHealthConcerns_Ads/ShopbyHealthConcerns_Ads.dart';
import 'package:servaid/images/images.dart';

List<ShopbyHealthConcerns_Ads> ShopbyHealthConcerns_items = [
  ShopbyHealthConcerns_Ads(image: App_Images.shop_by_Health_Concerns_1),
  ShopbyHealthConcerns_Ads(image: App_Images.shop_by_Health_Concerns_2),
  ShopbyHealthConcerns_Ads(image: App_Images.shop_by_Health_Concerns_3),
  ShopbyHealthConcerns_Ads(image: App_Images.shop_by_Health_Concerns_4),
  ShopbyHealthConcerns_Ads(image: App_Images.shop_by_Health_Concerns_5),
];

Widget buildShopByHealthCard({
  required ShopbyHealthConcerns_Ads ShopbyHealthConcerns_items,
}) =>
    ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Image(
        image: AssetImage(ShopbyHealthConcerns_items.image),
        fit: BoxFit.cover,
      ),
    );
