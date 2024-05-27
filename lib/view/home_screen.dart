import 'package:delivery_resturent/helper/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
              padding:
                  const EdgeInsets.symmetric(horizontal: 15.0, vertical: 30),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                        radius: 25,
                        backgroundColor: MyColors.yellow,
                      ),
                      const Row(
                        children: [
                          Icon(
                            Icons.location_pin,
                            color: Colors.black45,
                          ),
                          Text("Jordan-Ammman")
                        ],
                      ),
                      Row(
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.notifications,
                                  color: Colors.black45)),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: Get.height * 0.02,
                  ),
                  Row(
                    children: [
                      Text(
                        "Good Evening, Food Delivery",
                        style: TextStyle(
                            fontSize: Get.width * 0.05,
                            color: Colors.black54,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        suffixIcon: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: CircleAvatar(
                            backgroundColor: MyColors.yellow,
                            radius: 10,
                            child: const Icon(
                              Icons.filter_alt_rounded,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        prefixIcon: const Icon(Icons.search),
                        filled: true,
                        fillColor: Colors.white.withOpacity(0.7),
                        enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.black12),
                            borderRadius: BorderRadius.circular(30)),
                        hintText: "search food",
                        hintStyle: const TextStyle(color: Colors.black26),
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 13),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        "Category",
                        style: TextStyle(
                            fontSize: Get.width * 0.05,
                            color: Colors.black54,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: Get.height * 0.02,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Container(
                          width: Get.width * 0.37,
                          height: Get.height * 0.25,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 3),
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                    blurRadius: 2,
                                    spreadRadius: 2,
                                    offset: const Offset(0, 2),
                                    color: Colors.grey.shade200)
                              ],
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.white),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: Get.width * 0.35,
                                height: Get.height * 0.12,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    image: const DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                            "assets/images/splash.jpg"))),
                              ),
                              Row(
                                children: [
                                  Text(
                                    "Fresh fruits",
                                    style:
                                        TextStyle(fontSize: Get.width * 0.035),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    "fruits",
                                    style:
                                        TextStyle(fontSize: Get.width * 0.03),
                                  )
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text("25 JD"),
                                  CircleAvatar(
                                    radius: 15,
                                    backgroundColor: MyColors.yellow,
                                    child: const Icon(
                                      Icons.add,
                                      color: Colors.white,
                                      size: 15,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          width: Get.width * 0.37,
                          height: Get.height * 0.25,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 3),
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                    blurRadius: 2,
                                    spreadRadius: 2,
                                    offset: const Offset(0, 2),
                                    color: Colors.grey.shade200)
                              ],
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.white),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: Get.width * 0.35,
                                height: Get.height * 0.12,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    image: const DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                            "assets/images/splash.jpg"))),
                              ),
                              Row(
                                children: [
                                  Text(
                                    "Fresh fruits",
                                    style:
                                        TextStyle(fontSize: Get.width * 0.035),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    "fruits",
                                    style:
                                        TextStyle(fontSize: Get.width * 0.03),
                                  )
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text("25 JD"),
                                  CircleAvatar(
                                    radius: 15,
                                    backgroundColor: MyColors.yellow,
                                    child: const Icon(
                                      Icons.add,
                                      color: Colors.white,
                                      size: 15,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15),
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
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15.0),
                    child: Container(
                      width: Get.width,
                      height: Get.height * 0.13,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 2,
                              spreadRadius: 2,
                              offset: const Offset(0, 2),
                              color: Colors.grey.shade200
                            )
                          ],
                          borderRadius: BorderRadius.circular(15)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: Get.width * 0.35,
                            height: Get.height * 0.12,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: const DecorationImage(
                                    fit: BoxFit.cover,
                                    image:
                                        AssetImage("assets/images/splash.jpg"))),
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
                                      color: MyColors.yellow),
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
                            width: Get.width * 0.07,
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: Get.width,
                    height: Get.height * 0.13,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 2,
                              spreadRadius: 2,
                              offset: const Offset(0, 2),
                              color: Colors.grey.shade200
                          )
                        ],
                        borderRadius: BorderRadius.circular(15)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: Get.width * 0.35,
                          height: Get.height * 0.12,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: const DecorationImage(
                                  fit: BoxFit.cover,
                                  image:
                                  AssetImage("assets/images/splash.jpg"))),
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
                                    color: MyColors.yellow),
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
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
