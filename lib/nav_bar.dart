import 'package:flutter/material.dart';

void main() => runApp(Club());

class Club extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.deepPurple[900],
            leading: new IconButton(
              icon: new Icon(Icons.keyboard_backspace),
              onPressed: () => Navigator.of(context).pop(),
            ),
                title: Text('Clubs and Societies'),
          ),
          body: body(context)
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
         ExpansionTile(
              leading:Image.asset('assets/club-interactive.jpg', height: 200,  width: 150,fit: BoxFit.fitWidth),
              title: Text('Student Interactive Society',  style: TextStyle(fontFamily: 'Scheherazade',color: Colors.blueGrey[800],fontWeight: FontWeight.bold,fontSize: 13)),
              children: [
                Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Student Interactive Society'))
              ]),
          ExpansionTile(
              leading: Image.asset('assets/club-fcsc.jpg', height: 250,  width: 150,   fit: BoxFit.fitWidth,),
              title: Text('Faculty of Computing Student Society',  style: TextStyle(fontFamily: 'Scheherazade',color: Colors.blueGrey[800],fontWeight: FontWeight.bold,fontSize: 13)),
              children: [
                Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Faculty of Computing Student Society'))
              ]),
          ExpansionTile(
              leading: Image.asset('assets/club-fbsc.jpg', height:  200,  width: 150,   fit: BoxFit.fitWidth,),
              title: Text('Faculty of Business Student Society',style: TextStyle(fontFamily: 'Scheherazade',color: Colors.blueGrey[800],fontWeight: FontWeight.bold,fontSize: 13)),
              children: [
                Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Faculty of Computing Student Society'))
              ]),
          ExpansionTile(
              leading: Image.asset('assets/club-fesc.jpg', height: 200,  width: 150,   fit: BoxFit.fitWidth,),
              title: Text('Faculty of Engineering Student Society',style: TextStyle(fontFamily: 'Scheherazade',color: Colors.blueGrey[800],fontWeight: FontWeight.bold,fontSize: 13)),
              children: [
                Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Faculty of Engineering Student Society'))
              ]),
          ExpansionTile(
              leading: Image.asset('assets/club-gaming.jpg', height: 200,  width: 150,   fit: BoxFit.fitWidth,),
              title: Text('SLIIT Gaming Community',style: TextStyle(fontFamily: 'Scheherazade',color: Colors.blueGrey[800],fontWeight: FontWeight.bold,fontSize: 13)),
              children: [
                Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('SLIIT Gaming Community'))
              ]),
          ExpansionTile(
              leading: Image.asset('assets/club-sports.jpg', height: 200,  width: 150,   fit: BoxFit.fitWidth,),
              title: Text('SLIIT Sportss Council',style: TextStyle(fontFamily: 'Scheherazade',color: Colors.blueGrey[800],fontWeight: FontWeight.bold,fontSize: 13)),
              children: [
                Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('SLIIT Sportss Council'))
              ]),
          ExpansionTile(
              leading: Image.asset('assets/club-art.jpg', height: 200,  width: 150,   fit: BoxFit.fitWidth,),
              title: Text('Art Circle',style: TextStyle(fontFamily: 'Scheherazade',color: Colors.blueGrey[800],fontWeight: FontWeight.bold,fontSize: 13)),
              children: [
                Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Student Interactive Society'))
              ]),
          ExpansionTile(
              leading: Image.asset('assets/club-aiesec.jpg', height: 200,  width: 150,   fit: BoxFit.fitWidth,),
              title: Text('SLIIT AIESEC',style: TextStyle(fontFamily: 'Scheherazade',color: Colors.blueGrey[800],fontWeight: FontWeight.bold,fontSize: 13)),
              children: [
                Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Student Interactive Society'))
              ]),
          ExpansionTile(
              leading: Image.asset('assets/club-leo.jpg', height: 200,  width: 150,   fit: BoxFit.fitWidth,),
              title: Text('LEO Club',style: TextStyle(fontFamily: 'Scheherazade',color: Colors.blueGrey[800],fontWeight: FontWeight.bold,fontSize: 13)),
              children: [
                Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Student Interactive Society'))
              ]),
        ],
      ).toList(),
    );
  }

}

