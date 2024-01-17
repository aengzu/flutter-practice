// Wine 데이터와 관련된 구조를 정의하기 위한 파일로
// 데이터베이스의 테이블 구조를 반영하는 클래스나 데이터 객체를 의미함

// 아래 코드는 더미 코드로 실제 구현 시 변경하여 사용하면 됩니다.
class Wine {
  int? id;
  String? name;
  String? category;
double? price;

Wine({this.id, this.name, this.category, this.price});

// 데이터베이스로부터 데이터를 읽어오거나,
// 데이터베이스에 데이터를 쓸 때 사용할 수 있는 메소드들
}

// 찜한 와인에 대한 정보를 나타내는 모델 클래스
class FavoritedWine {
  int? id;
  Wine? wine;
  DateTime? favoritedDate;

  FavoritedWine({this.id, this.wine, this.favoritedDate});
}