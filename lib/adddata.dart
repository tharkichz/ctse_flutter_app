import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'bottom_bar.dart';

class AddData extends StatefulWidget {
  @override
  _AddDataState createState() => _AddDataState();
}

class _AddDataState extends State<AddData> {

  double screenHeight ;

  TextEditingController controllerCode = new TextEditingController();
  TextEditingController controllerName = new TextEditingController();
  TextEditingController controllerField = new TextEditingController();
  TextEditingController controllerLessons = new TextEditingController();
  TextEditingController controllerDuration = new TextEditingController();
  TextEditingController controllerInstructor = new TextEditingController();
  TextEditingController controllerCompleted= new TextEditingController();
  TextEditingController controllerStatus = new TextEditingController();

  void addData(){
    var url = "http://10.0.2.2:8020/sliit_app/adddata.php";
    http.post(url,body:{
      "code" : controllerCode.text,
      "cname": controllerName.text,
      "field" : controllerField.text,
      "lessons": controllerLessons.text,
      "duration": controllerDuration.text,
      "instructor": controllerInstructor.text,
      "completed": controllerCompleted.text,
      "status": controllerStatus.text,
    });
  }

  @override
  Widget build(BuildContext context) {

    screenHeight = MediaQuery.of(context).size.height;

    return new Scaffold(
        appBar: new AppBar(
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
        body:Container(
            margin: EdgeInsets.only(top: screenHeight*0.05 ),
            padding: EdgeInsets.only(left: 10, right: 10),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              elevation: 8,
              child:Padding(
                padding: const EdgeInsets.all(30.0),
                child:ListView(
                  children: <Widget>[
                    new Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        new TextField(
                          cursorWidth: 2.0,
                          controller: controllerCode,
                          decoration: new InputDecoration(
                              hintText: "Course Code",
                              labelText: "Course Code"
                          ),
                        ),
                        new TextField(
                          controller: controllerName,
                          decoration: new InputDecoration(
                              hintText: "Course Name",
                              labelText: "Course Name"
                          ),
                        ),
                        new TextField(
                          controller: controllerField,
                          decoration: new InputDecoration(
                              hintText: "Field of Study",
                              labelText: "Field of Study"
                          ),
                        ),
                        new TextField(
                          controller: controllerLessons,
                          decoration: new InputDecoration(
                              hintText: "Lessons Count",
                              labelText: "Lessons Count"
                          ),
                        ),
                        new TextField(
                          controller: controllerDuration,
                          decoration: new InputDecoration(
                              hintText: "Duration (Weeks)",
                              labelText: "Duration "
                          ),
                        ),
                        new TextField(
                          controller: controllerInstructor,
                          decoration: new InputDecoration(
                              hintText: "Instructor",
                              labelText: "Instructor"
                          ),
                        ),
                        new TextField(
                          controller: controllerCompleted,
                          decoration: new InputDecoration(
                              hintText: "Completed Lessons Count",
                              labelText: "Completed Lessons Count"
                          ),
                        ),
                        new TextField(
                          controller: controllerStatus,
                          decoration: new InputDecoration(
                              hintText: "Status",
                              labelText: "Status"
                          ),
                        ),
                        new Padding(padding: const EdgeInsets.all(10.0),),
                        new RaisedButton(
                            child: new Text("Add Course"),
                            color: Color(0xFF0FB744),
                            textColor: Colors.white,
                            onPressed: (){
                              addData();
                              Navigator.pop(context);//To redirect to the main page-list
                            }
                        )
                      ],
                    ),
                  ],
                ),
              ),

            )

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
