import 'package:delivery_resturent/helper/colors.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class ContactusScreen extends StatefulWidget {
  const ContactusScreen({super.key});

  @override
  State<ContactusScreen> createState() => _ContactusScreenState();
}

class _ContactusScreenState extends State<ContactusScreen> {
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
              padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 15),
              child: Column(
                children: [

                  Row(children: [
                    IconButton(onPressed: () {
                      Get.back();
                    }, icon: Icon(Icons.navigate_before,color: MyColors.blue,))
                  ],),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Contact Us",style: TextStyle(
                          fontSize: Get.width*0.055,
                          fontWeight: FontWeight.w700,
                          color: MyColors.blue
                      ),)
                    ],),
                  const Gap(25),
                  Container(

                    width: Get.width*0.8,
                    height: Get.height * 0.15,
                    decoration: BoxDecoration(

                        color: Colors.white30,
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 2,
                              spreadRadius: 2,
                              offset: Offset(0, 2),
                              color: Colors.black12)
                        ],
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("assets/images/logo_deal.png"))


                    ),

                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15.0),
                    child: Text(
                      "The platform that brings together all the needs of individuals and companies, delivering to all parts of the Hashemite Kingdom of Jordan at the lowest prices and in the fastest time"
                      ,textAlign: TextAlign.center, style: TextStyle(fontSize: Get.width * 0.04),
                    ),
                  ),

                  Row(
                    children: [
                      Expanded(
                          child: Divider(thickness: 2,)
                      ),
                      CircleAvatar(
                        radius: 20,
                        backgroundColor:
                        MyColors.blue
                        ,
                        child: Icon(Icons.location_pin, color: Colors.white,),
                      ),
                      Expanded(
                          child: Divider(thickness: 2,)
                      ),
                    ],
                  ),
                  Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15.0),
                      child: Text("Al Shahid St,Amman-Jordan", textAlign: TextAlign.center,)

                  ),
                  Row(
                    children: [
                      Expanded(
                          child: Divider(thickness: 2,)
                      ),
                      CircleAvatar(
                        radius: 20,
                        backgroundColor:
                        MyColors.blue
                        ,
                        child: Icon(Icons.call, color: Colors.white,),
                      ),
                      Expanded(
                          child: Divider(thickness: 2,)
                      ),
                    ],
                  ),
                  Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15.0),
                      child: Text("+96265506565")
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: Divider(thickness: 2,)
                      ),
                      CircleAvatar(
                        radius: 20,
                        backgroundColor:  MyColors.blue
                        ,
                        child: Icon(Icons.email, color: Colors.white,),
                      ),
                      Expanded(
                          child: Divider(thickness: 2,)
                      ),
                    ],
                  ),
                  Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15.0),
                      child: Text("info@dealargi.com")
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: Divider(thickness: 2,)
                      ),
                      CircleAvatar(
                        radius: 20,
                        backgroundColor:  MyColors.blue
                        ,
                        child: Icon(Icons.support_agent, color: Colors.white,),
                      ),
                      Expanded(
                          child: Divider(thickness: 2,)
                      ),
                    ],
                  ),
                  Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15.0),
                      child: Text("0798242524")
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
