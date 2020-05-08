import 'package:flutter/material.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'package:sliit_app/profiledetail.dart';
import 'dart:convert';
import './detail.dart';
import './adddata.dart';
import 'bottom_bar.dart';


void main(){
  runApp(new MaterialApp(
    title: "My Store",
    home: new Profile(),
  ));
}

class Profile extends StatefulWidget{
  @override
  _HomeState createState() => new _HomeState();
}

class _HomeState extends State<Profile>{

  Future<List> getData() async{
    final response = await http.get("http://192.168.1.3:8020/sliit_app/profile.php");
    return json.decode(response.body);
  }

  @override
  Widget build(BuildContext context){
    return new Scaffold(
     backgroundColor: Color.fromRGBO(133, 120, 255, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(133, 115, 255, 1),
        elevation: 6.0,
        centerTitle: true,
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
        
        body: Container(
          
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
        floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.orange[400],
        child: Icon(Icons.school),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomBar(Color(0xFF545D68), Colors.orange[400],
          Color(0xFF545D68), Color(0xFF545D68)),
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
          padding: const EdgeInsets.all(10.0),
          child: new GestureDetector(
            onTap: ()=>Navigator.of(context).push(
                new MaterialPageRoute(
                    builder: (BuildContext)=>new ProfDetail(list:list ,index:i ,)
                )
            ),
            child: new Card(
              child: new ListTile(
                title: new Text(list[i]['student_number'],
                style: new TextStyle(
                  color:Color(0xFF163B40),
                  fontWeight:FontWeight.w500 ,
                   fontFamily: 'Montserrat',
                    fontSize: 20.0,
                  )),
                leading: new Icon(Icons.widgets,color: Colors.indigo,),
                subtitle: new Text("Faculty :${list[i]['faculty']}"),
              ),
            ),
          ),
        );
      },
    );
  }

}