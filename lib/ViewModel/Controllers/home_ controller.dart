
// 홈화면(HomeScreen) 의 back단으로 필요한 데이터(오늘의 와인 추천)와 홈 화면을 이어주는 역할
// 홈 화면으로 오늘의 와인 추천 데이터를 전송하고, 유저가 어떤 와인을 누른다면 상세 페이지 창으로 이동시키는 역할

// GetXController 를 상속받아 상태 관리를 수행한다.
import 'package:flutter_practice/View/Home/home_screen.dart';
import 'package:get/get.dart';

import '../../Model/wine.dart';

class HomeController extends GetxController {
  // 와인에 대한 데이터 모델인데 필요없을수도>>?
  Rx<Wine?> model = Rx<Wine?>(null);

  Future<void> getData() async {
    // TODO: 데이터 로딩 로직
    // 예: 로컬 데이터베이스 조회

  }
}