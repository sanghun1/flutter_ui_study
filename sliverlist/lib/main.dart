import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: CustomScrollView(
            slivers: [
              SliverAppBar(
                expandedHeight: 200,
                collapsedHeight: 100,
                flexibleSpace: FlexibleSpaceBar(
                  title: Text("제목"),
                ),
              ),
              SliverList(
                delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) => Text("리스트"),
                  childCount: 80,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
