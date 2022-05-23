import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  color: Colors.green,
                  height: 50,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 30,
                    itemBuilder: (context, index) => Text("메뉴1"),
                  ),
                ),
                Column(
                  children: List.generate(
                    100, (index) => Text("메뉴2"),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      constraints: BoxConstraints(
        minWidth: 100,
        minHeight: 50,
        maxWidth: 100,
        maxHeight: 50,
      ),
      color: Colors.orange,
      child: Text("메뉴1"),
    );
  }
}
