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
        appBar: AppBar(
          backgroundColor: Colors.grey[900],
          title: Column(
            children: [
              Center(
                child: Container(
                  margin: new EdgeInsets.only(top: 10),
                  child: Text(
                    "D2D",
                    style: TextStyle(
                      color: Colors.white,
                      // height: 20,
                      fontSize: 16,
                      letterSpacing: 2,
                      // fontFamily:
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Text("Now Get Everything At Home",
                  style: TextStyle(
                    fontSize: 8,
                    color: Colors.white38,
                  ),
                ),
              )
            ],
          ),
          leading: Container(
            width: MediaQuery.of(context).size.width/7,
            child: FlatButton(
              splashColor: Colors.blueGrey,
              colorBrightness: Brightness.light,
              color: Colors.grey[900],
              onPressed: (){},
              child: Icon(
                Icons.menu_rounded,
                color: Colors.white,
              ),
            ),
          ),
          actions: [
            Container(
              width: MediaQuery.of(context).size.width/7,
              child: MaterialButton(
                splashColor: Colors.orange[100],
                colorBrightness: Brightness.light,
                onPressed: (){},
                color: Colors.grey[900],
                child: Icon(
                  Icons.shopping_cart_outlined,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}