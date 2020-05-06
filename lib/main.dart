import 'package:flutter/material.dart';
import 'package:sliit_app/contacts.dart';
import 'bottom_bar.dart';
import 'card_page.dart';
import './club.dart';
import 'login.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final appTitle = 'About SLIIT';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: appTitle,
      home: MyHomePage(title: appTitle),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;

  MyHomePage({Key key, this.title}) : super(key: key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

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
              height: 35.0,
              width: 108.0),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.notifications_none, color: Colors.white),
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => LoginPage()));
            },
          ),
        ],
      ),
      body: ListView(
        padding: EdgeInsets.only(left: 20.0),
        children: <Widget>[
          SizedBox(height: 30.0),
          Text('Dashboard',
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Varela',
                  fontSize: 35.0,
                  fontWeight: FontWeight.bold)),
          SizedBox(height: 15.0),
          TabBar(
              controller: _tabController,
              indicatorColor: Colors.transparent,
              labelColor: Colors.white,
              isScrollable: true,
              labelPadding: EdgeInsets.only(right: 45.0),
              unselectedLabelColor: Colors.lightBlue[200],
              tabs: [
                Tab(
                  child: Text('Home',
                      style: TextStyle(
                        fontFamily: 'Varela',
                        fontSize: 20.0,
                      )),
                ),
                Tab(
                  child: Text('Services',
                      style: TextStyle(
                        fontFamily: 'Varela',
                        fontSize: 20.0,
                      )),
                ),
                Tab(
                  child: Text('Faculties',
                      style: TextStyle(
                        fontFamily: 'Varela',
                        fontSize: 20.0,
                      )),
                )
              ]),
          Container(
              height: MediaQuery.of(context).size.height - 50.0,
              width: double.infinity,
              child: TabBarView(controller: _tabController, children: [
                CardPage(),
                CardPage(),
                CardPage(),
              ]))
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
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) => new Club()));
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
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) => new Contacts()));
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
      bottomNavigationBar: BottomBar(Color(0xFFF17532), Color(0xFF545D68),
          Color(0xFF545D68), Color(0xFF545D68)),
    );
  }
}
