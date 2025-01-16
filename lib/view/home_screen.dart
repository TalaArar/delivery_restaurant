import 'dart:ui';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:delivery_resturent/controller/appsettings_controller.dart';
import 'package:delivery_resturent/helper/colors.dart';
import 'package:delivery_resturent/view/category_screen.dart';
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
                  padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      Container(
                        width: Get.width*0.35,
                        height: Get.height*0.09,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage("assets/images/logo_deal.png"))
                        ),
                      ),
                      Row(
                        children: [
                          IconButton(onPressed: () {

                          }, icon: Icon(Icons.shopping_bag,color: MyColors.blue,)),
                          IconButton(onPressed: () {

                          }, icon: Icon(Icons.notifications,color: MyColors.blue)),
                        ],
                      )
                    ],),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                Container(
                  width: Get.width*0.8,
                  child: TextFormField(
                    textAlign: TextAlign.start,
                    decoration: InputDecoration(
                      // fillColor: Colors.white,
                      // filled: true,
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                          const BorderSide(color: Colors.black12),
                          borderRadius: BorderRadius.circular(7)),
                      hintText: "search",
                      hintStyle: const TextStyle(color: Colors.black45),
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 13),
                      border: InputBorder.none,
                      suffixIcon: Icon(Icons.search)
                    ),
                  ),
                ),
                Container(
                  width: Get.width*0.12,
                  height: Get.height*0.06,
             decoration: BoxDecoration(
               border: Border.all(color: Colors.black12)
             ),
                  child: Center(
                    child: Icon(Icons.filter_alt_outlined,color: Colors.black26,),
                  ),
                )
              ],),
                      CarouselSlider.builder(
                          carouselController: carouselController,
                          itemCount: 3,
                          options: CarouselOptions(
                            height: Get.height * 0.2,
                            aspectRatio: 10 / 4,
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
                          fontSize: Get.width*0.045,fontWeight: FontWeight.w700,color: Colors.black54
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
                          return InkWell(
                            onTap: () {
                              controller.changeindex(index);
                              controller.getsub(controller.catlist[index].categoryNo);
                              controller.update();
                              Get.to(const CategoryScreen());
                            },
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 8.0),
                              child: SizedBox(
                                width: Get.width*0.2,
                                height: Get.height*0.07,

                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    Container(
                                      width: Get.width*0.18,
                                      height: Get.height*0.05,

                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.grey.shade300,
                                      ),
                                    ),
                                    Text(controller.catlist[index].categoryName??"",style: TextStyle(
                                      fontSize: Get.width*0.035
                                    ),)
                                  ],
                                ),
                              ),
                            ),
                          );
                        },),
                      ),

                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: Row(
                          children: [
                            Text(
                              "Special Offer",
                              style: TextStyle(
                                  fontSize: Get.width * 0.05,
                                  color: Colors.black54,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: Get.width,
                        height: Get.height * 0.13,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 0.2,
                                spreadRadius: 0.2,
                                offset: Offset(0, 2),
                                color: Colors.black26
                              )
                            ],
                            borderRadius: BorderRadius.circular(15)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: Get.width * 0.35,
                              height: Get.height * 0.13,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  image: const DecorationImage(
                                      fit: BoxFit.cover,
                                      image:
                                      AssetImage("assets/images/fruits.jpg"))),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 8.0, horizontal: 15),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Text(
                                    "Special Offer in store",
                                    style: TextStyle(fontSize: Get.width * 0.04),
                                  ),
                                  Text(
                                    "Free Delivery",
                                    style: TextStyle(fontSize: Get.width * 0.04),
                                  ),
                                  Container(
                                    width: Get.width * 0.28,
                                    height: Get.height * 0.04,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(30),
                                        color: MyColors.blue),
                                    child: Center(
                                      child: Text(
                                        "Order now",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: Get.width * 0.04),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              width: Get.width * 0.05,
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: Container(
                          width: Get.width,
                          height: Get.height * 0.13,
                          decoration: BoxDecoration(  boxShadow: [
                            BoxShadow(
                                blurRadius: 0.2,
                                spreadRadius: 0.2,
                                offset: Offset(0, 2),
                                color: Colors.black26
                            )
                          ],
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: Get.width * 0.35,
                                height: Get.height * 0.13,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    image: const DecorationImage(
                                        fit: BoxFit.cover,
                                        image:
                                        AssetImage("assets/images/fruits.jpg"))),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 8.0, horizontal: 15),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    Text(
                                      "Special Offer in store",
                                      style: TextStyle(fontSize: Get.width * 0.04),
                                    ),
                                    Text(
                                      "Fresh Meat",
                                      style: TextStyle(fontSize: Get.width * 0.04),
                                    ),
                                    Container(
                                      width: Get.width * 0.28,
                                      height: Get.height * 0.04,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(30),
                                          color: MyColors.blue),
                                      child: Center(
                                        child: Text(
                                          "Order now",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: Get.width * 0.04),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: Get.width * 0.05,
                              )
                            ],
                          ),
                        ),
                      ),
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
