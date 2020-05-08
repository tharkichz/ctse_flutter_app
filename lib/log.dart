import 'dart:async';
import 'dart:convert';
import 'animation.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'main.dart';



void main() => runApp(new RegApp());

String username = '';

class RegApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Register',
      home: new RegisterPage(),
      routes: <String, WidgetBuilder>{
        //  '/AdminPage': (BuildContext context)=> new AdminPage(username: username,),
        // '/MemberPage': (BuildContext context)=> new MemberPage(username: username,),
        '/LoginPage': (BuildContext context) => new LoginPage(),
      },
    );
  }
}

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController name = new TextEditingController();
  TextEditingController user = new TextEditingController();
  TextEditingController faculty = new TextEditingController();
  TextEditingController year = new TextEditingController();
  TextEditingController pass = new TextEditingController();

  String msg = '';

  void register() {
    var url = "http://192.168.1.3:8020/sliit_app/register.php";
    http.post(url, body: {
      "first_name": name.text,
      "student_number": user.text,
      "faculty": faculty.text,
      "year": year.text,
      "password": pass.text
    });
    
    if(['student_number'] == null){
      setState(() {
        msg = "Fields must be filled!";
      });
    }else {
     Navigator.pushReplacementNamed(context, '/LoginPage');
    }
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
        resizeToAvoidBottomPadding: false,
        backgroundColor: Colors.white,
        body: Container(
          child: Column(
            children: <Widget>[
              Container(
                height: 300,
                child: Stack(
                  children: <Widget>[
                    Positioned(
                      top: -40,
                      height: 300,
                      width: width,
                      child: FadeAnimation(
                          1,
                          Container(
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('assets/background.png'),
                                    fit: BoxFit.fill)),
                          )),
                    ),
                    Positioned(
                      height: 300,
                      width: width + 20,
                      child: FadeAnimation(
                          1.3,
                          Container(
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image:
                                        AssetImage('assets/background-2.png'),
                                    fit: BoxFit.fill)),
                          )),
                    ),
                    Positioned(
                      child: FadeAnimation(
                        1.6,
                        Container(
                          margin: EdgeInsets.only(top: 0),
                          child: Center(
                            child: Text(
                              "Register",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 45,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                  padding: EdgeInsets.all(30.0),
                  child: Column(
                    children: <Widget>[
                      FadeAnimation(
                        1.8,
                        Container(
                          padding: EdgeInsets.all(2),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                    color: Color.fromRGBO(143, 148, 251, 0.2),
                                    blurRadius: 20.0,
                                    offset: Offset(0, 10))
                              ]),
                          child: Column(
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.all(8.0),
                                decoration: BoxDecoration(
                                    border: Border(
                                        bottom: BorderSide(
                                            color: Colors.grey[100]))),
                                child: TextField(
                                  controller: name,
                                  decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: "First Number",
                                      hintStyle:
                                          TextStyle(color: Colors.grey[400])),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(8.0),
                                child: TextField(
                                  controller: user,
                                 
                                  decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: "Student Number",
                                      hintStyle:
                                          TextStyle(color: Colors.grey[400])),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(8.0),
                                child: TextField(
                                  controller: faculty,
                                 
                                  decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: "Faculty",
                                      hintStyle:
                                          TextStyle(color: Colors.grey[400])),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(8.0),
                                child: TextField(
                                  controller: year,
                                  decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: "Year",
                                      hintStyle:
                                          TextStyle(color: Colors.grey[400])),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(8.0),
                                child: TextField(
                                  controller: pass,
                                  obscureText: true,
                                  decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: "Password",
                                      hintStyle:
                                          TextStyle(color: Colors.grey[400])),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      FadeAnimation(
                        1.8,
                        new GestureDetector(
                          onTap: () {
                            register();
                          },
                          child: Container(
                            height: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                gradient: LinearGradient(colors: [
                                  Color.fromRGBO(143, 118, 225, 1),
                                  Color.fromRGBO(133, 118, 255, 0.8),
                                ])),
                            child: Center(
                              child: Text(
                                "Register",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          msg,
                          style: TextStyle(
                              color: Colors.red,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      
                      FadeAnimation(
                        1.9,
                        InkWell(
                          child: Text(
                            "Sign In",
                            style: TextStyle(
                                color: Color.fromRGBO(133, 115, 255, 1),
                                fontWeight: FontWeight.bold),
                          ),
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => LoginPage()));
                          },
                        ),
                      ),
                    ],
                  ))
            ],
          ),
        ));
  }
}
