// 추천 알고리즘을 위한 스크린 -> 화면이 여러개라 파일 더 만들어야할수도>>?
import 'package:flutter/material.dart';
import 'package:flutter_practice/Resources/images/image_assets.dart';
import 'package:flutter_practice/View/Recommendation/reuse_button.dart';
import 'package:get/get.dart';

void main() {
  runApp(
    MaterialApp(home: RecommendSixthScreen()), //const RecommendScreen()
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
              height: 60,
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
              height: 90,
            ),
            TextButton(
              // 초심자 버튼
              child: Button(text: '초심자', bgColor:
              Color.fromRGBO(251, 245, 249, 1.0), bdColor:
              Color.fromRGBO(180, 67, 133, 1), txColor:
              Color.fromRGBO(0, 0, 0, 1)),
              onPressed: (){},
            ),
            SizedBox(
              height: 30,
            ),
            TextButton(
              // 베테랑 버튼
              child: Button(text: '베테랑', bgColor:
              Color.fromRGBO(251, 245, 249, 1.0), bdColor:
              Color.fromRGBO(180, 67, 133, 1), txColor:
              Color.fromRGBO(0, 0, 0, 1)),
              onPressed: (){},
            ),
            SizedBox(
              height: 200,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 48),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 35,
                  ),
                  TextButton(
                    child: Container(
                      // 다음 버튼
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(
                              255, 255, 255, 1.0),
                          borderRadius: BorderRadius.circular(45), border: Border.all(color: Color.fromRGBO(190, 190, 190, 1))
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 12, horizontal: 38),
                        child: Text('다음', style: TextStyle(fontSize: 20, color: Colors.black),),
                      ),
                    ),
                    onPressed: (){},
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
            TextButton(
              child: Button(text: '가족적인', bgColor:
              Color.fromRGBO(251, 245, 249, 1.0), bdColor:
              Color.fromRGBO(180, 67, 133, 1), txColor:
              Color.fromRGBO(0, 0, 0, 1)),
              onPressed: (){},
            ),
            TextButton(
              child: Button(text: '감성에 젖은', bgColor:
              Color.fromRGBO(251, 245, 249, 1.0), bdColor:
              Color.fromRGBO(180, 67, 133, 1), txColor:
              Color.fromRGBO(0, 0, 0, 1)),
              onPressed: (){},
            ),
            TextButton(
              child: Button(text: '시끌벅적한', bgColor:
              Color.fromRGBO(251, 245, 249, 1.0), bdColor:
              Color.fromRGBO(180, 67, 133, 1), txColor:
              Color.fromRGBO(0, 0, 0, 1)),
              onPressed: (){},
            ),
            TextButton(
              child: Button(text: '수다스러운', bgColor:
              Color.fromRGBO(251, 245, 249, 1.0), bdColor:
              Color.fromRGBO(180, 67, 133, 1), txColor:
              Color.fromRGBO(0, 0, 0, 1)),
              onPressed: (){},
            ),
            TextButton(
              child: Button(text: '혼자만의', bgColor:
              Color.fromRGBO(251, 245, 249, 1.0), bdColor:
              Color.fromRGBO(180, 67, 133, 1), txColor:
              Color.fromRGBO(0, 0, 0, 1)),
              onPressed: (){},
            ),
            SizedBox(
              height: 80,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 48),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    child: Container(
                      // 이전 버튼
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(
                              255, 255, 255, 1.0),
                          borderRadius: BorderRadius.circular(45), border: Border.all(color: Color.fromRGBO(190, 190, 190, 1))
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 12, horizontal: 38),
                        child: Text('이전', style: TextStyle(fontSize: 20, color: Colors.black),),
                      ),
                    ),
                    onPressed: (){},
                  ),
                  SizedBox(
                    width: 35,
                  ),
                  TextButton(
                    child: Container(
                      // 다음 버튼
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(
                              255, 255, 255, 1.0),
                          borderRadius: BorderRadius.circular(45), border: Border.all(color: Color.fromRGBO(190, 190, 190, 1))
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 12, horizontal: 38),
                        child: Text('다음', style: TextStyle(fontSize: 20, color: Colors.black),),
                      ),
                    ),
                    onPressed: (){},
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

class RecommendThirdScreen extends StatelessWidget {
  const RecommendThirdScreen({super.key});

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
                  flex: 3,
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
                  flex: 3,
                )
              ],
            ),
            SizedBox(
              height: 40,
            ),
            SizedBox(
              // 어떤 맛의 와인을
                child: Text('어떤맛의 와인을', style: TextStyle(fontSize: 25, fontWeight: FontWeight.w900))
            ),
            SizedBox(
              height: 1,
            ),
            SizedBox(
                child: Text('원하나요?', style: TextStyle(fontSize: 25, fontWeight: FontWeight.w900))
            ),
            SizedBox(
              height: 45,
            ),
            TextButton(
              child: Button(text: '상큼한(산미가 강한)', bgColor:
              Color.fromRGBO(251, 245, 249, 1.0), bdColor:
              Color.fromRGBO(180, 67, 133, 1), txColor:
              Color.fromRGBO(0, 0, 0, 1)),
              onPressed: (){},
            ),
            TextButton(
              child: Button(text: '달콤한', bgColor:
              Color.fromRGBO(251, 245, 249, 1.0), bdColor:
              Color.fromRGBO(180, 67, 133, 1), txColor:
              Color.fromRGBO(0, 0, 0, 1)),
              onPressed: (){},
            ),
            TextButton(
              child: Button(text: '진하고 무거운', bgColor:
              Color.fromRGBO(251, 245, 249, 1.0), bdColor:
              Color.fromRGBO(180, 67, 133, 1), txColor:
              Color.fromRGBO(0, 0, 0, 1)),
              onPressed: (){},
            ),
            TextButton(
              child: Button(text: '건조하고 가벼운', bgColor:
              Color.fromRGBO(251, 245, 249, 1.0), bdColor:
              Color.fromRGBO(180, 67, 133, 1), txColor:
              Color.fromRGBO(0, 0, 0, 1)),
              onPressed: (){},
            ),
            TextButton(
              child: Button(text: '향긋한', bgColor:
              Color.fromRGBO(251, 245, 249, 1.0), bdColor:
              Color.fromRGBO(180, 67, 133, 1), txColor:
              Color.fromRGBO(0, 0, 0, 1)),
              onPressed: (){},
            ),
            SizedBox(
              height: 80,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 48),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    child: Container(
                      // 이전 버튼
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(
                              255, 255, 255, 1.0),
                          borderRadius: BorderRadius.circular(45), border: Border.all(color: Color.fromRGBO(190, 190, 190, 1))
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 12, horizontal: 38),
                        child: Text('이전', style: TextStyle(fontSize: 20, color: Colors.black),),
                      ),
                    ),
                    onPressed: (){},
                  ),
                  SizedBox(
                    width: 35,
                  ),
                  TextButton(
                    child: Container(
                      // 다음 버튼
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(
                              255, 255, 255, 1.0),
                          borderRadius: BorderRadius.circular(45), border: Border.all(color: Color.fromRGBO(190, 190, 190, 1))
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 12, horizontal: 38),
                        child: Text('다음', style: TextStyle(fontSize: 20, color: Colors.black),),
                      ),
                    ),
                    onPressed: (){},
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

class RecommendFourthScreen extends StatelessWidget {
  const RecommendFourthScreen({super.key});

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
                  flex: 4,
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
                  flex: 2,
                )
              ],
            ),
            SizedBox(
              height: 60,
            ),
            SizedBox(
              // 어떤 안주가 좋은가요?
                child: Text('어떤 안주가 좋은가요?', style: TextStyle(fontSize: 25, fontWeight: FontWeight.w900))
            ),
            SizedBox(
              height: 64,
            ),
            TextButton(
              child: Button(text: '육류', bgColor:
              Color.fromRGBO(251, 245, 249, 1.0), bdColor:
              Color.fromRGBO(180, 67, 133, 1), txColor:
              Color.fromRGBO(0, 0, 0, 1)),
              onPressed: (){},
            ),
            TextButton(
              child: Button(text: '해산물', bgColor:
              Color.fromRGBO(251, 245, 249, 1.0), bdColor:
              Color.fromRGBO(180, 67, 133, 1), txColor:
              Color.fromRGBO(0, 0, 0, 1)),
              onPressed: (){},
            ),
            TextButton(
              child: Button(text: '피자 or 치즈', bgColor:
              Color.fromRGBO(251, 245, 249, 1.0), bdColor:
              Color.fromRGBO(180, 67, 133, 1), txColor:
              Color.fromRGBO(0, 0, 0, 1)),
              onPressed: (){},
            ),
            TextButton(
              child: Button(text: '과일 or 샐러드', bgColor:
              Color.fromRGBO(251, 245, 249, 1.0), bdColor:
              Color.fromRGBO(180, 67, 133, 1), txColor:
              Color.fromRGBO(0, 0, 0, 1)),
              onPressed: (){},
            ),
            TextButton(
              child: Button(text: '디저트 or 스낵', bgColor:
              Color.fromRGBO(251, 245, 249, 1.0), bdColor:
              Color.fromRGBO(180, 67, 133, 1), txColor:
              Color.fromRGBO(0, 0, 0, 1)),
              onPressed: (){},
            ),
            SizedBox(
              height: 80,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 48),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    child: Container(
                      // 이전 버튼
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(
                              255, 255, 255, 1.0),
                          borderRadius: BorderRadius.circular(45), border: Border.all(color: Color.fromRGBO(190, 190, 190, 1))
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 12, horizontal: 38),
                        child: Text('이전', style: TextStyle(fontSize: 20, color: Colors.black),),
                      ),
                    ),
                    onPressed: (){},
                  ),
                  SizedBox(
                    width: 35,
                  ),
                  TextButton(
                    child: Container(
                      // 다음 버튼
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(
                              255, 255, 255, 1.0),
                          borderRadius: BorderRadius.circular(45), border: Border.all(color: Color.fromRGBO(190, 190, 190, 1))
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 12, horizontal: 38),
                        child: Text('다음', style: TextStyle(fontSize: 20, color: Colors.black),),
                      ),
                    ),
                    onPressed: (){},
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

class RecommendFifthScreen extends StatelessWidget {
  const RecommendFifthScreen({super.key});

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
                  flex: 5,
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
                  flex: 1,
                )
              ],
            ),
            SizedBox(
              height: 60,
            ),
            SizedBox(
              // 도수는 어느정도가 좋은가요?
                child: Text('도수는 어느정도가 좋은가요?', style: TextStyle(fontSize: 25, fontWeight: FontWeight.w900))
            ),
            SizedBox(
              height: 64,
            ),
            TextButton(
              child: Button(text: '4 ~ 6', bgColor:
              Color.fromRGBO(251, 245, 249, 1.0), bdColor:
              Color.fromRGBO(180, 67, 133, 1), txColor:
              Color.fromRGBO(0, 0, 0, 1)),
              onPressed: (){},
            ),
            TextButton(
              child: Button(text: '7 ~ 9', bgColor:
              Color.fromRGBO(251, 245, 249, 1.0), bdColor:
              Color.fromRGBO(180, 67, 133, 1), txColor:
              Color.fromRGBO(0, 0, 0, 1)),
              onPressed: (){},
            ),
            TextButton(
              child: Button(text: '10 ~ 12', bgColor:
              Color.fromRGBO(251, 245, 249, 1.0), bdColor:
              Color.fromRGBO(180, 67, 133, 1), txColor:
              Color.fromRGBO(0, 0, 0, 1)),
              onPressed: (){},
            ),
            TextButton(
              child: Button(text: '13 ~ 15', bgColor:
              Color.fromRGBO(251, 245, 249, 1.0), bdColor:
              Color.fromRGBO(180, 67, 133, 1), txColor:
              Color.fromRGBO(0, 0, 0, 1)),
              onPressed: (){},
            ),
            TextButton(
              child: Button(text: '16 ~ 20', bgColor:
              Color.fromRGBO(251, 245, 249, 1.0), bdColor:
              Color.fromRGBO(180, 67, 133, 1), txColor:
              Color.fromRGBO(0, 0, 0, 1)),
              onPressed: (){},
            ),
            SizedBox(
              height: 80,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 48),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    child: Container(
                      // 이전 버튼
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(
                              255, 255, 255, 1.0),
                          borderRadius: BorderRadius.circular(45), border: Border.all(color: Color.fromRGBO(190, 190, 190, 1))
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 12, horizontal: 38),
                        child: Text('이전', style: TextStyle(fontSize: 20, color: Colors.black),),
                      ),
                    ),
                    onPressed: (){},
                  ),
                  SizedBox(
                    width: 35,
                  ),
                  TextButton(
                    child: Container(
                      // 다음 버튼
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(
                              255, 255, 255, 1.0),
                          borderRadius: BorderRadius.circular(45), border: Border.all(color: Color.fromRGBO(190, 190, 190, 1))
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 12, horizontal: 38),
                        child: Text('다음', style: TextStyle(fontSize: 20, color: Colors.black),),
                      ),
                    ),
                    onPressed: (){},
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

class RecommendSixthScreen extends StatelessWidget {
  const RecommendSixthScreen({super.key});

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
                  flex: 6,
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
                  flex: 0,
                )
              ],
            ),
            SizedBox(
              height: 60,
            ),
            SizedBox(
              //가격은 어느정도가 좋은가요?
                child: Text('가격은 어느정도가 좋은가요?', style: TextStyle(fontSize: 25, fontWeight: FontWeight.w900))
            ),
            SizedBox(
              height: 64,
            ),
            TextButton(
              child: Button(text: '2만원 미만', bgColor:
              Color.fromRGBO(251, 245, 249, 1.0), bdColor:
              Color.fromRGBO(180, 67, 133, 1), txColor:
              Color.fromRGBO(0, 0, 0, 1)),
              onPressed: (){},
            ),
            TextButton(
              child: Button(text: '2 ~ 3만원대', bgColor:
              Color.fromRGBO(251, 245, 249, 1.0), bdColor:
              Color.fromRGBO(180, 67, 133, 1), txColor:
              Color.fromRGBO(0, 0, 0, 1)),
              onPressed: (){},
            ),
            TextButton(
              child: Button(text: '4 ~ 6만원대', bgColor:
              Color.fromRGBO(251, 245, 249, 1.0), bdColor:
              Color.fromRGBO(180, 67, 133, 1), txColor:
              Color.fromRGBO(0, 0, 0, 1)),
              onPressed: (){},
            ),
            TextButton(
              child: Button(text: '7 ~ 9만원대', bgColor:
              Color.fromRGBO(251, 245, 249, 1.0), bdColor:
              Color.fromRGBO(180, 67, 133, 1), txColor:
              Color.fromRGBO(0, 0, 0, 1)),
              onPressed: (){},
            ),
            TextButton(
              child: Button(text: '10만원 초과', bgColor:
              Color.fromRGBO(251, 245, 249, 1.0), bdColor:
              Color.fromRGBO(180, 67, 133, 1), txColor:
              Color.fromRGBO(0, 0, 0, 1)),
              onPressed: (){},
            ),
            SizedBox(
              height: 80,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 48),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    child: Container(
                      // 이전 버튼
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(
                              255, 255, 255, 1.0),
                          borderRadius: BorderRadius.circular(45), border: Border.all(color: Color.fromRGBO(190, 190, 190, 1))
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 12, horizontal: 38),
                        child: Text('이전', style: TextStyle(fontSize: 20, color: Colors.black),),
                      ),
                    ),
                    onPressed: (){},
                  ),
                  SizedBox(
                    width: 35,
                  ),
                  TextButton(
                    child: Container(
                      // 다음 버튼
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(
                              255, 255, 255, 1.0),
                          borderRadius: BorderRadius.circular(45), border: Border.all(color: Color.fromRGBO(190, 190, 190, 1))
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 12, horizontal: 38),
                        child: Text('다음', style: TextStyle(fontSize: 20, color: Colors.black),),
                      ),
                    ),
                    onPressed: (){},
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

class RecommendFinalScreen extends StatelessWidget {
  const RecommendFinalScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 300,
            ),
            Container(
              // 대표 아이콘
              child: Image.asset(ImageAssets.main, width: 100, height: 100,),
              alignment: Alignment.center,
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              // 분석중
              child: Text('분석중', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),),
            ),
            SizedBox(
              height: 50,
            ),
            SizedBox(
              // AI가 와인을 고르고 있어요
              child: Text('AI가 와인을 고르고 있어요 !', style: TextStyle(fontSize: 22, fontWeight: FontWeight.w900),),
            ),
          ],
        ),
      ),
    );
  }
}
