import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OldHome extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return OldHomeWidget();
  }
}

class OldHomeWidget extends StatefulWidget{
  @override
  OldHomeWidgetState createState()=>OldHomeWidgetState();
}

class OldHomeWidgetState extends State<OldHomeWidget>{
  static int counter=10;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: MediaQuery.of(context).size.width/1.2,
        child: Scaffold(
          backgroundColor: Colors.blueGrey,
          appBar: AppBar(
            backgroundColor: Colors.blueGrey[900],
            title: Text("Messaging Application",
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.bold
              ),
            ),
            leading: FlatButton(
              child: Icon(
                Icons.menu_rounded,
                color: Colors.white,
              ),
            ),
          ),
          body: Container(
            color: Colors.black54,
            width: MediaQuery.of(context).size.width/3.5,
            child: ListView(
              children: [
                chatDetail("https://www.newcastle.edu.au/__data/assets/image/0010/535906/varieties/sidebar_cal_thumb.jpg"),
                chatDetail("https://images.unsplash.com/photo-1503023345310-bd7c1de61c7d?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MXx8aHVtYW58ZW58MHx8MHw%3D&ixlib=rb-1.2.1&w=1000&q=80"),
                chatDetail("https://images.unsplash.com/photo-1558981852-426c6c22a060?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1000&q=80"),
                chatDetail("https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/close-up-of-tulips-blooming-in-field-royalty-free-image-1584131616.jpg?crop=0.630xw:1.00xh;0.186xw,0&resize=640:*"),
                chatDetail("https://www.ucl.ac.uk/news/sites/news/files/styles/large_image/public/jasmina_panovska-griffiths_crop.jpg?itok=Da5xMrTh"),
                chatDetail("https://www.ucl.ac.uk/news/sites/news/files/styles/large_image/public/jasmina_panovska-griffiths_crop.jpg?itok=Da5xMrTh"),
                chatDetail("https://www.ucl.ac.uk/news/sites/news/files/styles/large_image/public/jasmina_panovska-griffiths_crop.jpg?itok=Da5xMrTh"),
                chatDetail("https://images.unsplash.com/photo-1558981852-426c6c22a060?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1000&q=80"),
                chatDetail("https://www.ucl.ac.uk/news/sites/news/files/styles/large_image/public/jasmina_panovska-griffiths_crop.jpg?itok=Da5xMrTh"),
                chatDetail("https://www.ucl.ac.uk/news/sites/news/files/styles/large_image/public/jasmina_panovska-griffiths_crop.jpg?itok=Da5xMrTh"),
                chatDetail("https://images.unsplash.com/photo-1558981852-426c6c22a060?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1000&q=80"),
                chatDetail("https://www.ucl.ac.uk/news/sites/news/files/styles/large_image/public/jasmina_panovska-griffiths_crop.jpg?itok=Da5xMrTh"),

              ],
            ),
          )
        ),
      ),
    );
  }

  Widget chatDetail(String groupPicturePath){
    return Container(
      color: Colors.blueGrey[800],
      height: MediaQuery.of(context).size.height/12,
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.all(5),
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                  image: NetworkImage(groupPicturePath), fit: BoxFit.fill),
            ),
          ),
          Column(
            children: [
              Container(
                width: 270,
                margin: new EdgeInsets.only(top: 10,bottom: 3,left: 5),
                child: Text(
                  " Group/ Contact Name",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
              Container(
                width: 270,
                margin: new EdgeInsets.only(bottom: 3,left: 5),
                child: Text(
                  "last message display",
                  style: TextStyle(
                    color: Colors.white54,
                    fontSize: 10,
                    fontStyle: FontStyle.italic
                  ),
                ),
              ),
            ],
          ),
          Container(
            margin: new EdgeInsets.all(10.0),
            alignment: Alignment.centerRight,
            width: 20,
            height: 20,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.blue
            ),
            child: Center(
              child: Text(
                "$counter",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 10
                ),
                textAlign: TextAlign.left,
              ),
            ),
          )
        ],
      ),
    );
  }
}