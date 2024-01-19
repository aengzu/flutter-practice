import 'package:get/get.dart';

import '../Controllers/home_ controller.dart';

class SplashServices {
  static Future<void> getdata() async {
    {
      final controller = Get.put(HomeController());
      await controller.getData(); // 데이터 로딩을 대기

    }
  }
}