import 'package:drawer/sub.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: HomePage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Drawable")),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                "제목",
                style: TextStyle(fontSize: 30),
              ),
            ),
            ListTile(
              leading: Icon(Icons.album),
              title: Text("앨범"),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Sub(),));
              },
            ),
            ListTile(
              leading: Icon(Icons.album),
              title: Text("앨범"),
            ),
          ],
        ),
      ),
      body: RaisedButton(
        child: Text("이동"),
        onPressed: () {
          Scaffold.of(context).openDrawer();
        },
      ),
    );
  }
}
