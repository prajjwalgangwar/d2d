import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'CategoriesWidgets.dart';

class Categories extends StatefulWidget{
  @override
  CategoriesState createState()=>CategoriesState();
}

class CategoriesState extends State<Categories>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CategoriesAppBar(context),
      body: new ListView(
        children: [
          CategoryCard(context),
          CategoryCard(context),
          CategoryCard(context),
          CategoryCard(context),
          CategoryCard(context),
          CategoryCard(context),
          CategoryCard(context),
          CategoryCard(context),
          CategoryCard(context),
          CategoryCard(context),
          CategoryCard(context),
          CategoryCard(context),
          CategoryCard(context),
          CategoryCard(context),
          CategoryCard(context),
        ],
      )
    );
  }
}