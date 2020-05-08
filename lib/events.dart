import 'package:flutter/material.dart';

import 'Eventdetail.dart';
import 'bottom_bar.dart';
import 'card_detail.dart';

class Events extends StatelessWidget {
  final assetPath, cardname;

  Events({this.assetPath, this.cardname});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(133, 120, 255, 1),
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
        children: <Widget>[
          SizedBox(height: 15.0),
          Container(
              padding: EdgeInsets.only(right: 15.0),
              width: MediaQuery.of(context).size.width - 30.0,
              height: MediaQuery.of(context).size.height - 10.0,
              child: ListView(
                children: <Widget>[
                  SizedBox(height: 20.0),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                'Recent Events',
                style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
              ),
                  ),
              SizedBox(height: 20.0),
                  _buildCard(
                      'The Grand Finale of SLIIT Softskills+ 2020',
                      'assets/ev1.jpg',
                      90,
                      160,
                      'The Grand Finale of SLIIT Softskills+ 2020 organized by SLIIT Business School was successfully held at Malabe Campus, Main Auditorium on the 12th of March 2020 with a participation of 28 school teams representing all provinces in Sri Lanka. The renowned film director Dr. Somaratne Dissanayake had been invited as the chief guest of this event. Eheliyagoda Central College won the Championship of this competition and Ananda Balika National School – Hingurakgoda was the 1st Runner – Up. The team from Mahamaya Girls’ College Kandy was titled as 2nd Runner- Up.',
                      context),
                  _buildCard('The preliminary rounds of SLIIT Softskills+ 2020 was successfully held at Baddulla', 'assets/ev2.jpg', 90,
                      160, 'The preliminary rounds of SLIIT Softskills+ 2020 organized by SLIIT Business School was successfully held at Baddulla on 06th of March 2020 with a participation of 35 teams. The winners will be competing at the Grand Finale on the 12th of March 2020.',context),
                  _buildCard('The preliminary rounds of SLIIT Softskills+ 2020', 'assets/ev3.jpg', 80,
                      150, 'The preliminary rounds of SLIIT Softskills+ 2020 organized by SLIIT Business School was successfully held at Malabe campus on 03rd March 2020 with a participation of 33 teams. The winners will be competing at the Grand Finale on the 12th of March 2020.', context),
                  _buildCard('Congratulations to all graduates!!', 'assets/graduate.jpg', 90, 150,
                      'Here are a few memorable moments caught from the day. Congratulations to all graduates!! ', context),
                  // _buildCard('Graduate Studies', 'assets/graduate.jpg',
                  //     90, 160, context)
                ],
              )),
          SizedBox(height: 15.0)
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

Widget _buildCard(
      String name, String imgPath, double h, double w, String dis, context) {
    return Padding(
        padding: EdgeInsets.only(top: 5.0, bottom: 5.0, left: 5.0, right: 5.0),
        child: InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) =>
                      EventDetail(assetPath: imgPath, cardname: name, dis2: dis,)));
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
                child: Row(children: [
                  Row(mainAxisAlignment: MainAxisAlignment.end, children: []),
                  Hero(
                      tag: imgPath,
                      child: Container(
                          height: h,
                          width: w,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(imgPath),
                                  fit: BoxFit.contain)))),
                  Flexible(
                                      child: Padding(
                        padding: EdgeInsets.only(right: 5.0),
                        child: Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                SizedBox(height: 10.0),
                                 Flexible(
                                                                    child: Text(name,
                                        style: TextStyle(
                                          
                                            color: Colors.black87,
                                            fontFamily: 'Varela',
                                            fontWeight: FontWeight.bold,
                                            fontSize: 13.0)),
                                 ),
                                
                                
                                Visibility(
                                  child: Text(dis,
                                      style: TextStyle(
                                          color: Colors.black87,
                                          fontFamily: 'Varela',
                                          fontWeight: FontWeight.bold,
                                          fontSize: 17.0)),
                                 visible: false,
                                ),
                                 
                              ]),
                        )),
                  )
                ]))));
  }
}
