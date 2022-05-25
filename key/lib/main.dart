import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

// 배열을 화면에 나열할 때는 항상 각각의 위젯은 key만 가지면 된다
class _MyAppState extends State<MyApp> {
  List<Widget> boxs = [MyBox(Colors.red), MyBox(Colors.blue)];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          floatingActionButton: FloatingActionButton(
            child: Icon(Icons.cloud_download),
            onPressed: () {
              setState(() {
                boxs.insert(1, boxs.removeAt(0)); // swap
                // Widget b = boxs.removeAt(0);
                // boxs.add(b);
              });
            },
          ),
          body: Row(
            children: boxs,
          ),
        ),
      ),
    );
  }
}

// new 될때 마다 생성자를 통해 들어오는 값이 mColor에 담김. 상태를 가짐 (다른 상태)
class MyBox extends StatefulWidget {
  // 자식의 생성자가 실행될 때 자식의 생성자의 스택보다 부모의 생성자가 먼저 실행
  // MyBox(Key key) : super(key: key);
  Color mColor;

  MyBox(this.mColor);

  @override
  State<MyBox> createState() => _MyBoxState();
}

class _MyBoxState extends State<MyBox> {
  // Color mColor = Colors.primaries[Random().nextInt(Colors.primaries.length)];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: widget.mColor,
      height: 150,
      width: 150,
    );
  }
}
