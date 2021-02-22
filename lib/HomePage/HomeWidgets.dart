import 'package:d2d/Categories/Categories.dart';
import 'package:d2d/utilities/Constants.dart';
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
              Constants().homeAppBarTitle,
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
            Constants().homeAppBarSubTitle,
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
      child: SizedBox(
        height: 50,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Flexible(
              flex: 2,
              child:Container(
                  height: 35,
                  margin: new EdgeInsets.only(bottom: 1, right: 2, left: 5),
                  decoration: BoxDecoration(
                    color: Colors.white70,
                    borderRadius: BorderRadius.circular(3),
                    border: Border.all(
                        color: Colors.white12
                    ),
                  ),
                  child: Center(
                    child: FlatButton(
                      splashColor: Colors.amber[50],

                      child: Text(
                        "Stores",
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

            Flexible(
              flex: 5,
              child: Container(
                  height: 35,
                  margin: new EdgeInsets.only(bottom: 1,right: 5,left: 5),
                  decoration: BoxDecoration(
                    color: Colors.white70,
                    borderRadius: BorderRadius.circular(3),
                    border: Border.all(
                        color: Colors.white12
                    ),
                  ),
                  child: Center(
                    child: FlatButton(
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Categories()));
                      },
                      child: Text(
                        "Search Bar Area",
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
          ],
        ),
      ),
      preferredSize: Size.fromHeight(47)
  );
}


Widget storesList(){
  return null;
}

