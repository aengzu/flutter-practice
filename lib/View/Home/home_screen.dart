
import 'package:flutter/material.dart';



// 홈 화면 스크린 구현을 위한 파일

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: const Scaffold(
            backgroundColor: Colors.white,
            body: Center(
              child: Text('This is home screen',
                      style: TextStyle(fontSize:30),),
            )
        )

    );
  }
}
