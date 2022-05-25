import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // 데이터 변경이 일어나면 UI가 변경됨.
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Widget remainBox = Container(
    width: 300,
    height: 300,
    color: Colors.blue,
  );
  Widget targetBox = Container(
    width: 300,
    height: 300,
    color: Colors.black,
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                DragTarget<Container>(
                  onWillAccept: (data) => true,
                  onAccept: (data) {
                    print("accept 됨");
                    setState(() {
                      remainBox = Container(
                        width: 300,
                        height: 300,
                      );
                      targetBox = data;
                    });
                  },
                  builder: (context, candidateData, rejectedData) => targetBox,
                ),
                Draggable<Container>(
                  data: Container(
                    width: 300,
                    height: 300,
                    color: Colors.blue,
                  ),
                  childWhenDragging: Container(
                    // 움직일 그림
                    width: 300,
                    height: 300,
                  ),
                  feedback: Container(
                    // 움직일 그림
                    width: 300,
                    height: 300,
                    color: Colors.blue,
                  ),
                  child: remainBox,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
