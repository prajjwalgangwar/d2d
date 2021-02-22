
import 'package:d2d/Categories/Categories.dart';
import 'package:d2d/utilities/Constants.dart';
import 'package:flutter/material.dart';

import 'HomePage/Home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Constants().homeAppBarTitle,
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.deepOrangeAccent[00],
        accentColor: Colors.deepOrangeAccent[600],
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Categories();
  }
}
