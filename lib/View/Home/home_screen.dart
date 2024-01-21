import 'package:flutter/material.dart';
import 'package:flutter_practice/Resources/images/image_assets.dart';
import 'package:get/get.dart';

import '../../ViewModel/Controllers/home_ controller.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
            // Dionysos, 일러스트, 와인 고르러 가기 버튼 구성
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  SizedBox(height: 40),
                  Row(
                    // 아이콘, Dinoysos
                    children: [
                      Image.asset(ImageAssets.main, width: 50, height: 50,),
                      Text('Dionysos.',
                        style: TextStyle(
                            fontSize: 25, color: Color.fromRGBO(180, 67, 133, 1), fontWeight: FontWeight.w600
                        )
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  // 일러스트
                  Image.asset(ImageAssets.illustration, width: 330, height: 330),
                  SizedBox(height: 20),
                  // 와인 고르러 가기 버튼
                  Container(color: Color.fromRGBO(180, 67, 133, 1), height: 60,),
                  SizedBox(height: 20),
                ],
              ),
            ),
            Container(
              // 여백
              decoration: BoxDecoration(border: Border.all(color: Colors.black12.withOpacity(0.2))),
              height: 13,
            ),
            Padding(
              // 오늘의 추천 조합, 추천해주는 이미지들
              padding: EdgeInsets.symmetric(horizontal: 35),
              child: Column(
                children: [
                  SizedBox(height: 20),
                  Container(
                    // 오늘의 추천 조합
                    alignment: Alignment.centerLeft,
                    child: Text('오늘의 추천 조합',
                      style: TextStyle(fontSize: 17, fontWeight: FontWeight.w900, color: Color.fromRGBO(116, 45, 90, 1))),
                  ),
                  SizedBox(height: 20),
                  Row(
                    // 추천해주는 이미지들.
                    children: [
                      Image.asset(ImageAssets.one, width: 105, height: 105),
                      SizedBox(width: 10),
                      Image.asset(ImageAssets.one, width: 105, height: 105),
                      SizedBox(width: 10),
                      Image.asset(ImageAssets.one, width: 105, height: 105),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Color.fromRGBO(180, 67, 133, 1),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.wine_bar_sharp),
            label: '모든 와인',

          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: '홈',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: '내 기록',
          ),
        ],
      ),
    );
  }
}
