import 'package:flutter/material.dart';
import 'package:navigator/screens/home_page.dart';
import 'package:navigator/screens/sub_page.dart';

void main() {
  runApp(NavigatorEx());
}

class NavigatorEx extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: HomePage(),
      ),
    );
  }
}



