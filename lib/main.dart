import 'package:flutter/material.dart';
import 'package:food_order_app/view/page/history.dart';
import 'package:food_order_app/view/page/home.dart';
import 'package:food_order_app/view/page/search.dart';
import 'package:food_order_app/view/page/splash_screen.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Zie Order App',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: const SplashScreen(),
    );
  }
}
