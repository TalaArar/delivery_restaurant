import 'dart:ui';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:delivery_resturent/controller/appsettings_controller.dart';
import 'package:delivery_resturent/helper/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _current = 0;
  CarouselSliderController  carouselController = CarouselSliderController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: GetBuilder<AppSettingsController>(
          init: AppSettingsController(),
          builder: (controller) {
          return SingleChildScrollView(
            child: Stack(
              children: [
                Container(
                  height: Get.height,
                  width: Get.width,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          opacity: 0.5,
                          image: AssetImage("assets/images/bg.jpg"))),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                        child:   Container(
                          width: Get.width*0.35,
                          height: Get.height*0.09,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage("assets/images/logo_deal.png"))
                          ),
                        ),
                      ),
                      CarouselSlider.builder(
                          carouselController: carouselController,
                          itemCount: 3,
                          options: CarouselOptions(
                            height: Get.height * 0.2,
                            aspectRatio: 10 / 5,
                            viewportFraction: 0.9,
                            initialPage: 0,

                            enableInfiniteScroll: true,
                            reverse: false,
                            autoPlay: true,
                            autoPlayInterval: const Duration(seconds: 3),
                            autoPlayAnimationDuration:
                            const Duration(milliseconds: 1000),
                            autoPlayCurve: Curves.fastOutSlowIn,
                            enlargeCenterPage: true,
                            enlargeFactor: 0.3,
                            // onPageChanged: callbackFunction,
                            scrollDirection: Axis.horizontal,
                            onPageChanged: (index, reason) {
                              _current = index;
                            },
                          ),
                          itemBuilder: (BuildContext context, int itemIndex,
                              int pageViewIndex) =>
                              Container(
                                child: Stack(children: [
                                  Padding(
                                    padding: const EdgeInsets.all(5),
                                    child: Container(
                                      width: Get.width,
                                      height: Get.height * 0.15,
                                      decoration: const BoxDecoration(
                                          color: Colors.white30,
                                          boxShadow: [
                                            BoxShadow(
                                                blurRadius: 0.3,
                                                spreadRadius: 0.3,
                                                offset: Offset(0, 3),
                                                color: Colors.black12)
                                          ]),
                                      child: Center(
                                          child: Text(
                                            "Dealergi Deal with Real",
                                            style: TextStyle(
                                                fontSize: Get.width * 0.05,
                                                fontWeight: FontWeight.w700,
                                                color: MyColors.red),
                                          )),
                                    ),
                                  ),
                                ]),
                              )),
                    Row(
                      children: [
                        Text("Categories",style: TextStyle(
                          fontSize: Get.width*0.045,fontWeight: FontWeight.w700,color: MyColors.blue
                        ),)
                      ],
                    ),
                      Container(
                        width: Get.width,
                        height: Get.height*0.1,
                        child: ListView.builder(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: controller.catlist.length,
                          itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Container(
                              width: Get.width*0.2,
                              height: Get.height*0.07,
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 0.2,
                                    spreadRadius: 0.2,
                                    offset: Offset(0, 2),
                                    color: Colors.black12
                                  )
                                ]
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Container(
                                    width: Get.width*0.18,
                                    height: Get.height*0.05,
                                    color: Colors.white,
                                  ),
                                  Text(controller.catlist[index].categoryName??"",style: TextStyle(
                                    fontSize: Get.width*0.035
                                  ),)
                                ],
                              ),
                            ),
                          );
                        },),
                      ),
                      ListView.builder(
                        shrinkWrap: true,
                        itemCount: controller.offerlist.length,
                        itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(vertical: 15),
                          child: Container(
                            width: Get.width,
                            height: Get.height*0.1,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: Colors.black12
                              )
                            ),
                            child: Row(children: [
                              Container(
                                width: Get.width*0.2,
                                height: Get.height*0.1,
                                color: Colors.red
                                ,
                              )
                            ],),
                          ),
                        );
                      },)
                    ],
                  ),
                )
              ],
            ),
          );
        },)
      ),
    );
  }
}
