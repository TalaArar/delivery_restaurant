import 'package:delivery_resturent/controller/appsettings_controller.dart';
import 'package:delivery_resturent/helper/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class OrderScreen extends StatefulWidget {
  const OrderScreen({super.key});

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: GetBuilder<AppSettingsController>(
          init: AppSettingsController(),
          builder: (controller) {
          return Stack(children: [
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
                SizedBox(height: Get.height*0.2,),
                Center(child: Lottie.asset("assets/lottie/JxQzwZCmsX.json",height: Get.height*0.4)),
                Text("Order Empty",style: TextStyle(
                  fontSize: Get.width*0.05,
                  color: MyColors.red
                ),)
              ],
            ),

          ],);
        },),
      ),
    );
  }
}
