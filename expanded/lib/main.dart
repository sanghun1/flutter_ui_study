import 'package:flutter/material.dart';

void main() {
  runApp(ExpandedEx());
}

class ExpandedEx extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home:SafeArea(
        child: Scaffold(
          body: MediaQueryEx(),
        ),
      ),
    );
  }
}


class MediaQueryEx extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    var m = MediaQuery.of(context);
    print("넓이 : ${m.size.width}");
    print("높이 : ${m.size.height}");
    // SafeArea 확인 방법 : SafeArea() 지우고 print("safearea : ${m.padding.top}"); 출력

    return Column(
      children: [
        Container(
          height:m.size.height * 0.7,
          color:Colors.blue,
        ),
        Container(
          height:m.size.height * 0.3,
          color:Colors.red,
        )
      ],
    );
  }
}
