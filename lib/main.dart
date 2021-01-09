import 'package:awsome_app/pages/home_page.dart';
import 'package:awsome_app/pages/login_page.dart';
import 'package:awsome_app/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future main() async {
  //widgetsapp  //materialapp  //cupertinoapp
  WidgetsFlutterBinding.ensureInitialized();
  Constants.prefs = await SharedPreferences.getInstance();
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Constants.prefs.getBool("loggedIn") == true
          ? Homepage()
          : LoginPage(),
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      routes: {
        LoginPage.routeName: (context) => LoginPage(),
        Homepage.routeName: (context) => Homepage(),
      },
    );
  }
}
