import 'package:d2d/others/Login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class SignUpPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return SignUpPageWidget();
  }
}

class SignUpPageWidget extends StatefulWidget{
  @override
  SignUpPageState createState()=>SignUpPageState();
}

class SignUpPageState extends State<SignUpPageWidget>{
  static String username,email,password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Container(
        width: MediaQuery.of(context).size.width,
        color: Colors.white,
        child: Center(
          child: SizedBox(
            width: MediaQuery.of(context).size.height/1.4,
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black
                )
              ),
              margin: new EdgeInsets.only(top: 40,left: 20,right: 20,bottom: 20),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 40),
                    child: Center(
                      child: Text("Sign Up!",
                        style: TextStyle(
                          color: Colors.cyan,
                          fontSize: 40,
                          letterSpacing: 2,
                          wordSpacing: 2,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(40.0),
                    child: Divider(
                      color: Colors.cyan,
                    ),
                  ),
                  Container(
                    margin: new EdgeInsets.all(10.0),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 50, right: 50),
                      child: Container(
                        color: Colors.cyan[50],
                        child: TextField(
                          onChanged: (value) => username=value,
                          style: TextStyle(
                            color: Colors.black,
                          ),
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.lightBlueAccent,
                                    width: 0.5
                                )
                            ),
                            fillColor: Colors.lightBlue[400],
                            labelText: 'User Name',
                            labelStyle: TextStyle(
                              color: Colors.black54,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: new EdgeInsets.all(10.0),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10,left: 50, right: 50),
                      child: Container(
                        color: Colors.cyan[50],
                        child: TextField(
                          onChanged: (value) => email=value,
                          style: TextStyle(
                            color: Colors.black,
                          ),
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.lightBlueAccent,
                                    width: 0.5
                                )
                            ),
                            fillColor: Colors.lightBlue[400],
                            labelText: 'Email ID',
                            labelStyle: TextStyle(
                              color: Colors.black54,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: new EdgeInsets.all(10.0),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10,left: 50, right: 50),
                      child: Container(
                        color: Colors.cyan[50],
                        child: TextField(
                          onChanged: (value) => password=value,
                          style: TextStyle(
                            color: Colors.black,
                          ),
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.lightBlueAccent,
                                    width: 0.5
                                )
                            ),
                            fillColor: Colors.lightBlue[400],
                            labelText: 'Password',
                            labelStyle: TextStyle(
                              color: Colors.black54,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: new EdgeInsets.all(10.0),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10, left: 50, right: 50),
                      child: Container(
                        color: Colors.cyan[50],
                        child: TextField(
                          onChanged: (value) => password=value,
                          style: TextStyle(
                            color: Colors.black,
                          ),
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.lightBlueAccent,
                                    width: 0.5
                                )
                            ),
                            fillColor: Colors.lightBlue[400],
                            labelText: 'Confirm Password',
                            labelStyle: TextStyle(
                              color: Colors.black54,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Divider(
                    thickness: 2.0,
                    color: Colors.white,
                  ),
                  Container(
                    margin: new EdgeInsets.only(top: 25,bottom: 10,right: 30,left: 30),
                    alignment: Alignment.center,
                    height: 50,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.cyan,
                        width: 1.2
                      ),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: FlatButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(5),
                              child: Text(
                                'SignUp',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Icon(
                                Icons.app_settings_alt_outlined,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: new EdgeInsets.only(top:10,right: 30,left: 30),
                    alignment: Alignment.center,
                    height: 30,
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: Colors.cyan,
                          width: 0.5
                      ),
                      color: Colors.blue[50],
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: FlatButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(1.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(5),
                              child: Text(
                                'Already a user? Login',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

}