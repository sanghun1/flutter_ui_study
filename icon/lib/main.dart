import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

void main() {
  runApp(IconEx());
}

class IconEx extends StatelessWidget {
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
        body: ListView(
          children: [
            ClipRRect(
              child: Container(
                height: 200,
                color: Colors.red,
              ),
              borderRadius: BorderRadius.circular(20.0),
            ),
            ClipRRect(
              // 사진 끝을 동그랗게 자르고 싶다.
              child: Image.asset("card.jpg"),
              borderRadius: BorderRadius.circular(18.0),
            ),
            ClipOval(
              // 사진을 동그랗게 자르고 싶다
              child: Image.asset("card.jpg"),
            ),
            ClipRect(
              // 사진을 네모로 자르고 싶다
              child: Align(
                child: Image.asset("card.jpg"),
                heightFactor: 0.5,
                alignment: Alignment.topCenter,
              ),
            ),
            ClipPath(
              child: Image.asset(
                "card.jpg",
                height: 300,
                width: double.infinity,
                fit: BoxFit.fill,
              ),
              clipper: MyCliper(),
            ),
          ],
        ),
      ),
    );
  }
}

class MyCliper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.moveTo(size.width / 2, 0);
    path.lineTo(0.0, size.height);
    path.lineTo(size.width, size.height);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
