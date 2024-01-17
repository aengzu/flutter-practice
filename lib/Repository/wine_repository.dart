
// SQLite 데이터베이스와의 상호작용을 담당하는 클래스.
// 예를 들어 특정 카테고리에 속하는 와인을 검색하는 메소드를 제공하는 클래스


import '../Model/wine.dart';

// SQLite 데이터베이스에서 특정 카테고리에 맞는 와인 리스트를 검색하여 반환 기능
class WineRepository {
  getWinesByCategory(String category) {}
 // Future<List<Wine>> getWinesByCategory(String category) async {
 // }

}

//  찜한 와인과 관련된 데이터베이스 작업을 담당합니다. 찜 목록을 조회하거나,
//  새로운 와인을 찜 목록에 추가하고, 찜 목록에서 와인을 제거하는 기능을 포함

class FavoritedWineRepository {
  getFavoritedWines() {}
  /* Future<List<FavoritedWine>> getFavoritedWines() async {
    // 찜한 와인 목록을 데이터베이스에서 가져오는 로직
  }

  Future<void> addWineToFavorites(Wine wine) async {
    // 와인을 찜 목록에 추가하는 로직
  }

  Future<void> removeWineFromFavorites(int wineId) async {
    // 찜 목록에서 와인을 제거하는 로직
  }
*/
// 기타 찜 관련 메소드
}