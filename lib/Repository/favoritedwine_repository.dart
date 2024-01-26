import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

import '../Model/wine.dart';
//  찜한 와인과 관련된 데이터베이스 작업을 담당합니다. 찜 목록을 조회하거나,
//  새로운 와인을 찜 목록에 추가하고, 찜 목록에서 와인을 제거하는 기능을 포함

class FavoritedWineRepository {

 var _favoriteWineDB;
 int? id;
 Wine? wine;
 DateTime? favoritedDate;

 Future<void> _initDatabase() async {
  //데이터베이스 경로 설정
  String path=join(await getDatabasesPath(), 'favoriteWine.db');

  //데이터베이스 열기
   _favoriteWineDB=await openDatabase(path, version:1,
  onCreate: (Database db, int version) async{
   //테이블 생성 쿼리
  await db.execute(
   'CREATE TABLE users(id INTEGER PRIMARY KEY, wine Text, Datetime favoritedDate)'
   );
  });
 }
 getFavoritedWines() {}
 Future<List<Map<String, dynamic>>> _getFavoritedWines() async {
    // 찜한 와인 목록을 데이터베이스에서 가져오는 로직
  return await _favoriteWineDB.query('wine_name');
  //검색창에서 텍스트로 검색한 와인 이름을 가져오기

  }

  Future<void> addWineToFavorites(Wine wine) async {
    // 와인을 찜 목록에 추가하는 로직
   await _favoriteWineDB.insert('', {'id': id, 'wine': wine, 'DateTime': favoritedDate});
  }

  Future<void> removeWineFromFavorites(int id) async {
    // 찜 목록에서 와인을 제거하는 로직
   await _favoriteWineDB.delete('', where: 'id=?', whereArgs:[id]);

  }

// 기타 찜 관련 메소드
}