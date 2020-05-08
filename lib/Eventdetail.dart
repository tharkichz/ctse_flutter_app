import 'package:flutter/material.dart';

import 'bottom_bar.dart';

class EventDetail extends StatelessWidget {
  final assetPath, cardname, dis2,d12,d22;

  EventDetail({this.assetPath, this.cardname, this.dis2, this.d12, this.d22});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(133, 120, 255, 1),
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
      body: ListView(children: [
        SizedBox(height: 20.0),
        Padding(
          padding: EdgeInsets.only(left: 20.0),
        ),
        SizedBox(height: 15.0),
        Hero(
            tag: assetPath,
            child: Image.asset(assetPath,
                height: 160.0, width: 100.0, fit: BoxFit.contain)),
        SizedBox(height: 20.0),
        SizedBox(height: 10.0),
    
          Padding(
            padding: const EdgeInsets.only(left:20.0),
            child: Text(cardname,
                style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Varela',
                    fontWeight: FontWeight.bold,
                    fontSize: 28.0)),
          ),
  
        SizedBox(height: 30.0),
        Center(
          child: Container(
            width: MediaQuery.of(context).size.width - 50.0,
            child: Text(dis2,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: 'Varela',
                    fontSize: 16.0,
                    color: Color(0xFFB4B8B9))),
          ),
        ),
        SizedBox(height: 20.0),
       
      ]),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.orange[400],
        child: Icon(Icons.school),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomBar(Colors.orange[400], Color(0xFF545D68),
          Color(0xFF545D68), Color(0xFF545D68)),
    );
  }


   Widget _card22(String d1, String d2, String imgPath) {
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
                            Text(d1,
                                style: TextStyle(
                                    color: Colors.black87,
                                    fontFamily: 'Varela',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17.0)),
                            Text(d2,
                                style: TextStyle(
                                    color: Colors.black87,
                                    fontFamily: 'Varela',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 10.0)),
                          ]))
                ]))));
  }

  Widget _card2(String name, String dis, String imgPath) {
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
                            Text(dis,
                                style: TextStyle(
                                    color: Colors.black87,
                                    fontFamily: 'Varela',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 10.0)),
                          ]))
                ]))));
  }
}
