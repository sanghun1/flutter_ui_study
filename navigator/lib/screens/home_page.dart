import 'package:flutter/material.dart';
import 'package:navigator/screens/sub_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("홈")),
      body: Column(
        children: [
          Hero(
            tag: "banner",
            child: Image.asset("patrick.jpg"),
          ),
          Container(
            color: Colors.blue,
            alignment: Alignment.center,
            child: RaisedButton(
              child: Text("서브로 이동"),
              onPressed: () {
                Navigator.pushNamed(context, "/sub");
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => SubPage(),
                //   ),
                // );
              },
            ),
          ),
        ],
      ),
    );
  }
}
