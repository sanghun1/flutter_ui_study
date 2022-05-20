import 'package:flutter/material.dart';
import 'package:navigator/screens/sub_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("앱바 제목")),
      body: Container(
        color: Colors.blue,
        alignment: Alignment.center,
        child: RaisedButton(
          child: Text("서브로 이동"),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SubPage(),
              ),
            );
          },
        ),
      ),
    );
  }
}
