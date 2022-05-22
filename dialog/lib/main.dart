import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DialogEx());
}

class NewApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          RaisedButton(
            child: Text("Button"),
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) => buildAlertDialog(context),
              );
            },
          ),
          RaisedButton(
            child: Text("Button"),
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) => buildDialogAction(context),
              );
            },
          ),
        ],
      ),
    );
  }

  CupertinoAlertDialog buildAlertDialog(BuildContext context) {
    return CupertinoAlertDialog(
      title: Text("다이얼로그"),
      content: Text("내용"),
      actions: [TextButton(onPressed: () {}, child: Text("적용"))],
    );
  }
  

  CupertinoDialogAction buildDialogAction(BuildContext context) {
    return CupertinoDialogAction(
      child: Container(
        height: 300,
        color: Colors.white,
        child: Row(
          children: [
            Expanded(
              child: GestureDetector(
                child: Text("ok"),
                onTap: () {
                  print("on click");
                },
              ),
            ),
            Expanded(child: Text("error")),
          ],
        ),
      ),
      onPressed: () {
        print("안녕");
      },
    );
  }
}

class DialogEx extends StatelessWidget {
  const DialogEx({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: NewApp(),
        ),
      ),
    );
  }
}
