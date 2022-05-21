import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(AlignEx());
}

class AlignEx extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Container(
            // 자식의 크기에 맞춰진다. 정렬을 하면 크기로 인한 어려움이 없다.
            color: Colors.green,
            child: Align(
              child: Text("hi"),
              alignment: Alignment.topLeft,
            ),
          ),
        ),
      ),
    );
  }
}
