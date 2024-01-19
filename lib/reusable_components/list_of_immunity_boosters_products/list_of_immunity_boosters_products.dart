import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:servaid/model/immunity_boosters/immunity_boosters.dart';
import 'package:servaid/constants/colors_constants/colors_constants.dart';
import 'package:servaid/constants/fonts_size_constant/fonts_size_constant.dart';
import 'package:servaid/images/images.dart';
import '../../view/full_product_detail_page/full_product_detail_page.dart';

List<ImmunityBoosters> listofImmunityBoosters = [
  ImmunityBoosters(
      image: App_Images.immunity_Boosters_1,
      title: "Blackmores Cod Liver Oil 1000MG Cap 1x80 (P)",
      companyName: "Cod Liver Oil\nBlackmores",
      price: "Rs. 2350",
      description:
          '''Cod (a fish) liver oil has numerous benefits for a good living. It contains omega 3 fatty acids and is good for heart health. It may help to lower bad cholesterol levels, and boosts energy & immunity. It reduces oxidative stress, tiredness, fatigue, and weakness. ''',
      precautions:
          'Keep it out of the reach of children. Store it below the room temperature i.e. below 25 degrees Celsius. Consult a doctor if you’re hypersensitive to any of its ingredients. Do not take overdose, always take it in a recommended dose.',
      sideEffects:
          "No side effects are reported. Consult a doctor if it causes digestive problems i.e. gas, bloating, abdominal pain, GERD (gastroesophageal reflux disease), vomiting, nausea, or diarrhea, etc. Allergic reactions may occur i.e. skin itching, rashes, irritations, redness, & inflammation/swelling, etc. Other effects are drowsiness, dizziness, sleepiness, headache, etc.",
      coinPrice: "Rs. 2350/Pack",
      reviews: "reviews",
      discount: "14.1 % OFF"),
  ImmunityBoosters(
      image: App_Images.immunity_Boosters_2,
      title: "Nutraxin Immune-S Tab 1x100 (P)",
      companyName: "Immunity Booster\nAsra Derm",
      price: "Rs. 3200",
      description: 'Boosts the immune system (defense system of the body).',
      precautions:
          "   Keep it out of the reach of the children. Store in a cool and dry place. Store below 25 degress Celsius temperature. Don't use after the expiry date. Consult a doctor if you're hypersensitive to its ingredients.",
      sideEffects:
          "In rare cases, it may show some adverse reactions. Side effects may include vomiting, diarrhea, nausea, swelling, dizziness, headache, abdominal cramps, constipation, stomach ulcers, itching, hives, etc. Discontinue the treatment and re-visit your doctor.",
      coinPrice: "Rs. 3200/Pack",
      reviews: "reviews",
      discount: "14.1 % OFF"),
  ImmunityBoosters(
      image: App_Images.immunity_Boosters_3,
      title: "Nutrifactor Nutri-C 1000MG Tab 1x30 (P)",
      companyName: "Vitamin C, Zinc\nNutrifactr",
      price: "Rs. 890",
      description:
          'It boosts immunity and may help prevent the attacks of viral infections.',
      precautions:
          "Keep out of the reach of children. Protect from direct exposure to sunlight, and heat. Store below the room temperature.",
      sideEffects:
          'In some cases, it may cause mild to moderate adverse reactions. In the case of side effects, discontinue the use and try to find a doctor. Major Side effects may include, skin irritations, itching, rashes, redness, and swelling on the skin. Others may include digestive problems , i.e. bloating, gas, diarrhea, constipation, gerd (gastroesophageal reflux disease), nausea, and vomiting, etc. Consult a doctor, if you have hypersensitivity to any of its ingredients.',
      coinPrice: "Rs. 890/Pack",
      reviews: "reviews",
      discount: "14.1 % OFF"),
  ImmunityBoosters(
      image: App_Images.immunity_Boosters_4,
      title: "Nutraxin Vitamin C Chewable Tab 1x28 (P)",
      companyName: "Vitamin C\nAsra Derm",
      price: "Rs. 2200",
      description:
          'Used To Prevent Or Treat Low Levels Of Vitamin C In People Who Do Not Get Enough Of The Vitamin From Their Diets.',
      precautions:
          "Before Using This Vitamin, Tell Your Doctor Or Pharmacist Your Medical History, Especially Of Kidney Disease (Such As Kidney Stones), A Certain Enzyme Deficiency (G6Pd Deficiency).",
      sideEffects:
          'Diarrhea, Nausea, Vomiting, Abdominal Cramps/Pain, Or Heartburn May Occur.',
      coinPrice: "Rs. 2200/Pack",
      reviews: "reviews",
      discount: "14.1 % OFF"),
  ImmunityBoosters(
      image: App_Images.immunity_Boosters_5,
      title: "Imuzer Sachet 3x10 (L)",
      companyName: "Vitamin C, Zinc\nAGP",
      price: "Rs. 450",
      description:
          'It boosts the immune system (the natural defense system of a living body). It helps a body to fight against infectious germs, i.e. bacteria, viruses, fungi, etc.',
      precautions:
          "Keep out of the reach of children. Store below 25 degrees Celsius temperature or at room temperature. Protect from direct exposure to sunlight, heat, and humidity. Don't use it after the expiration date. Consult a doctor if you're hypersensitive to any of its ingredients.",
      sideEffects:
          'No side effects were found. Consult a doctor for more details.',
      coinPrice: "Rs. 450/Pack",
      reviews: "reviews",
      discount: "14.1 % OFF"),
];

Widget buildImmunityBoosters(
        {height, width, required ImmunityBoosters List_of_ImmunityBoosters}) =>
    GestureDetector(
      onTap: () {
        Get.to(() => const FullProductDetailPage(), arguments: {
          "image": List_of_ImmunityBoosters.image,
          "title": List_of_ImmunityBoosters.title,
          "companyName": List_of_ImmunityBoosters.companyName,
          "price": List_of_ImmunityBoosters.price,
          "description": List_of_ImmunityBoosters.description,
          "precautions": List_of_ImmunityBoosters.precautions,
          "sideEffects": List_of_ImmunityBoosters.sideEffects,
          "coinPrice": List_of_ImmunityBoosters.coinPrice,
          "reviews:": List_of_ImmunityBoosters.reviews,
          "discount": List_of_ImmunityBoosters.discount,
        });
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Card(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 5, right: 5, top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(40),
                      child: Container(
                        color: const Color.fromARGB(181, 255, 214, 64),
                        child: Row(
                          children: [
                            Image(
                                height: height * 0.2,
                                fit: BoxFit.cover,
                                image: AssetImage(
                                  App_Images.coin,
                                )),
                            SizedBox(
                              width: width * 0.05,
                            ),
                            Text(
                              List_of_ImmunityBoosters.price,
                              style: TextStyle(
                                  color: App_Constants_Colors.app_black_color,
                                  fontFamily:
                                      App_Fonts_Constants.regular_font_family,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: width * 0.1,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        color: Colors.red,
                        child: Row(
                          children: [
                            Text(
                              List_of_ImmunityBoosters.discount,
                              style: TextStyle(
                                  fontSize: 12,
                                  color: App_Constants_Colors.app_white_color,
                                  fontFamily:
                                      App_Fonts_Constants.regular_font_family,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Image.asset(
                List_of_ImmunityBoosters.image,
                height: height,
                width: width,
              ),
              Container(
                alignment: Alignment.center,
                width: width,
                height: height * 0.2,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Text(
                    List_of_ImmunityBoosters.title,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    maxLines: 2,
                    softWrap: false,
                    style:
                        TextStyle(color: App_Constants_Colors.app_black_color),
                  ),
                ),
              ),
              SizedBox(height: height * 0.05),
              Text(
                List_of_ImmunityBoosters.price,
                style: TextStyle(
                    color: App_Constants_Colors.app_blue_color,
                    fontFamily: App_Fonts_Constants.regular_font_family,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: height * 0.05),
              Padding(
                padding: EdgeInsets.only(left: 120),
                child: ClipOval(
                  child: Material(
                    color: App_Constants_Colors.app_blue_color,
                    child: InkWell(
                      onTap: () {},
                      child: Column(
                        children: <Widget>[
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.add,
                                color: App_Constants_Colors.app_white_color,
                              ))
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
