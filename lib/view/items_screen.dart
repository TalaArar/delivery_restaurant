import 'package:delivery_resturent/controller/appsettings_controller.dart';
import 'package:delivery_resturent/helper/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ItemsScreen extends StatefulWidget {
  ItemsScreen({super.key, this.image});
  String? image;
  @override
  State<ItemsScreen> createState() => _ItemsScreenState();
}

class _ItemsScreenState extends State<ItemsScreen> {
  bool? value=false;
  bool? value2=false;
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
                  Column(
                    children: [
                      Stack(
                        children: [
                          Stack(
                            children: [
                              Container(
                                width: Get.width,
                                height: Get.height * 0.22,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: NetworkImage("${widget.image}")),
                                    borderRadius: BorderRadius.only(
                                        bottomRight: Radius.circular(30),
                                        bottomLeft: Radius.circular(40))),
                              ),
                              IconButton(
                                  onPressed: () {
                                    Get.back();
                                  },
                                  icon: Icon(
                                    Icons.navigate_before_outlined,
                                    color: Colors.white,
                                  ))
                            ],
                          ),
                          Positioned(
                              left: 0,
                              bottom: 0,
                              child: CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: 35,
                                backgroundImage:
                                    AssetImage("assets/images/logo_deal.png"),
                              ))
                        ],
                      ),
                      Container(
                        width: Get.width,
                        height: Get.height * 0.09,
                        color: Colors.white60,
                        // padding: EdgeInsets.symmetric(horizontal: 50,vertical: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            // Column(
                            //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            //   children: [
                            //     Text("Delivery"),
                            //     Text(
                            //         controller.finalitems.first.deliveryprice ??
                            //             "")
                            //   ],
                            // )
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text("review"),
                                Text(controller.finalitems.first.review ?? "")
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text("price"),
                                Text("${controller.finalitems.first.price} JD")
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                        child: Row(
                          children: [
                            Text(controller.finalitems.first.itemDesc ?? "")
                          ],
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Delete product"),
                            Checkbox(value: value, onChanged: (val) {
                              setState(() {
                                value=val;
                              });
                            },)
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Add product to list"),
                            Checkbox(value: value2, onChanged: (val) {
                              setState(() {
                                value2=val;
                              });
                            },)
                          ],
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: TextFormField(
                          maxLines: 5,
                          textAlign: TextAlign.start,
                          decoration: InputDecoration(
                            // fillColor: Colors.white,
                            // filled: true,
                              enabledBorder: OutlineInputBorder(
                                  borderSide:
                                  const BorderSide(color: Colors.black12),
                                  borderRadius: BorderRadius.circular(7)),
                              hintText: "add description",
                              hintStyle: const TextStyle(color: Colors.black45),
                              contentPadding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 13),
                              border: InputBorder.none,

                          ),
                        ),
                      ),
                      SizedBox(
                        height: Get.height*0.13,
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: MyColors.blue,
                              fixedSize: Size(Get.width*0.6 ,Get.height*0.05)),

                          onPressed: () {
                        
                      }, child: Text("save"))
                    ],
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
