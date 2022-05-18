import 'package:flutter/material.dart';

void main() {
  runApp(ButtonEx());
}

class ButtonEx extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Column(
            children: [
              RaisedButton(
                onPressed: () {
                  print("RaisedButton 클릭됨");
                },
                child: Text("RaisedButton"),
                // elevation: 10,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0)),
                padding: EdgeInsets.all(30.0),
              ),
              FlatButton(
                  onPressed: () {
                    print("FlatButton 클릭됨");
                  },
                  color: Colors.grey,
                  child: Text("FlatButton")),
              InkWell(
                onTap: (){
                  print("커스텀 버튼 클릭됨");
                },
                child: Container(
                  color: Colors.green,
                  child: Text("커스텀 버튼"),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
