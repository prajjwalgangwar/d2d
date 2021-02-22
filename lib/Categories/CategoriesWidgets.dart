import 'dart:js';

import 'package:d2d/HomePage/Home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget CategoriesAppBar(Context) {
  return AppBar(
    // bottom: ,
    backgroundColor: Colors.grey[900],
    title: Container(
      child: Text(
        "Categories",
        style: TextStyle(
          color: Colors.white,
          // height: 20,
          fontSize: 16,
          letterSpacing: 2,
        ),
      ),
    ),
    leading: SizedBox(
      width: 70,
      child: FlatButton(
        splashColor: Colors.blueGrey,
        colorBrightness: Brightness.light,
        color: Colors.grey[900],
        onPressed: () {
          Navigator.push(
              Context, MaterialPageRoute(builder: (context) => Home()));
        },
        child: Icon(
          Icons.arrow_back,
          color: Colors.white,
        ),
      ),
    ),
    actions: [
      SizedBox(
        width: 60,
        child: MaterialButton(
          splashColor: Colors.orange[100],
          colorBrightness: Brightness.light,
          onPressed: () {},
          color: Colors.grey[900],
          child: Icon(
            Icons.shopping_cart_outlined,
            color: Colors.white,
          ),
        ),
      ),
    ],
  );
}

Widget CategoryCard(Context) {
  return Column(
    children: [
      Container(
        color: Colors.white,
        width: MediaQuery.of(Context).size.width,
        height: 140,
        child: Row(
          children: [
            Flexible(
              flex: 3,
              child: Container(
                height: 130,
                width: 130,
                margin: const EdgeInsets.only(left: 10, right: 4, top: 3, bottom: 3),
                decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: NetworkImage(
                        "https://i.pinimg.com/originals/38/eb/da/38ebdaccc83048302d8da9fa4a6ee45c.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Flexible(
              flex: 8,
              child: Container(
                color: Colors.white,
                alignment: Alignment.centerLeft,
                margin: new EdgeInsets.only(left: 35,right: 1,top: 25,bottom: 25),
                child: Text(
                  "Milk / Milk Products",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            Flexible(
              flex: 2,
              child: Container(
                color: Colors.white,
                margin: new EdgeInsets.only(left: 1,right: 20,top: 25,bottom: 25),
                alignment: Alignment.centerRight,
                child: Icon(
                  Icons.arrow_right,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
      // LinearProgressIndicator(
      //   backgroundColor: Colors.deepOrangeAccent,
      // ),
      Divider(
        color: Colors.blueGrey,
        thickness: 4,
      ),
    ],
  );
}
