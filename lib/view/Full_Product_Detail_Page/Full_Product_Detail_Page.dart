import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:readmore/readmore.dart';
import 'package:servaid/constants/colors_constants/colors_constants.dart';
import 'package:servaid/constants/fonts_size_constant/fonts_size_constant.dart';
import 'package:share_plus/share_plus.dart';
import '../../Reusable Components/Products_Page_bottomSheet_detail/Products_Page_bottomSheet_detail.dart';
import '../../controller/Full_Product_Detail_PageController/Full_Product_Detail_PageController.dart';
import '../../customButtons/Login&signupButton.dart';
import '../../images/images.dart';

class Full_Product_Detail_Page extends StatelessWidget {
  const Full_Product_Detail_Page({super.key});

  @override
  Widget build(BuildContext context) {
    Full_Product_Detail_PageController full_product_detail_pageController =
        Get.put(Full_Product_Detail_PageController());
    var heightt = MediaQuery.of(context).size.height * 1;
    var widthh = MediaQuery.of(context).size.width * 1;
    return Scaffold(
        backgroundColor: App_Constants_Colors.app_background_color,
        appBar: AppBar(
          elevation: 1,
          backgroundColor: App_Constants_Colors.app_white_color,
          iconTheme: IconThemeData(color: App_Constants_Colors.app_blue_color),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                children: [
                  Container(
                    color: Colors.white,
                    height: heightt * 0.45,
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
                                        color: App_Constants_Colors
                                            .app_black_color,
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
                          minScale: 0.01,
                          child: Image(
                              height: heightt * 0.3,
                              width: widthh * 0.8,
                              image: AssetImage("${Get.arguments['image']}")),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            IconButton(
                                onPressed: () async {
                                  await Share.share(Get.arguments["title"]);
                                },
                                icon: Icon(Icons.share))
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    color: App_Constants_Colors.app_background_color,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: Column(
                        children: [
                          SizedBox(
                            height: heightt * 0.02,
                          ),
                          Text(
                            Get.arguments["title"],
                            style: TextStyle(
                                color: App_Constants_Colors.app_blue_color,
                                fontFamily:
                                    App_Fonts_Constants.heading_font_family,
                                fontSize: App_Fonts_Constants
                                    .sub_heading_font_size.sp,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: heightt * 0.01,
                          ),
                          Row(
                            children: [
                              Text(
                                Get.arguments["companyName"],
                                style: TextStyle(
                                  color: App_Constants_Colors.app_black_color,
                                  fontFamily:
                                      App_Fonts_Constants.heading_font_family,
                                  fontSize:
                                      App_Fonts_Constants.text_font_size.sp,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                Get.arguments["coinPrice"],
                                style: TextStyle(
                                    color: App_Constants_Colors.app_black_color,
                                    fontFamily:
                                        App_Fonts_Constants.heading_font_family,
                                    fontSize: App_Fonts_Constants
                                        .sub_heading_font_size.sp,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: heightt * 0.03,
                          ),
                          ReadMoreText(
                            "${Get.arguments["description"]}",
                            style: TextStyle(
                              letterSpacing: 2,
                              wordSpacing: 2,
                              color: App_Constants_Colors.app_black_color,
                              fontFamily:
                                  App_Fonts_Constants.regular_font_family,
                              fontSize: App_Fonts_Constants.text_font_size.sp,
                            ),
                            trimLines: 5,
                            lessStyle: TextStyle(
                              color: App_Constants_Colors.app_blue_color,
                              decoration: TextDecoration.underline,
                              fontWeight: FontWeight.bold,
                              fontFamily:
                                  App_Fonts_Constants.regular_font_family,
                              fontSize: App_Fonts_Constants.text_font_size.sp,
                            ),
                            trimMode: TrimMode.Line,
                            trimCollapsedText: 'Read more',
                            trimExpandedText: 'Read less',
                            moreStyle: TextStyle(
                              color: App_Constants_Colors.app_blue_color,
                              decoration: TextDecoration.underline,
                              fontWeight: FontWeight.bold,
                              fontFamily:
                                  App_Fonts_Constants.regular_font_family,
                              fontSize: App_Fonts_Constants.text_font_size.sp,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: heightt * 0.03,
                  ),
                  ReuseableProductDetails(
                      "Precautions", Get.arguments["precautions"]),
                  ReuseableProductDetails(
                      "Side Effects", Get.arguments["sideEffects"]),
                  ReuseableProductDetails("Reviews", Get.arguments["reviews"]),
                  Divider(
                    color: App_Constants_Colors.app_white_color,
                    height: 2,
                    thickness: 2,
                  ),
                  SizedBox(
                    height: heightt * 0.01,
                  ),

                ],
              ),
            ],
          ),
        ),
        bottomNavigationBar: 
        // bottomNavigation()

        Container(
            color: App_Constants_Colors.app_white_color,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: customLogin_SignupButton(
                  func: () => Get.to(""),
                  innerColor: App_Constants_Colors.app_blue_color,
                  textColor: App_Constants_Colors.app_white_color,
                  text: "Add to Cart"),
            )),
        );
  }
}
