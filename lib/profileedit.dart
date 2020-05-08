import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:sliit_app/pro.dart';
import 'bottom_bar.dart';

class ProfileEdit extends StatefulWidget {

  final List list;
  final int index;

  ProfileEdit({this.list,this.index});

  @override
  _EditDataState createState() => _EditDataState();
}

class _EditDataState extends State<ProfileEdit> {

  double screenHeight ;

  TextEditingController controllerName ;
  TextEditingController controllerFaculty ;
  TextEditingController controllerYear ;
  TextEditingController controllerPassword ;
  

  void editData(){
    var url = "http://192.168.1.3:8020/sliit_app/editprofile.php";
    http.post(url,body: {
      "student_number": widget.list[widget.index]['student_number'],
      "first_name": controllerName.text,
      "faculty": controllerFaculty.text,
      "year" : controllerYear.text,
      "password": controllerPassword.text,
    });
  }

  @override
  void initState() {
   
    controllerName = new TextEditingController(text: widget.list[widget.index]['first_name']) ;
    controllerFaculty = new TextEditingController(text: widget.list[widget.index]['faculty']) ;
    controllerYear = new TextEditingController(text: widget.list[widget.index]['year']) ;
    controllerPassword = new TextEditingController(text: widget.list[widget.index]['password']) ;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    screenHeight = MediaQuery.of(context).size.height;

    return new Scaffold(
       backgroundColor: Color.fromRGBO(133, 120, 255, 1),
      appBar: new AppBar(
        backgroundColor: Color.fromRGBO(133, 115, 255, 1),
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
      body: Container(
        margin: EdgeInsets.only(top: screenHeight*0.05 ),
        padding: EdgeInsets.only(left: 10, right: 10),
        child:Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          elevation: 8,
          child:Padding(
            padding: const EdgeInsets.all(30.0),
            child:ListView(
              children: <Widget>[
                new Column(
                  children: <Widget>[
                    new TextField(
                      controller: controllerName,
                      decoration: new InputDecoration(
                          hintText: "First Name",
                          labelText: "First Name"
                      ),
                    ),
                    new TextField(
                      controller: controllerFaculty,
                      decoration: new InputDecoration(
                          hintText: "Faculty",
                          labelText: "Faculty"
                      ),
                    ),
                    new TextField(
                      controller: controllerYear,
                      decoration: new InputDecoration(
                          hintText: "Field of Study",
                          labelText: "Year"
                      ),
                    ),
                    new TextField(
                      controller: controllerPassword,
                      obscureText: true,
                      decoration: new InputDecoration(
                          hintText: "Password",
                          labelText: "Password"
                      ),
                    ),
                    new Padding(padding: const EdgeInsets.all(10.0),),
                    new RaisedButton(
                        child: new Text("Edit Data"),
                        color: Colors.orange[400],
                        textColor: Colors.white,
                        onPressed: (){
                          editData();
                          Navigator.of(context).push(
                              new MaterialPageRoute(
                                  builder: (BuildContext context) => new Profile()
                              )
                          );//To redirect to the main page-list
                        }
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ) ,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.orange[400],
        child: Icon(Icons.school),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomBar(Color(0xFF545D68),Colors.orange[400],Color(0xFF545D68),Color(0xFF545D68)),
    );
  }
}
