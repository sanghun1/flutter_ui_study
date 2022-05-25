import 'package:flutter/material.dart';

class Sub extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sub"),
      ),
      body: Container(
        color: Colors.red,
      ),
    );
  }
}
