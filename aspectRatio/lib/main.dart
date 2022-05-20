import 'package:flutter/material.dart';

void main() {
  runApp(AspectRatioEx());
}

class AspectRatioEx extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Container(
            color: Colors.blue,
            width: 400,
            height: 800,
            alignment: Alignment.center,
            child: AspectRatio(
              aspectRatio: 1/0.5,
              child: Container(
                // 크기를 지정하지 않으면 부모의 크기만큼 확장된다
                // 크기가 있어도 위치를 지정하지 않으면 부모의 크기만큼 확장
                color: Colors.red,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

