import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class item{
  int id;
  bool isState;

  item(this.id, this.isState);
}

class _MyAppState extends State<MyApp> {
  var data = [item(1, false), item(2, false), item(3, false)];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: ExpansionPanelList(
              children: List.generate(data.length, (index) => buildExpansionPanel(data[index])),
            ),
          ),
        ),
      ),
    );
  }

  ExpansionPanel buildExpansionPanel(item item) {
    return ExpansionPanel(
      isExpanded: item.isState,
      headerBuilder: (context, isExpanded) {
        return Dismissible(
          key: UniqueKey(), // 배열요소 (수정, 삭제, 추가)
          onDismissed: (direction){
            print("item.id : ${item.id}");
            // where 함수 : 값을 걸러내서 return을 해준다. 그것을 새로울 배열에 담던지 할 수 있음
            // removeWhere : 값을 실제로 걸러냄 (실제 값을 수정)
            setState(() {
              data.removeWhere((e) => e.id == item.id);
            });
          },
          child: ListTile(
            title: Text("item ${item.id} parent"),
            onTap: () {
              setState(() {
                item.isState = !isExpanded;
                // print("실행됨");
              });
            },
          ),
        );
      },
      body: ListTile(
        title: Text("item child"),
      ),
    );
  }
}
