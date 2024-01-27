// 추천 알고리즘 뷰 관련 컨트롤러
// 화면이 여러 개라 여러 파일 생성해야할 수 있어요 !
import 'package:get/get.dart';
import '../Controllers/home_ controller.dart';
import 'package:tflite_flutter/tflite_flutter.dart';
import '../Model/wine.dart';


class recommendation_controller {

    Wine? wine;
    List<String> list;

    //List로 넘길 때&asset에서 자료 불러올 때. 
    void setMood(String mood){
        wine[mood]=mood;
    }
    void setTaste(String taste){
        wine[taste]=taste;
    }
    void setSnack(String snack){
        wine[snack]=snack;
    }
    void setAlcohol(String alcohol){
        wine[alcohol]=alcohol;
    }
    void setPrice(Sring price){
        wine[price]=price;
    }

    //출력받을 때. 
    wine getWine(){
        
    }
    void makeList(){
        
        list.add(wine[mood]);
        list.add(wine[taste]);
        list.add(wine[snack]);
        list.add(wine[alcohol]);
        list.add(wine[price]);

        runModel(list);

    }

    static Future<void> getdata() async {
    {
      final controller = Get.put(HomeController());
      await controller.getData(); // 데이터 로딩을 대기
    }
  }
}