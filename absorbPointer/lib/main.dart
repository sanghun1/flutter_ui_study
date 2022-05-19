import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

void main() {
  runApp(AbsorbEx());
}

// StatelessWidget는 한 번 그려지면 다시 안그려짐
// StatefulWidget 데이터 변경시 그림을 다시 그려줌
class AbsorbEx extends StatefulWidget {

  @override
  State<AbsorbEx> createState() => _AbsorbExState();
}

class _AbsorbExState extends State<AbsorbEx> {
  var isCheck = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      debugShowCheckedModeBanner: false, // 우측 상단 디버그 리본 제거
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          // theme에 primaryColor: Colors.white가 안먹혀서 따로 지정
          elevation: 0,
          leading: Icon(Icons.arrow_back),
          title: Text(
            "Credit Card",
            style: TextStyle(
              fontWeight: FontWeight.w800,
              fontSize: 25,
              fontFamily: "Ubuntu",
            ),
          ),
          centerTitle: true,
          actions: [
            Row(
              children: [
                Icon(AntDesign.shoppingcart),
                SizedBox(
                  width: 10,
                ),
              ],
            )
          ],
        ),
        body: Column(
          children: [
            RaisedButton(
                child: Text("인증하기"),
                onPressed: () {
                  print("클릭됨");
                  setState(() { // 데이터에 연관이 있는 위젯과 그 하위 위젯 다시 그려라
                    isCheck = false;
                  });
                  print("isCheck : ${isCheck}");
                }),
            AbsorbPointer(
              absorbing: isCheck,
              child: RaisedButton(
                child: Text("전송하기"),
                onPressed: () {
                  print("클릭됨");
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
