import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:servaid/constants/colors_constants/colors_constants.dart';
import 'package:servaid/constants/fonts_size_constant/fonts_size_constant.dart';
import '../../Reusable Ads/List_of_homeProducts_Item/List_of_homeProducts_Item.dart';
import '../../customButtons/Login&signupButton.dart';
import '../../images/images.dart';

class Full_Product_Detail_Page extends StatelessWidget {
  const Full_Product_Detail_Page({super.key});

  @override
  Widget build(BuildContext context) {
    var heightt = MediaQuery.of(context).size.height * 1;
    var widthh = MediaQuery.of(context).size.width * 1;
    return Scaffold(
      backgroundColor: App_Constants_Colors.app_background_color,
      appBar: AppBar(
        backgroundColor: App_Constants_Colors.app_white_color,
        iconTheme: IconThemeData(color: App_Constants_Colors.app_blue_color),
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverFillRemaining(
            child: Column(
              children: [
                Container(
                  color: Colors.white,
                  height: heightt * 0.4,
                  width: double.infinity,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 225, top: 20),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(40),
                          child: Container(
                            height: heightt * 0.05,
                            width: widthh * 0.35,
                            color: const Color.fromARGB(181, 255, 214, 64),
                            child: Row(
                              children: [
                                Image(
                                    height: heightt * 0.1,
                                    width: widthh * 0.1,
                                    image: AssetImage(
                                      App_Images.coin,
                                    )),
                                SizedBox(
                                  width: widthh * 0.05,
                                ),
                                Text(
                                  "${Get.arguments['price']}",
                                  style: TextStyle(
                                      color:
                                          App_Constants_Colors.app_black_color,
                                      fontFamily: App_Fonts_Constants
                                          .regular_font_family,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      InteractiveViewer(
                        maxScale: 5.0,
                        minScale:0.01,
                        child: Image(
                            height: heightt * 0.3,
                            width: widthh * 0.8,
                            image: AssetImage("${Get.arguments['image']}")),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 20, right: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [],
                            ),
                            Row(
                              children: [
                                Text(
                                  "shahid",
                                  style: TextStyle(color: Colors.black),
                                )
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Padding(
          padding: EdgeInsets.all(8.0),
          child: customLogin_SignupButton(
              func: () => Get.to(""),
              innerColor: App_Constants_Colors.app_blue_color,
              textColor: App_Constants_Colors.app_white_color,
              text: "Add to Cart")),
    );
  }
}
