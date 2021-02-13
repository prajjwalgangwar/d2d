import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget homeAppBar(Context) {

  return AppBar(
    // bottom: ,
    backgroundColor: Colors.grey[900],
    bottom: bottomAppBarHome(Context),
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
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 5),
          child: Text(
            "हर दरवाजे तक",
            style: TextStyle(
              fontSize: 8,
              color: Colors.white54,
            ),
          ),
        )
      ],
    ),
    leading: SizedBox(
      width: 70,
      child: FlatButton(
        splashColor: Colors.blueGrey,
        colorBrightness: Brightness.light,
        color: Colors.grey[900],
        onPressed: () {},
        child: Icon(
          Icons.menu_rounded,
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

Widget bottomAppBarHome(context){
  return PreferredSize(
      child: Container(
        child: ListTile(
          tileColor: Colors.grey[900],
          leading: Container(
            margin: new EdgeInsets.only(bottom: 15),
            decoration: BoxDecoration(
              color: Colors.white70,
              borderRadius: BorderRadius.circular(3),
              border: Border.all(
                  color: Colors.white12
              ),
            ),

            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width/5,

            child: Center(
              child: Text(
                "Categories",
                style: TextStyle(
                    color: Colors.black87,
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Trajan Pro'
                ),
              ),
            ),
          ),
          trailing: Container(
            margin: new EdgeInsets.only(bottom: 15),
            decoration: BoxDecoration(
              color: Colors.white70,
              borderRadius: BorderRadius.circular(3),
              border: Border.all(
                  color: Colors.white12
              ),
            ),

            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width/1.39,

            child: Center(
              child: Center(
                child: Text(
                  "Area For Search Bar",
                  style: TextStyle(
                      color: Colors.black87,
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Trajan Pro'
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
      preferredSize: Size.fromHeight(54)
  );
}
