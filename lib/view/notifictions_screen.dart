import 'package:delivery_resturent/helper/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NotificationsSc extends StatefulWidget {
  const NotificationsSc({super.key});

  @override
  State<NotificationsSc> createState() => _NotificationsScState();
}

class _NotificationsScState extends State<NotificationsSc> {
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

            Column(
              children: [
            Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 8),
        child: Container(
          width: Get.width,
          height: Get.height*0.09,
          padding: const EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
              color: Colors.white54,
              borderRadius: BorderRadius.circular(10)
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text("Test Notifications"),
                  Text("test "),
                ],
              ),
              CircleAvatar(
                radius: 15,
                backgroundColor: MyColors.blue,
                child:     const Icon(Icons.notifications,color: Colors.white,),
              )
            ],),
        ),
      )
              ],
            )
          ],
        ),
      ),
      ),
    );
  }
}
