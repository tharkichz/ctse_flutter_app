import 'package:flutter/material.dart';
import 'card_detail.dart';


class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: ListView(
        children: <Widget>[
          SizedBox(height: 15.0),
          Container(
              padding: EdgeInsets.only(right: 15.0),
              width: MediaQuery.of(context).size.width - 30.0,
              height: MediaQuery.of(context).size.height - 50.0,
              child: GridView.count(
                crossAxisCount: 2,
                primary: false,
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 15.0,
                childAspectRatio: 0.8,
                children: <Widget>[
                  _buildCard('News',  'assets/d.png',
                      false, false, context),
                  _buildCard('Events', 'assets/b.png',
                      true, false, context),
                  _buildCard('Clubs',
                      'assets/c.png', false, true, context),
                  _buildCard('Awards', 'assets/a.png',
                      false, false, context)
                ],
              )),
          SizedBox(height: 15.0)
        ],
      ),
    );
  }

  Widget _buildCard(String name, String imgPath, bool added,
      bool isFavorite, context) {
    return Padding(
        padding: EdgeInsets.only(top: 5.0, bottom: 5.0, left: 5.0, right: 5.0),
        child: InkWell(
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => CardDetail(
                    assetPath: imgPath,
                    cardname: name
                  )));
            },
            child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 3.0,
                          blurRadius: 5.0)
                    ],
                    color: Colors.white),
                child: Column(children: [
                  Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                          ])),
                  Hero(
                      tag: imgPath,
                      child: Container(
                          height: 100.0,
                          width: 200.0,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(imgPath),
                                  fit: BoxFit.contain)))),
                                  
                  Padding(
                      padding: EdgeInsets.all(12.0),
                      child: Container(color: Color(0xFFEBEBEB), height: 1.0)),
                  Padding(
                      padding: EdgeInsets.only(left: 5.0, right: 5.0),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                              SizedBox(height: 10.0),
                                Center(
                                  child: Text(name,
                                      style: TextStyle(
                                          color: Colors.black87,
                                          fontFamily: 'Varela',
                                          fontWeight: FontWeight.bold,
                                          fontSize: 17.0)),
                                ),
                                IconButton(
                                    icon: Icon(Icons.arrow_forward, color: Color(0xFF545D68)),
                                    onPressed: () {},
                                ),
                        
                          ]))
                ]))));
  }
}