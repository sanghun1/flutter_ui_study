import 'package:flutter/material.dart';
import 'package:navigator/screens/home_page.dart';
import 'package:navigator/screens/sub_page.dart';
import 'package:navigator/screens/feed_page.dart';

void main() {
  runApp(NavigatorEx());
}

class NavigatorEx extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/home",
      routes: {
        "/home": (BuildContext context) => HomePage(),
        "/sub": (BuildContext context) => SubPage(),
        "/feed": (BuildContext context) => FeedPage(),
      },
    );
  }
}
