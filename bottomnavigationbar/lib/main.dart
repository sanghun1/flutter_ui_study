import 'package:bottomnavigationbar/screens/page1.dart';
import 'package:bottomnavigationbar/screens/page2.dart';
import 'package:bottomnavigationbar/screens/page3.dart';
import 'package:bottomnavigationbar/screens/page4.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(BottomNavigationBarEx());
}

class BottomNavigationBarEx extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _seletedIndex = 0; // _변수이름 : 다른 클래스에서 못쓰고 해당 클래스에서만 사용할 수 있는 private 변수

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: IndexedStack(
          // 안드로이드 fragment
          index: _seletedIndex,
          children: [
            Page1(),
            Page2(),
            Page3(),
            Page4(),
          ],
        ),
        bottomNavigationBar: buildBottomNavigationBar(),
      ),
    );
  }

  BottomNavigationBar buildBottomNavigationBar() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: _seletedIndex,
      onTap: (value) {
        setState(() {
          _seletedIndex = value;
        });
        print("value : ${value}");
      },
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: "home",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.school),
          label: "school",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.business),
          label: "business",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: "search",
        ),
      ],
    );
  }
}
