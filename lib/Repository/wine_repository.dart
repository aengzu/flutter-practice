import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
// SQLite 데이터베이스와의 상호작용을 담당하는 클래스.
// 예를 들어 특정 카테고리에 속하는 와인을 검색하는 메소드를 제공하는 클래스
// + 와인 랜덤 추천 메소드 제공

// SQLite 데이터베이스에서 특정 카테고리에 맞는 와인 리스트를 검색하여 반환 기랜
class WineRepository {

  //와인 모델
  int? id;
  String? name;
  String? mood;
  String? taste; 
  String? snack;
  int? alcohol;
  double? price;
 

  Future<void> processUserData(List<Map<String, dynamic>> wineData) async {
    // 사용자의 선택값을 AI모델의 패키지로 보내서 비교.
    //어떤 속성으로 데이터를 불러올지는 추후에 조정 필요.
    // 여기에서 AI 모델 초기화 및 작업을 수행
    for (var wine in wineData) {
       id=wine['id'];
       name=wine['name'];
      category=wine['category'];
      price=wine['price'];
      alcohol=wine['alcohol'];

      // 여기에서 AI 모델에 데이터를 전달하고 결과를 얻습니다.
      // 결과를 사용하여 필요한 작업을 수행합니다.
      // 더미 메소드입니다.
      processAIResult(category!);
    }
  }

  void processAIResult(String category) {
    // 여기에서 AI 모델의 결과를 활용하여 작업 수행
    print('사용자가 선택한 카테고리에 어울리는 안주는  $category');
  }

}


