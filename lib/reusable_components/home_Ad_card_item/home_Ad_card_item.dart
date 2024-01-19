import 'package:flutter/material.dart';
import '../../model/ad_card_Item/ad_card_Item.dart';
import '../../images/images.dart';

List<AdCardItem> adcarditem = [
  AdCardItem(image: App_Images.AdCard_3),
  AdCardItem(image: App_Images.AdCard_4),
  AdCardItem(image: App_Images.AdCard_1),
  AdCardItem(image: App_Images.AdCard_2),
  
  AdCardItem(image: App_Images.AdCard_5),
];

Widget buildCard({
  required AdCardItem adcarditem,
}) =>
    ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Image(
        image: AssetImage(adcarditem.image),
        fit: BoxFit.cover,
      ),
    );
