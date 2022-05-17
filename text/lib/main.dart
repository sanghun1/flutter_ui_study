import 'package:flutter/material.dart';

void main() {
  runApp(TextEx());
}

class TextEx extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Container(
            height: double.infinity,
            width: double.infinity,
            color: Colors.orange,
            alignment: Alignment(1.0, 1.0),
            child: Text.rich(
              TextSpan(
                children: [
                  TextSpan(text: "안녕", style: TextStyle(color: Colors.red, fontSize: 50)),
                  TextSpan(text: "반가워"),
                ]
              ),
            ),
          ),
        ),
      ),
    );
  }
}
