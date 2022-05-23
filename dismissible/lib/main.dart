import 'package:flutter/material.dart';
import 'package:swipe_to/swipe_to.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: ListView.builder(
            itemBuilder: (context, index) => Dismissible(
              key: ValueKey(index.toString()),
              background: Container(
                color: Colors.red,
              ),
              child: ListTile(
                leading: Icon(Icons.person),
                title: Text("제목 ${index}"),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
