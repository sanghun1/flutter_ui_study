import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(StackEx());
}

class StackEx extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: SafeArea(
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          body: Stack(
            children: [
              Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(250),
                      bottomRight: Radius.circular(250),
                    ),
                    child: Container(
                      alignment: Alignment(0, -0.5),
                      child: Text(
                        "GetInThere",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 50,
                        ),
                      ),
                      color: Colors.blue,
                      height: 400,
                    ),
                  ),
                  Expanded(child: SizedBox())
                ],
              ),
              Positioned(
                left: 0,
                right: 0,
                bottom: 0,
                height: 200,
                child: buildTextFormField("Username"),
              ),
            ],
          ),
        ),
      ),
    );
  }

  TextFormField buildTextFormField(String hint) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: hint,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            width: 1,
            color: Colors.black,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            width: 1,
            color: Colors.black,
          ),
        ),
        fillColor: Colors.grey[300],
        filled: true,
      ),
    );
  }

  ListView buildListView() {
    return ListView(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(250),
            bottomRight: Radius.circular(250),
          ),
          child: Container(
            alignment: Alignment(0, -0.5),
            child: Text(
              "GetInThere",
              style: TextStyle(
                color: Colors.white,
                fontSize: 50,
              ),
            ),
            color: Colors.blue,
            height: 450,
          ),
        ),
        TextFormField(),
      ],
    );
  }
}
