import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() {
  // main 스레드는 runApp을 실행시키고 종료합니다.
  runApp(FirstApp()); // 비동기로 실행됨 (이벤트 루프에 등록된다)
  // sleep(Duration(seconds: 3));
  // print("main 종료");
}

// 저장만 하면 화면이 리로드 됨. 핫 리로드
class FirstApp extends StatelessWidget {
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
            title: Text("First App"),
            leading: Icon(Icons.menu),
          ),
          body: Column( // 부모의 제약 조건을 자식이 따라간다.
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.stretch, // stretch -> 끝까지
            children: [
              Container(
                // 부모의 최대 크기까지 늘려라
                color: Colors.orange,
                width: 100, // 부모의 제약 조건을 따라서 바뀌지 않는다.
                height: 100,
              ),
              Container(
                color: Colors.green,
                width: 100,
                height: 100,
              ),
              Container(
                color: Colors.red,
                width: 100,
                height: 100,
              )
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
