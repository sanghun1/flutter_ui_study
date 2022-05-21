import 'package:flutter/material.dart';
import 'package:navigator/screens/sub_page.dart';

import '../model/user.dart';

class FeedPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    // User user = ModalRoute.of(context)?.settings.arguments;


    return Scaffold(
      appBar: AppBar(title: Text("피드")),
      body: Container(
        color: Colors.green,
        alignment: Alignment.center,
        child: RaisedButton(
          child: Text("홈으로 이동"),
          onPressed: () {
            // Navigator.pop(context);
            Navigator.pushNamedAndRemoveUntil(context, "/home", (route) => false);
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(
            //     builder: (context) => SubPage(),
            //   ),
            // );
          },
        ),
      ),
    );
  }
}
