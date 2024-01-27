// 추천 알고리즘 뷰 관련 컨트롤러
// 화면이 여러 개라 여러 파일 생성해야할 수 있어요 !
import 'package:get/get.dart';
import '../Controllers/home_ controller.dart';
import 'package:tflite_flutter/tflite_flutter.dart';


class recommendation_controller {

  void runModel(List<String> input) {
    // 모델 초기화
    TFLiteModelInterpreter.runModelOnBinary(_convertInputToBinary(input));
    // 결과 처리

    //Model/wine_repository로 송신
    sendData(input);
  }

  List<String> sendData(List<String> input){
    return input;
  }

  static Future<void> getdata() async {
    {
      final controller = Get.put(HomeController());
      await controller.getData(); // 데이터 로딩을 대기

    }
  }
}