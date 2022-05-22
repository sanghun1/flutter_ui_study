import 'package:flutter/material.dart';

void main() {
  runApp(CardEx());
}

class CardEx extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Card(
            child: InkWell(
              splashColor: Colors.blue,
              onTap: () {
                print("클릭됨");
              },
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ListTile(
                    leading: Icon(Icons.album),
                    title: Text("The Enchanted Nightingale"),
                    subtitle: Text("Music by Gable. Lyrics by Sidney Stein."),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text("BUY TICKETS"),
                      Text("LISTEN"),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
