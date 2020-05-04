import 'package:flutter/material.dart';

import 'bottom_bar.dart';

class ProfilePage extends StatefulWidget {

  ProfilePage();

  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<ProfilePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.blue,
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
            icon: Icon(Icons.notifications_none, color: Colors.white),
            onPressed: () {},
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
              SizedBox(height: 10.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    Icons.school,
                    color: Colors.white,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:10.0),
                    child: Text(
                      '4th Year, IT Faculty',
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
                    color: Color(0xFFB4B8B9))),
          ),
        ),
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
              child: Image.asset('assets/1.png', height: 200,  width: 100),
              decoration: BoxDecoration(
                //color: Colors.deepPurple[900],
                color: Colors.blueAccent,
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
              onTap: () {
              
              },
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
        backgroundColor: Color(0xFFF17532),
        child: Icon(Icons.school),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomBar(Color(0xFF545D68),Color(0xFFF17532),Color(0xFF545D68),Color(0xFF545D68)),
    );
  }
}
