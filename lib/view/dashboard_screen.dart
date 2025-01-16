
import 'package:delivery_resturent/helper/colors.dart';
import 'package:delivery_resturent/view/home_screen.dart';
import 'package:delivery_resturent/view/product_screen.dart';
import 'package:delivery_resturent/view/settings_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'order_screen.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int _currentIndex = 0;
  final List<Widget> _screens = [
    const HomeScreen(),
    const OrderScreen(),
    const ProductScreen(),
    const SettingsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBody: true,
        body: _screens[_currentIndex],
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
                topRight: Radius.circular(30), topLeft: Radius.circular(30)),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.shade400, spreadRadius: 0, blurRadius: 5),
            ],
          ),
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(30.0),
              topRight: Radius.circular(30.0),
            ),
            child: BottomNavigationBar(
              elevation: 0.0,

              type: BottomNavigationBarType.shifting,
              selectedFontSize: Get.width * 0.045,
              unselectedFontSize: Get.width * 0.04,
              selectedItemColor: MyColors.blue,
              unselectedItemColor: Colors.grey,
              showSelectedLabels: true,
              showUnselectedLabels: true,
              selectedLabelStyle:
              TextStyle(fontSize: Get.width * 0.035, color: MyColors.blue),
              unselectedLabelStyle:
              TextStyle(fontSize: Get.width * 0.035, color: MyColors.blue),
              backgroundColor: Colors.white,
              currentIndex: _currentIndex,
              onTap: (index) {
                setState(() {
                  _currentIndex = index;
                });
              },
              items: [
                BottomNavigationBarItem(
                  icon: Padding(
                    padding: const EdgeInsets.symmetric(vertical:3),
                    child: Icon(Icons.home,
                        color: _currentIndex == 0
                            ? MyColors.blue
                            : MyColors.blue.withOpacity(0.2)),
                  ),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 3),
                      child: Icon(Icons.shopping_cart,
                        color: _currentIndex == 1
                            ? MyColors.blue
                            : MyColors.blue.withOpacity(0.2),)
                  ),
                  label: 'Orders',
                ),
                BottomNavigationBarItem(
                  icon: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 3),
                      child: Icon(
                        Icons.medical_services,
                        color: _currentIndex == 2
                            ? MyColors.blue
                            : MyColors.blue.withOpacity(0.2),)
                  ),
                  label: 'Products',
                ),
                BottomNavigationBarItem(
                  icon: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 3),
                      child: Icon(
                        Icons.settings,
                        color: _currentIndex == 3
                            ? MyColors.blue
                            : MyColors.blue.withOpacity(0.2),)
                  ),
                  label: 'Settings',
                ),
              ],
            ),
          ),
        ));
  }
}
