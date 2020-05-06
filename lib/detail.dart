import 'package:flutter/material.dart';
import './editdata.dart';
import 'package:http/http.dart' as http;
import './myCourses.dart';
import 'bottom_bar.dart';

void main() => runApp(Detail());

class Detail extends StatefulWidget {

  List list;
  int index;

  Detail({this.index,this.list});

  @override
  _DetailState createState() => _DetailState();
}

class _DetailState extends State<Detail> {

  double screenHeight ;

  void deleteData(){
    var url = "http://10.0.2.2:8020/sliit_app/deleteData.php";
    http.post(url,body: {
      'cid':widget.list[widget.index]['cid']
    });
  }

  void confirm(){
    AlertDialog alertDialog = new AlertDialog(
      content: new Text("Are You Sure want to delete '${widget.list[widget.index]['cname']}'") ,
      actions: <Widget>[
        new RaisedButton(
            child: new Text("OK",style: new TextStyle(color: Colors.white),),
            color: Colors.redAccent,
            onPressed:(){
              deleteData();
              Navigator.of(context).push(
                  new MaterialPageRoute(
                      builder: (BuildContext context) => new MyCourses()
                  )
              );//To redirect to the main page-list
            }
        ),
        new RaisedButton(
          child: new Text("Cancel",style: new TextStyle(color: Colors.white),),
          color: Colors.lightGreen,
          onPressed:()=> Navigator.pop(context),
        )
      ],
    );

    showDialog(context: context,child: alertDialog);
  }

  @override
  Widget build(BuildContext context) {

    screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: new AppBar(

        backgroundColor: Colors.blue,
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
        backgroundColor: Color(0xFFF17532),
        child: Icon(Icons.school),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomBar(Color(0xFFF17532),Color(0xFF545D68),Color(0xFF545D68),Color(0xFF545D68)),
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
            color: Color(0xFF2E5F65 ).withOpacity(0.7),
            elevation: 10,
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                new Padding(padding: const EdgeInsets.only(top:30.0),),
                Center(
                  child: new Text(widget.list[widget.index]['cname'],style: new TextStyle(fontSize: 20.0,fontWeight:FontWeight.w600, color: Colors.white, ),),
                ),
                new Padding(padding: const EdgeInsets.only(top:30.0),),
                Row(
                    children: <Widget>[
                      new Text('   '),
                      new Icon(Icons.open_with,color: Colors.white,size: 10,),
                      new Text('   '),
                      new Text("Course Code :  ${widget.list[widget.index]['code']}",style: new TextStyle(fontSize: 15.0, color:Colors.white),),
                    ]
                ),
                Row(
                    children: <Widget>[
                      new Text('   '),
                      new Icon(Icons.open_with,color: Colors.white,size: 10,),
                      new Text('   '),
                      new Text("Field of Study : ${widget.list[widget.index]['field']}",style: new TextStyle(fontSize: 15.0, color:Colors.white),),
                    ]
                ),
                Row(
                    children: <Widget>[
                      new Text('   '),
                      new Icon(Icons.open_with,color: Colors.white,size: 10,),
                      new Text('   '),
                      new Text("Total Lessons Count : ${widget.list[widget.index]['lessons']}",style: new TextStyle(fontSize: 15.0, color:Colors.white),),
                    ]
                ),
                Row(
                    children: <Widget>[
                      new Text('   '),
                      new Icon(Icons.open_with,color: Colors.white,size: 10,),
                      new Text('   '),
                      new Text("Duration : ${widget.list[widget.index]['duration']}",style: new TextStyle(fontSize: 15.0, color:Colors.white),),
                    ]
                ),
                Row(
                    children: <Widget>[
                      new Text('   '),
                      new Icon(Icons.open_with,color: Colors.white,size: 10,),
                      new Text('   '),
                      new Text("Instructor : ${widget.list[widget.index]['instructor']}",style: new TextStyle(fontSize: 15.0, color:Colors.white),),
                    ]
                ),
                Row(
                    children: <Widget>[
                      new Text('   '),
                      new Icon(Icons.open_with,color: Colors.white,size: 10,),
                      new Text('   '),
                      new Text("Completed Lessons Count : ${widget.list[widget.index]['completed']}",style: new TextStyle(fontSize: 15.0, color:Colors.white),),
                    ]
                ),
                Row(
                    children: <Widget>[
                      new Text('   '),
                      new Icon(Icons.open_with,color: Colors.white,size: 10,),
                      new Text('   '),
                      new Text("Status: ${widget.list[widget.index]['status']}",style: new TextStyle(fontSize: 15.0, color:Colors.white),),
                    ]
                ),
                new Padding(padding: const EdgeInsets.only(top:30.0),),
                new Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    new Text('       '),
                    new RaisedButton(
                      child: new Text("Update"),
                      color: Color(0xFF369C3A),
                      padding: EdgeInsets.only(
                          left: 38, right: 38, top: 15, bottom: 15
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)
                      ),
                      textColor: Colors.white,
                      onPressed:()=>Navigator.of(context).push(
                          new MaterialPageRoute(
                            builder: (BuildContext context) => new EditData(list: widget.list,index: widget.index,),
                          )
                      ),
                    ),
                    new Text('   '),
                    new RaisedButton(
                      child: new Text("Un-Enrol"),
                      color: Color(0xFFEE1C3F) ,
                      padding: EdgeInsets.only(
                          left: 38, right: 38, top: 15, bottom: 15
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)
                      ),
                      textColor: Colors.white,
                      onPressed:()=>confirm() ,
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
      height: screenHeight / 2,
      child: Image.asset(
        'assets/interFace16.jpg',
        fit: BoxFit.fill,
      ),
    );
  }

  Widget lowerHalf(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: screenHeight / 2,
        color: Color(0xFFECF0F3),
      ),
    );
  }
}