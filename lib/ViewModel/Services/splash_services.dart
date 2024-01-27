import 'package:get/get.dart';
import '../Controllers/home_ controller.dart';
import 'package:tflite_flutter/tflite_flutter.dart';


class SplashServices {

  void runModel(List<String> input) {
    // 모델 초기화
    TFLiteModelInterpreter.runModelOnBinary(_convertInputToBinary(input));
    // 결과 처리
  }

// 입력값을 이진 데이터로 변환하는 함수
  Uint8List _convertInputToBinary(String input) {
    // 예시: 텍스트를 바이트로 변환
    return Uint8List.fromList(utf8.encode(input));
  }

  static Future<void> getdata() async {
    {
      final controller = Get.put(HomeController());
      await controller.getData(); // 데이터 로딩을 대기

    }
  }
}