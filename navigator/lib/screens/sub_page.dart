import 'package:flutter/material.dart';
import 'package:navigator/screens/home_page.dart';

class SubPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("앱바 제목")),
      body: Container(
        color: Colors.red,
        alignment: Alignment.center,
        child: RaisedButton(
          child: Text("홈으로 이동"),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
