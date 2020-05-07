import 'package:flutter/material.dart';
import 'bottom_bar.dart';

void main() => runApp(Club());

class Club extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.blue,
              elevation: 6.0,
              centerTitle: true,
              leading: new IconButton(
                icon: new Icon(Icons.keyboard_backspace),
                onPressed: () => Navigator.of(context).pop(),
              ),
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
            body: body(context),
            floatingActionButton: FloatingActionButton(
              onPressed: () {},
              backgroundColor: Color(0xFFF17532),
              child: Icon(Icons.school),
            ),
            floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
            bottomNavigationBar: BottomBar(Color(0xFFF17532),Color(0xFF545D68),Color(0xFF545D68),Color(0xFF545D68)),
        )
    );
  }

  Widget body(BuildContext context) {
    return ListView(
      itemExtent: 95.0,
      children: ListTile.divideTiles(
        context: context,
        tiles: [
          // Divider( height: 0.02, color: Colors.blue,),
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25.0),
              side: BorderSide(color: Colors.blueAccent),
            ),
            child: ExpansionTile(
                leading:Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: Image.asset('assets/club-interactive.jpg', height: 500,  width: 90,fit: BoxFit.fitWidth),
                ),
                title: Text('Student Interactive Society',  style: TextStyle(fontFamily: 'Scheherazade',color: Colors.blueGrey[800],fontWeight: FontWeight.bold,fontSize: 16)),
                children: [
                  Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text('Student Interactive Society'))
                ]),
          ),
          Card(
             shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25.0),
              side: BorderSide(color: Colors.blueAccent),
            ),
            child:   ExpansionTile(
                leading: Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child:Image.asset('assets/club-fcsc.jpg', height: 500,  width: 90,   fit: BoxFit.fitWidth,),
                ),
                title: Text('Faculty of Computing Student Society',  style: TextStyle(fontFamily: 'Scheherazade',color: Colors.blueGrey[800],fontWeight: FontWeight.bold,fontSize: 16)),
                children: [
                  Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text('Faculty of Computing Student Society'))
                ]),
          ),
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25.0),
              side: BorderSide(color: Colors.blueAccent),
            ),
            child:ExpansionTile(
                leading: Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child:Image.asset('assets/club-fbsc.jpg', height:  500,  width: 90,   fit: BoxFit.fitWidth,),
                ),
                title: Text('Faculty of Business Student Society',style: TextStyle(fontFamily: 'Scheherazade',color: Colors.blueGrey[800],fontWeight: FontWeight.bold,fontSize: 16)),
                children: [
                  Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text('Faculty of Computing Student Society'))
                ]),
          ),
          Card(
              shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25.0),
              side: BorderSide(color: Colors.blueAccent),
            ),
            child:ExpansionTile(
                leading: Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: Image.asset('assets/club-fesc.jpg', height: 500,  width: 90,   fit: BoxFit.fitWidth,),
                ),
                title: Text('Faculty of Engineering Student Society',style: TextStyle(fontFamily: 'Scheherazade',color: Colors.blueGrey[800],fontWeight: FontWeight.bold,fontSize: 16)),
                children: [
                  Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text('Faculty of Engineering Student Society'))
                ]),
          ),
         Card(
               shape: RoundedRectangleBorder(
               borderRadius: BorderRadius.circular(25.0),
               side: BorderSide(color: Colors.blueAccent),
             ),
               child: ExpansionTile(
                  leading: Padding(
                    padding: const EdgeInsets.only(top: 15.0),
                    child: Image.asset('assets/club-gaming.jpg', height: 500,  width: 90,   fit: BoxFit.fitWidth,),
                  ),
                  title: Text('SLIIT Gaming Community',style: TextStyle(fontFamily: 'Scheherazade',color: Colors.blueGrey[800],fontWeight: FontWeight.bold,fontSize: 16)),
                  children: [
                  Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Text('SLIIT Gaming Community'))
                  ]),

          ),
          Card(
             shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25.0),
              side: BorderSide(color: Colors.blueAccent),
            ),
            child:ExpansionTile(
                leading: Padding(
                 padding: const EdgeInsets.only(top: 15.0),
                 child: Image.asset('assets/club-sports.jpg', height: 500,  width: 90,   fit: BoxFit.fitWidth,),
                ),
                title: Text('SLIIT Sportss Council',style: TextStyle(fontFamily: 'Scheherazade',color: Colors.blueGrey[800],fontWeight: FontWeight.bold,fontSize: 16)),
                children: [
                  Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text('SLIIT Sportss Council'))
                ]),
          ),
          Card(
              shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25.0),
              side: BorderSide(color: Colors.blueAccent),
            ),
            child:ExpansionTile(
                leading: Padding(
                    padding: const EdgeInsets.only(top: 15.0),
                    child: Image.asset('assets/club-art.jpg', height: 500,  width: 90,   fit: BoxFit.fitWidth,),
                ),
                title: Text('Art Circle',style: TextStyle(fontFamily: 'Scheherazade',color: Colors.blueGrey[800],fontWeight: FontWeight.bold,fontSize: 16)),
                children: [
                  Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text('Student Interactive Society'))
                ]),
          ),
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25.0),
              side: BorderSide(color: Colors.blueAccent),
            ),
            child:ExpansionTile(
                leading: Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: Image.asset('assets/club-aiesec.jpg', height: 500,  width: 90,   fit: BoxFit.fitWidth,),
                ),
                title: Text('SLIIT AIESEC',style: TextStyle(fontFamily: 'Scheherazade',color: Colors.blueGrey[800],fontWeight: FontWeight.bold,fontSize: 16)),
                children: [
                  Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text('Student Interactive Society'))
                ]),
          ),
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25.0),
              side: BorderSide(color: Colors.blueAccent),
            ),
            child:ExpansionTile(
                leading:Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: Image.asset('assets/club-leo.jpg', height: 500,  width: 90,   fit: BoxFit.fitWidth,),
                ) ,
                title: Text('LEO Club',style: TextStyle(fontFamily: 'Scheherazade',color: Colors.blueGrey[800],fontWeight: FontWeight.bold,fontSize: 16)),
                children: [
                  Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text('Student Interactive Society'))
                ]),
          ),
        ],
      ).toList(),
    );
  }

}

