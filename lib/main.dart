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
        //height: 500,
        width: 500,
        color: Colors.teal,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          //mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(8),
              color: Colors.red,
              width: 100,
              height: 100,
              alignment: Alignment.center,
            ),
            Container(
              padding: const EdgeInsets.all(8),
              color: Colors.yellow,
              width: 100,
              height: 100,
              alignment: Alignment.center,
            ),
            Container(
              padding: const EdgeInsets.all(8),
              color: Colors.green,
              width: 100,
              height: 100,
              alignment: Alignment.center,
            ),
          ],
        ),
      ),
    );
  }
}
