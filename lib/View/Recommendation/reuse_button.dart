import 'package:flutter/material.dart';

class Button extends StatelessWidget {

  final String text;
  final Color bgColor;
  final Color bdColor;
  final Color txColor;

  const Button({
    super.key,
    required this.text,
    required this.bgColor,
    required this.bdColor,
    required this.txColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 266.6,
      height: 59,
      // 버튼
      decoration: BoxDecoration(//Color.fromRGBO(251, 245, 249, 1.0)
          color: bgColor,
          borderRadius: BorderRadius.circular(45), border: Border.all(color: bdColor) //Color.fromRGBO(180, 67, 133, 1)
      ),
      child: Center(
        child: Text(text, style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: txColor), ),
      ),
    );
  }
}
