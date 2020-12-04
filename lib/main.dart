import 'package:awsome_app/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  //widgetsapp  //materialapp  //cupertinoapp
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Homepage(),
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
    );
  }
}
