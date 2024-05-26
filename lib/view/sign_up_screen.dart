import 'package:delivery_resturent/helper/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 35),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                  CircleAvatar(
                    radius: 25,
                    backgroundColor: MyColors.darkOrange,
                    child: Icon(Icons.navigate_next,color: Colors.white,),
                  )
                ],),

              ],
            ),
          )
    ]))


    );
  }
}
