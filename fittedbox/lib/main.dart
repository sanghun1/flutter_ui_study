import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Column(
            children: [
              Container(
                height: 500,
                width: 500,
                color: Colors.red,
                child: FittedBox( // 작 -> 큰
                  fit: BoxFit.cover,
                  child: Image.network("https://placeimg.com/640/480/any"),
                ),
              ),
              Container( // 큰 -> 작
                width: 200,
                height: 200,
                child: Image.network("https://placeimg.com/640/480/any"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
