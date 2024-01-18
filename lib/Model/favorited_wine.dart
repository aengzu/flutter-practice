// 찜한 와인에 대한 정보를 나타내는 모델 클래스
import 'package:flutter_practice/Model/wine.dart';

class FavoritedWine {
  int? id;
  Wine? wine;
  DateTime? favoritedDate;

  FavoritedWine({this.id, this.wine, this.favoritedDate});
}