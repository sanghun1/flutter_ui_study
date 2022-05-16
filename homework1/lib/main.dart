import 'package:flutter/material.dart';

void main() {
  runApp(Homework1());
}

class Homework1 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child:Scaffold(
          body: Column(
            children: [
              Expanded(
                child: Container(
                  color:Colors.red,
                  height: 50,
                ),
              ),
              Expanded(
                child: Container(
                  color:Colors.orange,
                  height: 50,
                ),
              ),
              Expanded(
                child: Container(
                  color:Colors.yellow,
                  height: 50,
                ),
              ),
              Expanded(
                child: Container(
                  color:Colors.green,
                  height: 50,
                ),
              ),
              Expanded(
                child: Container(
                  color:Colors.blue,
                  height: 50,
                ),
              ),
              Expanded(
                child: Container(
                  color:Colors.indigo,
                  height: 50,
                ),
              ),
              Expanded(
                child: Container(
                  color:Colors.purple,
                  height: 50,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}



