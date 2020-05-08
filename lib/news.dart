import 'package:flutter/material.dart';

import 'bottom_bar.dart';

class News extends StatelessWidget {
  final assetPath, cardname;

  News({this.assetPath, this.cardname});
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
      body: ListView(
        children: [
        SizedBox(height: 15.0),
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
        Center(
          child: Text(cardname,
              style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Varela',
                  fontWeight: FontWeight.bold,
                  fontSize: 28.0)),
        ),
        SizedBox(height: 20.0),
        Center(
          child: Container(
            width: MediaQuery.of(context).size.width - 50.0,
            child: Text(
                'We are a leading non-state degree awarding institute approved by the University Grants Commission (UGC) under the Universities Act. We are also members of the Association of Commonwealth Universities (ACU), as well as the International Association of Universities (IAU), and the first Sri Lankan institute to be accredited by the Institution of Engineering & Technology, UK.',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: 'Varela',
                    fontSize: 16.0,
                    color: Color(0xFFB4B8B9))),
          ),
        ),
        SizedBox(height: 20.0),
        Padding(
            padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
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
                            _card2('20 Years', 'of Existence', 'assets/s1.png'),
                            _card2('5000 Years ', 'of Experience',
                                'assets/s2.png'),
                            _card2('300+', 'Faculty Members', 'assets/s3.png'),
                          ],
                        ))
                  ],
                )))
      ]),
      

      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Color(0xFFF17532),
        child: Icon(Icons.school),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomBar(Color(0xFFF17532),Color(0xFF545D68),Color(0xFF545D68),Color(0xFF545D68)),
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
