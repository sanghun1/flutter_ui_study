import 'package:flutter/material.dart';

void main() {
  runApp(ListViewEx());
}

class ListViewEx extends StatelessWidget {
  final colorCodes = [600, 500, 300, 200, 100];
  final data = ['가', '나', '다', '라', '마'];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: ListView.builder(
              itemCount: 5,
              itemBuilder: (BuildContext context, int index) {
                return buildColumn(index);
              }),
        ),
      ),
    );
  }

  Widget buildColumn(int index) {
    return Column(
      children: [
        ListTile(
            title: Text("제목"),
            subtitle: Text("부제목"),
            leading: Icon(Icons.account_box_sharp),
            onTap: () {
              print("눌러짐");
            }),
        Row(
          children: [
            Expanded(
              flex: 3,
              child: Container(
                height: 1,
                color: Colors.black,
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                child: Icon(Icons.accessibility_sharp),
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                height: 1,
                color: Colors.red,
              ),
            )
          ],
        )
      ],
    );
  }
}
