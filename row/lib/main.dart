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
          body: Row(
            children:[
              Expanded(
                flex: 3,
                child: Container(
                  color:Colors.green,
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  color:Colors.red,
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  color:Colors.orange,
                ),
              ),
            ],
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


