import 'package:flutter/material.dart';

void main() {
  runApp(RowEx());
}

class RowEx extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // 안드로이드 : MaterialApp(), IOS : CupertinoApp()
      // AndroidApp
      home: SafeArea(
        child: Scaffold(
          // 기본 구조
          appBar: AppBar(
            backgroundColor: Colors.blue,
            title: Text("Row"),
            leading: Icon(Icons.menu),
          ),
          body: Container( // 자식은 부모의 크기를 넘을 수 없다
            height: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children:[
                Container(
                  width:100,
                  color:Colors.green,
                ),
                Container(
                  width:100,
                  color:Colors.red,
                ),
                Container(
                  width:100,
                  color:Colors.orange,
                ),
              ],
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              // () => 리턴 있음, () {} 리턴 없음
              print("버튼 클릭됨");
            },
            child: Text("Button"),
          ),
          bottomNavigationBar: BottomNavigationBar(
            items: const [
              BottomNavigationBarItem(
                  label: "hello",
                  icon: Icon(
                    Icons.abc_outlined,
                  )),
              BottomNavigationBarItem(
                  label: "hello",
                  icon: Icon(
                    Icons.abc_outlined,
                  ))
            ],
            backgroundColor: Colors.yellow,
          ),
        ),
      ),
    );
  }
}


