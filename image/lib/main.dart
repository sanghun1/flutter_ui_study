import 'package:flutter/material.dart';

void main() {
  runApp(ImageEx());
}

class ImageEx extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Container(
            alignment: Alignment(0.0, 0.0),
            child: Image.asset("image.gif",
                width: 300,
                height: 300,
                fit: BoxFit.contain
            ),
          ),
        ),
      ),
    );
  }
}
