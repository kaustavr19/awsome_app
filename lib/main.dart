import 'package:flutter/material.dart';

void main() {
  //widgetsapp  //materialapp  //cupertinoapp
  runApp(MaterialApp(
    home: Homepage(),
    theme: ThemeData(
      primarySwatch: Colors.purple,
    ),
  ));
}

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Awesome App"),
      ),
      body: Container(
        child: Text("Hi Flutter!"),
      ),
    );
  }
}
