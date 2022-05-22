import 'package:flutter/material.dart';

void main() {
  runApp(BottomSheetEx());
}

class BottomSheetEx extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Text("BottomSheet"),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            showModalBottomSheet(
              context: context,
              builder: (context) => _bulidContainer(),
            );
          },
        ),
      ),
    );
  }

  Widget _bulidContainer() {
    print("inset : ${MediaQuery.of(context).viewInsets.bottom}");
    print("padding : ${MediaQuery.of(context).viewPadding.bottom}");

    return BottomSheet(
      onClosing: () {
        print("닫아짐");
      },
      builder: (context) => Container(
        padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
        color: Colors.yellow,
        child: Container(
          height: 200,
          child: TextField(),
        ),
      ),
    );
  }
}
