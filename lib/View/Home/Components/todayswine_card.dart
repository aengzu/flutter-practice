import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../Resources/images/image_assets.dart';
import '../../../ViewModel/Controllers/home_ controller.dart';

class TodayWineCard extends StatelessWidget {
  const TodayWineCard({super.key});

  @override
  Widget build(BuildContext context) {

    final controller = Get.put(HomeController());

    return SizedBox(
        child: Padding(
      // 오늘의 추천 조합, 추천해주는 이미지들
          padding: EdgeInsets.symmetric(horizontal: 35),
          child: Column(
        children: [
          SizedBox(height: 20),
          Container(
            // 오늘의 추천 조합
            alignment: Alignment.centerLeft,
            child: Text('오늘의 추천 조합',
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.w900, color: Color.fromRGBO(116, 45, 90, 1))),
          ),
          SizedBox(height: 20),
          Row(
            // 추천해주는 이미지들.
            // controller 로 호출해와야함.
            children: [
              Image.asset(ImageAssets.one, width: 105, height: 105),
              SizedBox(width: 10),
              Image.asset(ImageAssets.one, width: 105, height: 105),
              SizedBox(width: 10),
              Image.asset(ImageAssets.one, width: 105, height: 105),
            ],
          )
        ],
      ),
    ),
        );
  }
}
