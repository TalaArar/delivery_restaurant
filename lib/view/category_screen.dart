import 'package:delivery_resturent/controller/appsettings_controller.dart';
import 'package:delivery_resturent/helper/colors.dart';
import 'package:delivery_resturent/view/items_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: GetBuilder<AppSettingsController>(
            init: AppSettingsController(),
            builder: (controller) {
              return Stack(
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
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 15),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            IconButton(
                                onPressed: () {
                                  Get.back();
                                },
                                icon: Icon(
                                  Icons.navigate_before_outlined,
                                  color: MyColors.blue,
                                ))
                          ],
                        ),
                        Container(
                          width: Get.width,
                          height: Get.height * 0.05,
                          child: ListView.builder(
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemCount: controller.catlist.length,
                            itemBuilder: (context, index) {
                              return InkWell(
                                onTap: () {
                                  controller.changeindex(index);
                                  controller.update();
                                  controller.getsub(
                                      controller.catlist[index].categoryNo);
                                  controller.update();
                                },
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8.0),
                                  child: Container(
                                    width: Get.width * 0.25,
                                    height: Get.height * 0.06,
                                    decoration: BoxDecoration(
                                      border: Border.all(color: MyColors.grey),
                                      color: controller.currentindex == index
                                          ? MyColors.blue
                                          : Colors.transparent,
                                    ),
                                    child: Center(
                                        child: Text(
                                      controller.catlist[index].categoryName ??
                                          "",
                                      style: TextStyle(
                                        color: controller.currentindex == index
                                            ? Colors.white
                                            : MyColors.blue,
                                      ),
                                    )),
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 15.0, vertical: 10),
                          child: ListView.builder(
                            shrinkWrap: true,
                            itemCount: controller.finalsub.length,
                            itemBuilder: (context, index) {
                              return InkWell(
                                onTap: () {
                                  controller.getItems(
                                      controller.finalsub[index].subcategoryNo);
                                  controller.update();
                                  Get.to(ItemsScreen(
                                      image: controller
                                          .finalitems[index].itemImage));
                                },
                                child: Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 8.0),
                                  child: Container(
                                    width: Get.width * 0.3,
                                    height: Get.height * 0.07,
                                    decoration: BoxDecoration(
                                        border:
                                            Border.all(color: MyColors.grey)),
                                    child: Center(
                                        child: Text(controller.finalsub[index]
                                                .subcategoryName ??
                                            "")),
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
