import 'package:flutter/material.dart';
import 'bottom_bar.dart';

void main() {
  runApp(Contacts());
}

class Contacts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainScreen(),
      title: 'Contct Us',
      theme: appTheme,
    );
  }
}

ThemeData appTheme = ThemeData(
  fontFamily: 'Oxygen',
  primaryColor: Colors.deepPurple[900],
);

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          CurvedListItem(
            title: '+94 11 754 4801',
            time: 'Telephone',
            image: AssetImage('assets/icon_phone.png'),
            color: Colors.white,
            nextColor: Colors.blue[200],
          ),
          CurvedListItem(
            title: '+94 11 241 3901',
            time: 'Fax',
            image: AssetImage('assets/icon_fax.png'),
            color: Colors.blue[200],
            nextColor: Colors.teal,
          ),
          CurvedListItem(
            title: 'info@sliit.lk',
            time: 'Email',
            image: AssetImage('assets/icon_email.png'),
            color: Colors.teal,
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Color(0xFFF17532),
        child: Icon(Icons.school),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomBar(Color(0xFFF17532),Color(0xFF545D68),Color(0xFF545D68),Color(0xFF545D68)),
    );
  }
}

class CurvedListItem extends StatelessWidget {
  const CurvedListItem({
    this.title,
    this.time,
    this.icon,
    this.people,
    this.color,
    this.nextColor,
    this.image,

  });

  final String title;
  final String time;
  final String people;
  final IconData icon;
  final Color color;
  final Color nextColor;
  final AssetImage image;


  @override
  Widget build(BuildContext context) {
    return Container(
      color: nextColor,
      child: Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(80.0),
          ),
        ),
        padding: const EdgeInsets.only(
          left: 32,
          top: 80.0,
          bottom: 50,
        ),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                time,
                style: TextStyle(color: Colors.blueGrey[900], fontSize: 16),
              ),
              const SizedBox(
                height: 2,
              ),
              Row(
                children: <Widget>[
                CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.transparent,
                  child: CircleAvatar(
                    radius: 10,
                    backgroundImage: image,
                  ),
                ),
                Text(
                  title,
                  style: TextStyle(
                      color: Colors.blueGrey[900],
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
               ]
              ),
              Row(),
            ]),
      ),
    );
  }
}