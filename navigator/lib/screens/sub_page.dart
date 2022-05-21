import 'package:flutter/material.dart';
import 'package:navigator/screens/home_page.dart';

import '../model/user.dart';

class SubPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("서브")),
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: Colors.red,
              alignment: Alignment.center,
              child: RaisedButton(
                child: Text("피드로 이동"),
                onPressed: () {
                  // Navigator.pop(context);
                  Navigator.pushNamed(context, "/feed");
                },
              ),
            ),
          ),
          Hero(
            tag: "banner",
            child: Image.asset("patrick.jpg"),
          ),
        ],
      ),
    );
  }
}
