import 'dart:convert';

import 'package:awsome_app/utils/constants.dart';
import 'package:flutter/material.dart';

import 'package:awsome_app/widgets/drawer.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'home_page.dart';

import 'login_page.dart';

class HomepageFB extends StatelessWidget {
  Future fetchData() async {
    final url = "https://jsonplaceholder.typicode.com/photos";
    var res = await http.get(url);
    var data = jsonDecode(res.body);
    return data;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("Awesome App"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.exit_to_app),
            onPressed: () {
              Constants.prefs.setBool("loggedIn", false);
              Navigator.pushReplacementNamed(context, LoginPage.routeName);
            },
          )
        ],
      ),
      body: FutureBuilder(
        future: fetchData(),
        builder: (context, snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.none:
              return Center(
                child: Text("Fetch Something"),
              );
            case ConnectionState.active:
            case ConnectionState.waiting:
              return Center(
                child: CircularProgressIndicator(),
              );
            case ConnectionState.done:
              if (snapshot.hasError) {
                return Center(
                  child: Text("some error has occured"),
                );
              }
              return ListView.builder(
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(snapshot.data[index]["title"]),
                    subtitle: Text("ID: ${snapshot.data[index]["id"]}"),
                    leading: Image.network(snapshot.data[index]["url"]),
                  );
                },
                itemCount: snapshot.data.length,
              );
          }
        },
      ),
      drawer: MyDrawer(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //myText = _nameController.text;
          //setState(() {});
        },
        child: Icon(Icons.refresh),
      ),
      //floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
    );
  }
}
