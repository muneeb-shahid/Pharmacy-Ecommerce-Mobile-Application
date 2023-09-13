import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:servaid/Reusable%20Ads/List_of_homeProducts_Item/List_of_homeProducts_Item.dart';
import 'package:servaid/constants/colors_constants/colors_constants.dart';
import 'package:servaid/constants/fonts_size_constant/fonts_size_constant.dart';
import 'package:servaid/controller/HomeController/HomeController.dart';

import '../../Reusable Ads/HomeAdCardItem/Homeadcarditem.dart';
import '../../Reusable Ads/HomeCategoryName/HomeCategoryName.dart';
import '../../images/images.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    HomeController homeController = Get.put(HomeController());
    var heightt = MediaQuery.of(context).size.height * 1;
    var widthh = MediaQuery.of(context).size.width * 1;
    return Scaffold(
      backgroundColor: App_Constants_Colors.app_background_color,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              alignment: Alignment.bottomCenter,
              children: [
                ListView(shrinkWrap: true, children: <Widget>[
                  ClipPath(
                    clipper: OvalBottomBorderClipper(),
                    child: Container(
                      alignment: Alignment.topLeft,
                      height: heightt * 0.18,
                      width: widthh * 1,
                      color: App_Constants_Colors.app_blue_color,
                      child: Image(image: AssetImage(App_Images.app_logo)),
                    ),
                  ),
                ]),
                Positioned(
                    child: Padding(
                  padding: EdgeInsets.only(left: 20, right: 20),
                  child: Form(
                    key: homeController.formKey,
                    child: Material(
                      elevation: 20.0,
                      borderRadius: BorderRadius.circular(30),
                      shadowColor: App_Constants_Colors.app_white_color,
                      child: TextFormField(
                        controller: homeController.SearchEditingController,
                        focusNode: homeController.focusNode1,
                        onFieldSubmitted: (value) {
                          FocusScope.of(context)
                              .requestFocus(homeController.focusNode2);
                        },
                        style: TextStyle(
                            color: App_Constants_Colors.app_black_color),
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: App_Constants_Colors.app_white_color,
                          hintText: 'Search Products Here',
                          hintStyle: TextStyle(
                              color: App_Constants_Colors.app_blue_color),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: const BorderSide(
                              width: 2,
                              color: Colors.white,
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide(
                                  color: App_Constants_Colors.app_white_color)),
                          prefixIcon: Icon(Icons.search,
                              color: App_Constants_Colors.app_blue_color),
                        ),
                      ),
                    ),
                  ),
                ))
              ],
            ),
            SizedBox(
              height: heightt * 0.02,
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Container(
                height: heightt * 0.2,
                child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: adcarditem.length,
                  itemBuilder: (context, index) {
                    return buildCard(adcarditem: adcarditem[index]);
                  },
                  separatorBuilder: (context, index) => SizedBox(
                    width: widthh * 0.05,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: heightt * 0.03,
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                            height: heightt * 0.2,
                            width: widthh * 0.45,
                            color: App_Constants_Colors.app_pink_color,
                            child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Column(
                                children: [
                                  Text(
                                    "Place your order istantly within seconds.",
                                    style: TextStyle(
                                        color: App_Constants_Colors
                                            .app_white_color,
                                        fontFamily: App_Fonts_Constants
                                            .regular_font_family),
                                  ),
                                  SizedBox(
                                    height: heightt * 0.02,
                                  ),
                                  ListTile(
                                      leading: Icon(
                                        Icons.arrow_forward_ios_outlined,
                                        color: App_Constants_Colors
                                            .app_white_color,
                                      ),
                                      trailing: Image.asset(
                                        App_Images.clock,
                                      ))
                                ],
                              ),
                            )),
                      ),
                    ),
                    SizedBox(
                      width: widthh * 0.02,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                            height: heightt * 0.2,
                            width: widthh * 0.45,
                            color: Color(0xff26ACA1),
                            child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Column(
                                children: [
                                  Text(
                                    "Got a prescription?\nUpload and get your meds now!.",
                                    style: TextStyle(
                                        color: App_Constants_Colors
                                            .app_white_color,
                                        fontFamily: App_Fonts_Constants
                                            .regular_font_family),
                                  ),
                                  SizedBox(
                                    height: heightt * 0.02,
                                  ),
                                  ListTile(
                                      leading: Icon(
                                        Icons.arrow_forward_ios_outlined,
                                        color: App_Constants_Colors
                                            .app_white_color,
                                      ),
                                      trailing: Image.asset(
                                        App_Images.notes,
                                      ))
                                ],
                              ),
                            )),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: heightt * 0.03,
            ),
            HomeCategoryName(
              "Baby Care",
            ),
            SizedBox(
              height: heightt * 0.02,
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Container(
                // color: Colors.amber,
                height: heightt * 0.36,
                width: double.infinity,
                child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: List_of_homeProducts_Item.length,
                  itemBuilder: (context, index) {
                    return buildHomeProductsItem(
                        height: heightt * 0.2,
                        width: widthh * 0.5,
                        List_of_homeProducts_Item:
                            List_of_homeProducts_Item[index]);
                  },
                  separatorBuilder: (context, index) => SizedBox(
                    width: widthh * 0.05,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
