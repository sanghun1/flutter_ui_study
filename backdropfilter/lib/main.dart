import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(BackdropFilterEx());
}

class BackdropFilterEx extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Stack(
            children: [
              Image.asset(
                "patrick.jpg",
                fit: BoxFit.fill,
                width: double.infinity,
                height: double.infinity,
              ),
              Positioned(
                left: 150,
                right: 150,
                bottom: 320,
                child: ClipRect( // ClipRect은 자식의 크기에 맞춰서 잘린다
                  child: BackdropFilter(
                    filter: ImageFilter.blur(
                      sigmaX: 10,
                      sigmaY: 10,
                    ),
                    child: Container(
                      width: 100,
                      height: 330,
                      color: Colors.black.withOpacity(0.1),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
