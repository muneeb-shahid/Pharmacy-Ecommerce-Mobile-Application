import 'package:flutter/material.dart';
import 'package:servaid/constants/colors_constants/colors_constants.dart';
import 'package:servaid/constants/fonts_size_constant/fonts_size_constant.dart';

import '../../Model/HomeProductsItem/HomeProductsItem.dart';

List<HomeProductsItem> List_of_homeProducts_Item = [
  HomeProductsItem(
    image:
        "https://ahmedmedico.pk/wp-content/uploads/2021/09/ensure-vanilla.jpg",
    title: "Ensure Milk Vanilla 400g",
    companyName: "Abbott Nutrition",
    price: "Rs.1896",
    description:
        "it is broadly used in sportsmen, athletes, folks suffering from malnutrition, and helps them to fulfills their daily nutrition requirements. It contains protein, carbohydrates, all essential vitamins & minerals which increase performance, maintain a healthy weight, reduces fatigue & tiredness, increase muscle and joints strong, and help to increase height. Ensure (dietary powder) is available in three flavors, i.e. vanilla, chocolate, and strawberry.",
    precautions:
        "Just for an oral route only. Overdose increases the risks of side effects. to prepare, add four scoops (of powder) in a glass of water.",
    sideEffects:
        "In rare cases, it showed digestive problems, including abdominal pain & cramps, bloating, gas, and diarrhea, etc.",
  ),
  HomeProductsItem(
    image:
        "https://ahmedmedico.pk/wp-content/uploads/2021/09/ensure-vanilla.jpg",
    title: "Ensure Milk Vanilla 400g",
    companyName: "Abbott Nutrition",
    price: "Rs.1896",
    description:
        "it is broadly used in sportsmen, athletes, folks suffering from malnutrition, and helps them to fulfills their daily nutrition requirements. It contains protein, carbohydrates, all essential vitamins & minerals which increase performance, maintain a healthy weight, reduces fatigue & tiredness, increase muscle and joints strong, and help to increase height. Ensure (dietary powder) is available in three flavors, i.e. vanilla, chocolate, and strawberry.",
    precautions:
        "Just for an oral route only. Overdose increases the risks of side effects. to prepare, add four scoops (of powder) in a glass of water.",
    sideEffects:
        "In rare cases, it showed digestive problems, including abdominal pain & cramps, bloating, gas, and diarrhea, etc.",
  ),
  HomeProductsItem(
    image:
        "https://ahmedmedico.pk/wp-content/uploads/2021/09/ensure-vanilla.jpg",
    title: "Ensure Milk Vanilla 400g",
    companyName: "Abbott Nutrition",
    price: "Rs.1896",
    description:
        "it is broadly used in sportsmen, athletes, folks suffering from malnutrition, and helps them to fulfills their daily nutrition requirements. It contains protein, carbohydrates, all essential vitamins & minerals which increase performance, maintain a healthy weight, reduces fatigue & tiredness, increase muscle and joints strong, and help to increase height. Ensure (dietary powder) is available in three flavors, i.e. vanilla, chocolate, and strawberry.",
    precautions:
        "Just for an oral route only. Overdose increases the risks of side effects. to prepare, add four scoops (of powder) in a glass of water.",
    sideEffects:
        "In rare cases, it showed digestive problems, including abdominal pain & cramps, bloating, gas, and diarrhea, etc.",
  ),
];

Widget buildHomeProductsItem(
        {required HomeProductsItem List_of_homeProducts_Item, height, width}) =>
    ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Card(
          child: Column(
            children: [
              Image.network(
                List_of_homeProducts_Item.image,
                height: height,
                width: width,
                fit: BoxFit.cover,
              ),
              SizedBox(height: height * 0.1),
              Text(
                List_of_homeProducts_Item.title,
                style: TextStyle(color: App_Constants_Colors.app_black_color),
              ),
              SizedBox(height: height * 0.1),
              Text(
                List_of_homeProducts_Item.price,
                style: TextStyle(
                    color: App_Constants_Colors.app_blue_color,
                    fontFamily: App_Fonts_Constants.regular_font_family,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: height * 0.1),
              ClipOval(
                child: Material(
                  color: App_Constants_Colors.app_blue_color,
                  child: InkWell(
                    onTap: () {},
                    child: Column(
                      children: <Widget>[
                        Icon(
                          Icons.add,
                          size: 30,
                          color: App_Constants_Colors.app_white_color,
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
