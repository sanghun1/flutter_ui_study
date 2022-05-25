import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Column(
            children: [
              Container(
                color: Colors.red,
                height: 600,
              ),
              TabBar(
                unselectedLabelColor: Colors.black,
                labelColor: Colors.blue,
                controller: _tabController,
                tabs: [
                  Tab(
                    child: Icon(Icons.bookmark, size: 30),
                  ),
                  Tab(
                    icon: Icon(Icons.access_alarm, size: 30),
                  ),
                ],
              ),
              Expanded(
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    Image.asset("patrick.jpg"),
                    Image.asset("patrick.jpg"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
