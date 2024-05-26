import 'dart:async';

import 'package:delivery_resturent/helper/colors.dart';
import 'package:delivery_resturent/view/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void splashTimer() {
    Timer(const Duration(seconds: 3), () => Get.offAll(const LoginScreen()));
  }

  @override
  void initState() {
    splashTimer();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
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
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                height: Get.height * 0.1,
              ),
              Lottie.asset("assets/lottie/Xg6ffgKwQL.json"),
              Column(
                children: [
                  Text(
                    "Powered by O.J.E",
                    style: TextStyle(
                        fontSize: Get.width * 0.035, color: Colors.black38),
                  ),
                  Text("version 1.0.0",
                      style: TextStyle(
                          fontSize: Get.width * 0.033, color: Colors.black38))
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
