import 'dart:convert';

import 'package:flutter/material.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'package:sliit_app/pro.dart';
import 'bottom_bar.dart';

class ProfilePage extends StatefulWidget {
  ProfilePage({String username});

  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<ProfilePage> {

  Future<List> getData() async{
    final response = await http.get("http://192.168.1.3:8020/sliit_app/profile.php");
    return json.decode(response.body);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(133, 120, 255, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(133, 115, 255, 1),
        elevation: 6.0,
        centerTitle: true,
        title: Padding(
          padding: const EdgeInsets.only(top: 7.0),
          child: Image(
              image: AssetImage('assets/sliit.png'),
              fit: BoxFit.cover,
              height: 36.0,
              width: 108.0),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.edit, color: Colors.white),
            onPressed: () {
               Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) =>
                      Profile()));
            },
          ),
        ],
      ),
      body: ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 40.0),
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    height: 100.0,
                    width: 100.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50.0),
                        image: DecorationImage(
                            image: AssetImage('assets/chris.jpg'),
                            fit: BoxFit.cover)),
                  ),
                ),
              ),
              Positioned(
                left: 210.0,
                top: 70.0,
                child: Container(
                  height: 25.0,
                  width: 25.0,
                ),
              )
            ],
          ),
          Column(
            children: <Widget>[
              SizedBox(height: 20.0),
              Text(
                'IT17115780',
                style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              Text(
                'Tharaka',
                style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    Icons.school,
                    color: Colors.white,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Text(
                      '4 Year, IT Faculty',
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 14.0,
                          color: Colors.white),
                    ),
                  )
                ],
              )
            ],
          ),
          SizedBox(height: 30.0),
          Center(
            child: Container(
              width: MediaQuery.of(context).size.width - 50.0,
              child: Text(
                  'We are a leading non-state degree awarding institute approved by the University Grants Commission (UGC) under the Universities. ',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'Varela',
                      fontSize: 16.0,
                      color: Colors.white)),
            ),
          ),
          Padding(
              padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 40.0),
              child: InkWell(
                  onTap: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                          padding: EdgeInsets.only(left: 5.0),
                          width: MediaQuery.of(context).size.width - 30.0,
                          height: MediaQuery.of(context).size.height - 50.0,
                          child: GridView.count(
                            crossAxisCount: 3,
                            primary: false,
                            crossAxisSpacing: 8.0,
                            mainAxisSpacing: 25.0,
                            childAspectRatio: 0.8,
                            children: <Widget>[
                              _card2(
                                  '20 Years', 'of Existence', 'assets/s1.png'),
                              _card2('5000 Years ', 'of Experience',
                                  'assets/s2.png'),
                              _card2(
                                  '300+', 'Faculty Members', 'assets/s3.png'),
                            ],
                          ))
                    ],
                  ))),
          SizedBox(height: 10.0),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              //child: Text('Home',style: TextStyle(fontFamily: 'Scheherazade',color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25)),
              child: Image.asset('assets/1.png', height: 200, width: 100),
              decoration: BoxDecoration(
                //color: Colors.deepPurple[900],
                color: Color.fromRGBO(133, 120, 255, 1)
              ),
            ),
            ListTile(
              leading: Icon(Icons.format_align_center),
              title: Text('Faculties'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.tag_faces),
              title: Text('Clubs and Societies'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.map),
              title: Text('Campus Map'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.people_outline),
              title: Text('Staff Directory'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.list),
              title: Text('Events'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.stars),
              title: Text('Awards & Recognition'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.book),
              title: Text('Library'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.phone),
              title: Text('Contacts'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.supervisor_account),
              title: Text('Student Services'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.orange[400],
        child: Icon(Icons.school),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomBar(Color(0xFF545D68), Colors.orange[400],
          Color(0xFF545D68), Color(0xFF545D68)),
    );
  }

  Widget _card2(String name, String name2, String imgPath) {
    return Padding(
        padding: EdgeInsets.only(top: 5.0, bottom: 5.0, left: 5.0, right: 5.0),
        child: InkWell(
            onTap: () {},
            child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    color: Colors.white),
                child: Column(children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 7.0),
                    child: Image(
                        image: AssetImage(imgPath),
                        fit: BoxFit.cover,
                        height: 56.0,
                        width: 56.0),
                  ),
                  Padding(
                      padding: EdgeInsets.all(12.0),
                      child: Container(color: Color(0xFFEBEBEB), height: 1.0)),
                  Padding(
                      padding: EdgeInsets.only(left: 5.0, right: 5.0),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(name,
                                style: TextStyle(
                                    color: Colors.black87,
                                    fontFamily: 'Varela',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17.0)),
                            Text(name2,
                                style: TextStyle(
                                    color: Colors.black87,
                                    fontFamily: 'Varela',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 10.0)),
                          ]))
                ]))));
  }
}
