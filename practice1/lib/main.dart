import 'package:flutter/material.dart';

void main() {
  runApp(Practice());
}

class Practice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Center(
            child: Column(
              children: [
                SizedBox(height: 10),
                Image.asset("banner.png"),
                SizedBox(height: 10),
                Text("Needlework",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w800,
                    )),
                SizedBox(height: 5),
                Text("is voguish",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w800,
                    )),
                SizedBox(height: 20),
                Text("Handicraft lessons from",
                    style: TextStyle(
                      color: Colors.black45,
                    )),
                SizedBox(height: 5),
                Text("the best designers"),
                SizedBox(height: 20),
                RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0)),
                  child: Container(
                    height: 50,
                    width: 120,
                    alignment: Alignment.center,
                    child: Text(
                      "Get Started",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w600),
                    ),
                  ),
                  onPressed: () {
                    print("버튼 클릭됨");
                  },
                  color: Color(0xFF222222),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
