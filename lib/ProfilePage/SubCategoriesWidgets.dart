
import 'package:d2d/HomePage/Home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget SubCategoriesAppBar(Context) {
  return AppBar(
    // bottom: ,
    backgroundColor: Colors.grey[900],
    title: Container(
      alignment: Alignment.centerLeft,
      child: Text(
        "Sub Categories",
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

Widget SubCategoryCard(Context, String subCatImagePath, String subCatName) {
  return Container(
        child: InkWell(
          onTap: () {},
          child: Card(
            shadowColor: Colors.black26,
            elevation: 4,
            color: Colors.red[100],
            child: Column(
              children: [
                Flexible(
                  flex: 3,
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                            subCatImagePath),
                        fit: BoxFit.cover,
                      ),
                    ),

                  ),
                ),
                Flexible(
                  flex: 1,
                  child: Center(
                    child: Container(
                      child: Text(
                        subCatName,
                        style: TextStyle(
                          color: Colors.black,
                          letterSpacing: 1,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
}
