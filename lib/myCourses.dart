import 'package:flutter/material.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'dart:convert';
import './detail.dart';
import './adddata.dart';
import 'bottom_bar.dart';


void main(){
  runApp(new MaterialApp(
    title: "My Store",
    home: new MyCourses(),
  ));
}

class MyCourses extends StatefulWidget{
  @override
  _HomeState createState() => new _HomeState();
}

class _HomeState extends State<MyCourses>{

  Future<List> getData() async{
    final response = await http.get("http://192.168.1.3:8020/sliit_app/getdata.php");
    return json.decode(response.body);
  }

  @override
  Widget build(BuildContext context){
    return new Scaffold(
      backgroundColor: Colors.white,
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
//        floatingActionButton: new FloatingActionButton(
//          child: new Icon(Icons.add,),
//          onPressed: ()=>Navigator.of(context).push(
//              new MaterialPageRoute(
//                builder:(BuildContext context) => new AddData(),
//              )
//          ),
//        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Color(0xFFF17532),
          child: Icon(Icons.school),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomBar(Color(0xFFF17532),Color(0xFF545D68),Color(0xFF545D68),Color(0xFF545D68)),
        body: Stack(
            children: <Widget>[
              Container(
                child: new FutureBuilder<List>(
                  future: getData(),
                  builder: (context,snapshot){
                    if(snapshot.hasError) print (snapshot.error);
                    return snapshot.hasData
                        ? new ItemList(list: snapshot.data,)
                        : new Center(child: new CircularProgressIndicator(),);
                  },
                ),
               ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:<Widget>[
                  Align(
                    //alignment: Alignment.bottomCenter,
                    alignment:Alignment(0,0.85),
                    child: new RaisedButton(
                        padding: const EdgeInsets.all(8.0),
                        child: new Text("Add To List"),
                        color: Color(0xFF0FB744),
                        textColor: Colors.white,
                        onPressed: (){
                          Navigator.of(context).push(
                              new MaterialPageRoute(
                                builder:(BuildContext context) => new AddData(),
                              ),
                          );
                        }
                    )
                ),
               ]
              ),

          ]
        )

    );
  }

}

class ItemList extends StatelessWidget{

  final List list;
  ItemList({this.list});

  @override
  Widget build(BuildContext context) {

    return new ListView.builder(
      itemCount: list == null ? 0: list.length,
      itemBuilder: (context, i){
        return new Container(
          padding: const EdgeInsets.all(5.0),
          child: new GestureDetector(
            onTap: ()=>Navigator.of(context).push(
                new MaterialPageRoute(
                    builder: (BuildContext)=>new Detail(list:list ,index:i ,)
                )
            ),
            child: new Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
                side: BorderSide(color: Colors.blueAccent),
              ),
              child: new ListTile(
                title: new Text(list[i]['cname'],style: new TextStyle(color:Color(0xFF163B40),fontWeight:FontWeight.w500 )),
                leading: new Icon(Icons.book,color: Colors.blue,),
                subtitle: new Text("Field of Study :${list[i]['field']}"),
              ),
            ),
          ),
        );
      },
    );
  }

}