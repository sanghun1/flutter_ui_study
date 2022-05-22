import 'package:flutter/material.dart';

void main() {
  runApp(ConstrainedBoxEx());
}

class ConstrainedBoxEx extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Container(
            color: Colors.green,
            constraints: BoxConstraints(maxWidth: 50, minHeight: 100),
            child: Text("Hello Every One"),
          ),
          // ConstrainedBox(
          //   constraints: BoxConstraints(minWidth: 100),
          //   child: RaisedButton(
          //     onPressed: () {  },
          //     child: Text("Hello EveryOne"),
          //   ),
          // ),
        ),
      ),
    );
  }
}
