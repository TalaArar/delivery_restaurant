import 'package:delivery_resturent/helper/colors.dart';
import 'package:delivery_resturent/view/home_screen.dart';
import 'package:delivery_resturent/view/sign_up_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
              padding: EdgeInsets.symmetric(
                  vertical: Get.height * 0.2, horizontal: Get.width * 0.07),
              child: Container(
                width: Get.width,
                height: Get.height * 0.6,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 2,
                          spreadRadius: 2,
                          offset: const Offset(0, 2),
                          color: Colors.grey.shade300)
                    ]),
                child: Column(
                  children: [
                    Image.asset(
                      "assets/images/splash.jpg",
                      width: Get.width * 0.4,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 15, horizontal: 15),
                      child: TextFormField(
                        textAlign: TextAlign.start,
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          enabledBorder: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(color: Colors.black12),
                              borderRadius: BorderRadius.circular(15)),
                          hintText: "username",
                          hintStyle: const TextStyle(color: Colors.black45),
                          contentPadding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 13),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 15, horizontal: 15),
                      child: TextFormField(
                        textAlign: TextAlign.start,
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          enabledBorder: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(color: Colors.black12),
                              borderRadius: BorderRadius.circular(15)),
                          hintText: "password",
                          hintStyle: const TextStyle(color: Colors.black45),
                          contentPadding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 13),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 25),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                              fixedSize:
                                  Size(Get.width * 0.7, Get.height * 0.06)),
                          onPressed: () {
                            Get.to(const HomeScreen());
                          },
                          child: Text(
                            'login',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: Get.width * 0.04),
                          )),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Don't Have an Account?"),
                        TextButton(
                            onPressed: () {
                              Get.to(const SignUpScreen());
                            },
                            child: Text(
                              "Sign up",
                              style: TextStyle(color: MyColors.darkOrange),
                            ))
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
