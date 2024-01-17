// 와인 카테고리 별로 보려고 할 때
// 필요한 데이터를 데이터 계층(Repository) 에서 가져오는 역할
import 'package:get/get.dart';
import '../../Model/wine.dart';
import '../../Repository/wine_repository.dart';


// 아래 코드는 더미 코드로 변경하여 사용하면 됩니다.

class SearchViewModel extends GetxController {
  final WineRepository wineRepository;

  var wines = <Wine>[].obs; // 검색된 와인 목록을 관찰 가능한 상태로 만듦

  SearchViewModel({required this.wineRepository});

  void searchWinesByCategory(String category) async {
    var categoryWines = await wineRepository.getWinesByCategory(category);
    wines.value = categoryWines; // 검색된 와인 목록으로 업데이트
  }

// 기타 ViewModel 로직
}
