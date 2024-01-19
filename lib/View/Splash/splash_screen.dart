
// 스플래시 스크린 : 앱 구동 시 3초간 보이는 로고 화면
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_practice/View/Home/home_screen.dart';

import '../../Resources/images/image_assets.dart';
import 'package:get/get.dart';

import '../../ViewModel/Services/splash_services.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => const HomeScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Image.asset(ImageAssets.logo, height: 100, width: 100),
        )
    );
  }
}
