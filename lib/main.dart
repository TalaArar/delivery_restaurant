import 'package:delivery_resturent/helper/colors.dart';
import 'package:delivery_resturent/view/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Delivery restaurant',
      theme: ThemeData(
        primaryColor: MyColors.darkOrange,
        useMaterial3: false,
      ),
      home: const SplashScreen(),
    );
  }
}
