import 'package:d2d/HomePage/HomeWidgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return HomeWidget();
  }
}

class HomeWidget extends StatefulWidget{
  @override
  HomeWidgetState createState()=>HomeWidgetState();
}

class HomeWidgetState extends State<HomeWidget>{

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        backgroundColor: Colors.green[100],
        appBar: homeAppBar(context),
        body: Column(
          children: [
            Expanded(
              child: new ListView(
                children: [

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}