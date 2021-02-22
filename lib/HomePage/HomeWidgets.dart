import 'package:d2d/Categories/Categories.dart';
import 'package:d2d/utilities/StringConstants.dart';
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
              StringConstants.homeAppBarTitle,
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
            StringConstants.homeAppBarSubTitle,
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
        onPressed: () {
          Navigator.push(Context, MaterialPageRoute(builder: (Context)=>NavigationDrawer(Context)));
        },
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
                child: InkWell(
                  splashColor: Colors.red,
                  onTap: (){},
                  child: Center(
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
              ),// Stores Card

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
                child: InkWell(
                  splashColor: Colors.red,
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Categories()));
                  },
                  child: Center(
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
              ),// Search Bar Area
          ],
        ),
      ),
      preferredSize: Size.fromHeight(47)
  );
}


Widget storesList(){
  return null;
}


Widget NavigationDrawer(Context){
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            child: Text('Drawer Header'),
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
          ),
          ListTile(
            title: Text('Item 1'),
            onTap: () {
              Navigator.pop(Context);
            },
          ),
        ],
      ),
    );
  }