import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: HomePage(),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _MyAppState();
}

class _MyAppState extends State<HomePage> with TickerProviderStateMixin {

  late AnimationController _controller;

  // build 매서드 실행 전
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 3),
    );
    _controller.forward();
  }

  // Fade 나타나다, FadeIn 점점 나타나는 것, FadeOut 점점 사라지다
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: FadeTransition(
          child: Text(
            "안녕",
            style: TextStyle(fontSize: 100),
          ),
          opacity: Tween(begin: 0.0, end: 1.0).animate(_controller,
          ),
        )
    );
  }
}
