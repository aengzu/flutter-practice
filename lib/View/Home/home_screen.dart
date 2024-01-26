import 'package:flutter/material.dart';
import 'package:flutter_practice/Resources/images/image_assets.dart';
import 'package:flutter_practice/View/Home/Components/todayswine_card.dart';
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
                  SizedBox(height: 15),
                  Padding(
                    // 와인 고르러 가기 버튼d
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: TextButton(
                      child: Container(
                        width: 320,
                        height: 50,
                        // 4~6만원대 버튼
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(
                                255, 255, 255, 1.0),
                            borderRadius: BorderRadius.circular(45), border: Border.all(color: Color.fromRGBO(180, 67, 133, 1))
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 85,
                            ),
                            Container(
                              child: Text('와인 고르러 가기', style: TextStyle(fontSize: 18, color: Color.fromRGBO(117, 45, 91, 1), fontWeight: FontWeight.w600),),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Container(
                              child: Icon(Icons.keyboard_double_arrow_right, color: Color.fromRGBO(117, 45, 91, 1), size: 32),
                            ),
                          ],
                        ),
                      ),
                      onPressed: (){},
                    ),
                  ),
                  SizedBox(height: 20),
                ],
              ),
            ),
            Container(
              // 여백
              decoration: BoxDecoration(border: Border.all(color: Colors.black12.withOpacity(0.2))),
              height: 13,
            ),
            Flexible(
                child: Material(
                  color: Colors.transparent,
                  child: TodayWineCard(),
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
