import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Container(
            width: double.infinity,
            child: Column(
              children: [
                Spacer(), // SizeBox()에 Expanded 추가
                Container(
                  height: 100,
                  width: 300,
                  color: Colors.blue,
                ),
                Divider(
                  height: 50,
                  color: Colors.black,
                  thickness: 5,
                  indent: 10,
                  endIndent: 10,
                ),
                Container(
                  height: 100,
                  width: 300,
                  color: Colors.red,
                ),
                Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
