// 이전 와인에 대한 정보를 나타내는 모델 클래스
import 'package:flutter_practice/Model/wine.dart';
import '../Repository/wine_repository.dart';

class RecordedWine {
  int? id;
  DateTime? favoritedDate;

  RecordedWine({this.id, this.wine, this.favoritedDate});

  }


}