// 마이페이지에서 찜한 와인을 보려고 할 때
// 필요한 데이터를 WineRepository 또는 FavoritedWineRepository에서 가져옴
// 데이터를 마이페이지 뷰에 적절하게 표시하기 위해 모델과 리포지토리의 데이터를 처리하는 역할

import 'package:get/get.dart';

import '../../Model/favorited_wine.dart';
import '../../Repository/favoritedwine_repository.dart';



// 아래 코드는 더미 코드로 변경하여 사용하면 됩니다.

class MyPageViewModel extends GetxController {
  final FavoritedWineRepository favoritedWineRepository;

  var favoritedWines = <FavoritedWine>[].obs; // 찜한 와인 목록을 관찰 가능한 상태로 만듦

  MyPageViewModel({required this.favoritedWineRepository});

  @override
  void onInit() {
    super.onInit();
    loadFavoritedWines(); // ViewModel 초기화 시 찜한 와인 목록 로드
  }

  void loadFavoritedWines() async {
    var wines = await favoritedWineRepository.getFavoritedWines();
    favoritedWines.value = wines; // 가져온 찜한 와인 목록으로 업데이트
  }

// 기타 ViewModel 로직
}
