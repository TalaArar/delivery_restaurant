import 'package:delivery_resturent/helper/colors.dart';
import 'package:delivery_resturent/view/login_screen.dart';
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
            child: Stack(children: [
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
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 45),
        child: Column(
          children: [
            InkWell(
              onTap: () {
                Get.back();
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CircleAvatar(
                    radius: 25,
                    backgroundColor: MyColors.blue,
                    child: const Icon(
                      Icons.navigate_next,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: Get.height * 0.05,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Container(
                  width: Get.width,
                  height: Get.height * 0.55,
                  padding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 2,
                            spreadRadius: 2,
                            offset: const Offset(0, 2),
                            color: Colors.grey.shade200)
                      ]),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "Gold Subscription",
                          style: TextStyle(
                              fontSize: Get.width * 0.045,
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontStyle: FontStyle.italic),
                        ),
                        SizedBox(
                          height: Get.height * 0.02,
                        ),
                        Column(
                          children: [
                            Text(
                              "price",
                              style: TextStyle(
                                  fontSize: Get.width * 0.055,
                                  color: MyColors.red,
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FontStyle.italic),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "9.99 \$ / Moth",
                                  style: TextStyle(
                                    fontSize: Get.width * 0.07,
                                    color: MyColors.red,
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: Get.height * 0.02,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.check_circle,
                              color: MyColors.blue,
                            ),
                            SizedBox(
                              width: Get.width * 0.02,
                            ),
                            Text("Unlimited packages",
                                style: TextStyle(fontSize: Get.width * 0.04)),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.check_circle,
                              color: MyColors.blue,
                            ),
                            SizedBox(
                              width: Get.width * 0.02,
                            ),
                            Text("Unlimited packages",
                                style: TextStyle(fontSize: Get.width * 0.04)),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.check_circle,
                              color: MyColors.blue,
                            ),
                            SizedBox(
                              width: Get.width * 0.02,
                            ),
                            Text("Unlimited packages",
                                style: TextStyle(fontSize: Get.width * 0.04)),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.check_circle,
                              color: MyColors.blue,
                            ),
                            SizedBox(
                              width: Get.width * 0.02,
                            ),
                            Text("Unlimited packages",
                                style: TextStyle(fontSize: Get.width * 0.04)),
                          ],
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
                                Get.snackbar("gold subscription",
                                    "we will contact you soon to activate your account");
                                Future.delayed(const Duration(seconds: 1), () {
                                  Get.to(const LoginScreen());
                                });
                              },
                              child: Text(
                                'subscription',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: Get.width * 0.04),
                              )),
                        ),
                      ])),
            ),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     Text(
            //       "Are you a user ?",
            //       style: TextStyle(fontSize: Get.width * 0.04),
            //     ),
            //     TextButton(
            //         onPressed: () {
            //           Get.to(const LoginScreen());
            //         },
            //         child: Text(
            //           "login",
            //           style: TextStyle(
            //               color: MyColors.darkOrange,
            //               fontSize: Get.width * 0.04),
            //         ))
            //   ],
            // )
          ],
        ),
      ),
    ])));
  }
}
