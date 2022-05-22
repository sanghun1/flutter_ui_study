import 'package:flutter/material.dart';

void main() {
  runApp(CircularProgressIndicatorEx());
}

class CircularProgressIndicatorEx extends StatefulWidget {
  @override
  State<CircularProgressIndicatorEx> createState() =>
      _CircularProgressIndicatorExState();
}

class _CircularProgressIndicatorExState
    extends State<CircularProgressIndicatorEx> {

  var isLoading = true;

  // 네트워크로 무언가를 다운로드를 할 때 사용

  @override
  void initState() {
    super.initState();
    print("initState()");
    Future.delayed(Duration(seconds: 3), () {
      print("다운로드 완료됨");
      setState(() {
        isLoading = false;
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: isLoading? CircularProgressIndicator(
            backgroundColor: Colors.red,
            strokeWidth: 10,
          ) : Text("다운로드 완료됨"),
        ),
      ),
    );
  }
}
