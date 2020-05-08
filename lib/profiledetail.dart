import 'package:flutter/material.dart';
import 'package:sliit_app/profileedit.dart';
import './editdata.dart';
import 'package:http/http.dart' as http;
import './myCourses.dart';
import 'bottom_bar.dart';

void main() => runApp(ProfDetail());

class ProfDetail extends StatefulWidget {

  List list;
  int index;

  ProfDetail({this.index,this.list});

  @override
  _DetailState createState() => _DetailState();
}

class _DetailState extends State<ProfDetail> {

  double screenHeight ;

  void deleteData(){
    var url = "http://192.168.1.3:8020/sliit_app/profile.php";
    http.post(url,body: {
      'student_number':widget.list[widget.index]['student_number']
    });
  }

  @override
  Widget build(BuildContext context) {

    screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
     backgroundColor: Color.fromRGBO(133, 120, 255, 1),
      appBar: new AppBar(

        backgroundColor: Color.fromRGBO(133, 120, 255, 1),
        elevation: 6.0,
        centerTitle: true,
        leading: new IconButton(
          icon: new Icon(Icons.keyboard_backspace),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Padding(
//          new Text("${widget.list[widget.index]['cname']}"),
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
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            lowerHalf(context),
            upperHalf(context),
            detailsCard(context),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.orange[400],
        child: Icon(Icons.school),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomBar(Color(0xFF545D68),Colors.orange[400],Color(0xFF545D68),Color(0xFF545D68)),
    );
  }

  Widget detailsCard(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(top: screenHeight / 4),
          padding: EdgeInsets.only(left: 10, right: 10),
          height: 350.0,
          child: Card(
            color:Color.fromRGBO(133, 120, 255, 1).withOpacity(0.7),
            elevation: 10,
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                new Padding(padding: const EdgeInsets.only(top:30.0),),
                Center(
                  child: new Text("Profile Details",style: new TextStyle(fontSize: 28.0,fontWeight:FontWeight.w600, color: Colors.white, ),),
                ),
                new Padding(padding: const EdgeInsets.only(top:30.0),),
                Row(
                    children: <Widget>[
                      new Text('   '),
                      new Icon(Icons.open_with,color: Colors.white,size: 10,),
                      new Text('   '),
                      new Text("Fisrt Name : ${widget.list[widget.index]['first_name']}",style: new TextStyle(fontSize: 18.0, color:Colors.white),),
                    ]
                ),
                Row(
                    children: <Widget>[
                      new Text('   '),
                      new Icon(Icons.open_with,color: Colors.white,size: 10,),
                      new Text('   '),
                      new Text("Student Number : ${widget.list[widget.index]['student_number']}",style: new TextStyle(fontSize: 18.0, color:Colors.white),),
                    ]
                ),
                Row(
                    children: <Widget>[
                      new Text('   '),
                      new Icon(Icons.open_with,color: Colors.white,size: 10,),
                      new Text('   '),
                      new Text("Faculty : ${widget.list[widget.index]['faculty']}",style: new TextStyle(fontSize: 18.0, color:Colors.white),),
                    ]
                ),
                Row(
                    children: <Widget>[
                      new Text('   '),
                      new Icon(Icons.open_with,color: Colors.white,size: 10,),
                      new Text('   '),
                      new Text("Year : ${widget.list[widget.index]['year']}",style: new TextStyle(fontSize: 18.0, color:Colors.white),),
                    ]
                ),
                 Row(
                    children: <Widget>[
                      new Text('   '),
                      new Icon(Icons.open_with,color: Colors.white,size: 10,),
                      new Text('   '),
                      new Text("Password : ${widget.list[widget.index]['password']}",style: new TextStyle(fontSize: 18.0, color:Colors.white),),
                    ]
                ),
                new Padding(padding: const EdgeInsets.only(top:30.0),),
                new Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    new Text('       '),
                    new RaisedButton(
                      child: new Text("Update",style: new TextStyle( fontWeight: FontWeight.bold,fontSize: 18.0),),
                      color: Colors.orange[700],

                      padding: EdgeInsets.only(
                          left: 38, right: 38, top: 15, bottom: 15
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)
                      ),
                      textColor: Colors.white,
                      onPressed:()=>Navigator.of(context).push(
                          new MaterialPageRoute(
                            builder: (BuildContext context) => new ProfileEdit(list: widget.list,index: widget.index,),
                          )
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget upperHalf(BuildContext context) {
    return Container(
      height: screenHeight / 4,
      child: Image.asset(
        'assets/sliit2.jpg',
        fit: BoxFit.fill,
      ),
    );
  }

  Widget lowerHalf(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: screenHeight / 2,
        color: Color.fromRGBO(133, 120, 255, 1),
      ),
    );
  }
}