import 'package:delivery_resturent/helper/colors.dart';
import 'package:delivery_resturent/view/login_screen.dart';
import 'package:delivery_resturent/view/notifictions_screen.dart';
import 'package:delivery_resturent/view/order_history_screen.dart';
import 'package:delivery_resturent/view/profile_screen.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:gap/gap.dart';

import 'add_category_screen.dart';
import 'contactus_screen.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
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
                padding:
                const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Account",
                          style: TextStyle(
                              fontSize: Get.width * 0.05,
                              color: MyColors.blue,
                              fontWeight: FontWeight.w700),
                        )
                      ],
                    ),
                    const Gap(20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 25,
                              backgroundColor: MyColors.blue,
                            ),
                            Column(
                              children: [
                                Text(
                                  "Welcome",
                                  style: TextStyle(
                                      fontSize: Get.width * 0.035,
                                      color: MyColors.blue,
                                      fontWeight: FontWeight.w500),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 12),
                                  child: Text(
                                    "tester user",
                                    style:
                                    TextStyle(fontSize: Get.width * 0.038),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        IconButton(
                            onPressed: () {
                               Get.offAll( LoginScreen());
                            },
                            icon: const Icon(Icons.logout))
                      ],
                    ),
                    const Divider(
                      endIndent: 20,
                      thickness: 2,
                      indent: 10,
                    ),
                    const Gap(30),
                    RowSettingsWidget(
                      onTap: () {
                        Get.to(const OrderHistoryScreen());
                      },
                      data: "Order History",

                    ),
                    const Divider(
                      endIndent: 20,
                      thickness: 2,
                      indent: 10,
                    ),
                    RowSettingsWidget(
                      data: "Profile",
                      onTap: () {
                        Get.to(ProfileScreen());
                      },
                    ),
                    const Divider(
                      endIndent: 20,
                      thickness: 2,
                      indent: 10,
                    ),
                    RowSettingsWidget(
                      data: "Add Category",
                      onTap: () {
                       Get.to(const AddCategoryScreen());
                      },
                    ),
                    const Divider(
                      endIndent: 20,
                      thickness: 2,
                      indent: 10,
                    ),
                    RowSettingsWidget(
                      data: "Notifications",
                      onTap: () {
                        Get.to(const NotificationsSc());
                      },
                    ),
                    const Divider(
                      endIndent: 20,
                      thickness: 2,
                      indent: 10,
                    ),
                    RowSettingsWidget(
                      data: "Contact Us",
                      onTap: () {
                        Get.to(const ContactusScreen());
                      },
                    ),

                    const Divider(
                      endIndent: 20,
                      thickness: 2,
                      indent: 10,
                    ),
                    RowSettingsWidget(
                      data: "Language",
                    ),
                    const Divider(
                      endIndent: 20,
                      thickness: 2,
                      indent: 10,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class RowSettingsWidget extends StatelessWidget {
  RowSettingsWidget({super.key, this.data,this.onTap});
  String? data;
  void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(data ?? ""),
            Icon(
              Icons.arrow_right_outlined,
              color: MyColors.grey,
            )
          ],
        ),
      ),
    );
  }
}
