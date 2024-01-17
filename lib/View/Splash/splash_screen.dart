
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_practice/View/Home/home_screen.dart';

import '../../Resources/images/image_assets.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    //Future.delayes : 특정 작업을 지연시킨 후에 실행하고자 할 때 사용
    Future.delayed(const Duration(seconds: 4), () {
      Get.offAll(() => const HomeScreen()); // GetX를 사용하여 화면 전환
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Scaffold(
            backgroundColor: Colors.white,
            body: Center(
              child: Image.asset(ImageAssets.logo, height: 100, width: 100),
            )
        )

    );
  }
}
