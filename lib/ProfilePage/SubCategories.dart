import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'SubCategoriesWidgets.dart';

class SubCategories extends StatefulWidget{
  @override
  SubCategoriesState createState()=>SubCategoriesState();
}

class SubCategoriesState extends State<SubCategories>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: SubCategoriesAppBar(context),
        body: new GridView.count(
          scrollDirection: Axis.vertical,
          crossAxisCount: 2,
          mainAxisSpacing: 2,
          crossAxisSpacing: 2,
          children: List.generate(5,(index){
            return SubCategoryCard(context, "https://www.healthshots.com/wp-content/uploads/2020/05/dal-pulses.jpg", "subCatName");
          }),
        ));
  }
}