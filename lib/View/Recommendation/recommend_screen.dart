// 추천 알고리즘을 위한 스크린 -> 화면이 여러개라 파일 더 만들어야할수도>>?
import 'package:flutter/material.dart';
import 'package:flutter_practice/Resources/images/image_assets.dart';
import 'package:get/get.dart';

void main() {
  runApp(
      MaterialApp(home: RecommendSecondScreen()), //const RecommendScreen()
  );
}

class RecommendScreen extends StatelessWidget {
  const RecommendScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            Container(
              // 메인 로고
              alignment: Alignment.center,
                child: Image.asset(ImageAssets.main, width: 50, height: 50, )
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              // 진행상태 바
              children: [
                Flexible(
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Color.fromRGBO(180, 67, 133, 1)
                        )
                    ),
                    height: 3,
                  ),
                  flex: 1,
                ),
                Flexible(
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.black.withOpacity(1)
                        )
                    ),
                    height: 3,
                  ),
                  flex: 5,
                )
              ],
            ),
            SizedBox(
              height: 50,
            ),
            SizedBox(
              // 나는 와인
              child: Text('나는 와인', style: TextStyle(fontSize: 25, fontWeight: FontWeight.w900))
            ),
            SizedBox(
              height: 5,
            ),
            SizedBox(
                child: Text('(첫 응답에만 나와요!)', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500))
            ),
            SizedBox(
              height: 85,
            ),
            Container(
              // 위치 체크용 '초심자' 버튼 추가 예정
              color: Colors.blue, width: double.infinity, height: 60,
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              // 위치 체크용 '베테랑' 버튼 추가 예정
              color: Colors.blue, width: double.infinity, height: 60,
            ),
            SizedBox(
              height: 200,
            ),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 110),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // 버튼 추가 예정
                  Text('이전'),
                  Text('다음'),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class RecommendSecondScreen extends StatelessWidget {
  const RecommendSecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            Container(
              // 메인 로고
                alignment: Alignment.center,
                child: Image.asset(ImageAssets.main, width: 50, height: 50, )
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              // 진행상태 바
              children: [
                Flexible(
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Color.fromRGBO(180, 67, 133, 1)
                        )
                    ),
                    height: 3,
                  ),
                  flex: 2,
                ),
                Flexible(
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.black.withOpacity(1)
                        )
                    ),
                    height: 3,
                  ),
                  flex: 4,
                )
              ],
            ),
            SizedBox(
              height: 40,
            ),
            SizedBox(
              // 오늘의
                child: Text('오늘의', style: TextStyle(fontSize: 25, fontWeight: FontWeight.w900))
            ),
            SizedBox(
              height: 1,
            ),
            SizedBox(
                child: Text('술자리 분위기는?', style: TextStyle(fontSize: 25, fontWeight: FontWeight.w900))
            ),
            SizedBox(
              height: 45,
            ),
            Container(
              // 위치 체크용 '초심자' 버튼 추가 예정
              color: Colors.blue, width: double.infinity, height: 60,
            ),
            SizedBox(
              height: 8,
            ),
            Container(
              // 위치 체크용 '베테랑' 버튼 추가 예정
              color: Colors.blue, width: double.infinity, height: 60,
            ),
            SizedBox(
              height: 8,
            ),
            Container(
              // 위치 체크용 '베테랑' 버튼 추가 예정
              color: Colors.blue, width: double.infinity, height: 60,
            ),
            SizedBox(
              height: 8,
            ),
            Container(
              // 위치 체크용 '베테랑' 버튼 추가 예정
              color: Colors.blue, width: double.infinity, height: 60,
            ),
            SizedBox(
              height: 8,
            ),
            Container(
              // 위치 체크용 '베테랑' 버튼 추가 예정
              color: Colors.blue, width: double.infinity, height: 60,
            ),
            SizedBox(
              height: 80,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 110),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // 버튼 추가 예정
                  Text('이전'),
                  Text('다음'),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}