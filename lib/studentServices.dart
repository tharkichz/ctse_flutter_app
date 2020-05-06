import 'package:flutter/material.dart';
import './myCourses.dart';
import './home_design_course.dart';
import 'bottom_bar.dart';

void main() => runApp(StServices());

class StServices extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Services(),
    );
  }
}

class Services extends StatelessWidget {
  Size size;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return MaterialApp(
      title: 'Student Services',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
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
        body: Stack(
          children: <Widget>[
            Container(
              color: Colors.blue[300],
//              child: CustomPaint(
//                painter: ShapesPainter(),
//                child: Container(
//                  height: size.height / 2,
//                ),
//              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 40),
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: GridView.count(
                  crossAxisCount: 2,
                  children: <Widget>[
//                    createGridItem(0),
//                    createGridItem(1),
                    createGridItem(2),
                    createGridItem(3),
                    createGridItem(4),
                    createGridItem(5),
                  ],
                ),
              ),
            )
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Color(0xFFF17532),
          child: Icon(Icons.school),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomBar(Color(0xFFF17532),Color(0xFF545D68),Color(0xFF545D68),Color(0xFF545D68)),
      ),
    );
  }

  Widget createGridItem(int position) {
    var color = Colors.white;
    var textData = '';
    var imgUrl = '';
    var linkTo ;

    switch (position) {
      case 0:
        color = Colors.cyan;

        break;
      case 1:
        color = Colors.deepPurple;

        break;
      case 2:
        color = Colors.orange[300];
        textData = 'Student Info Service';
        imgUrl ='assets/interFace12.jpg';

        break;
      case 3:
        color = Colors.pinkAccent;
        textData = 'Academic Info Service';
        imgUrl ='assets/interFace13.jpg';
        break;
      case 4:
        color = Colors.teal[900];
        textData = 'My Course List';
        imgUrl ='assets/interFace14.jpg';
        linkTo = new MyCourses();
        break;
      case 5:
        color = Colors.green[600];
        textData = 'Professional Courses';
        imgUrl ='assets/interFace15.jpg';
        linkTo = DesignCourseHomeScreen();
        break;
    }

    return Builder(builder: (context) {
      return Padding(
        padding:
        const EdgeInsets.only(left: 10.0, right: 10, bottom: 5, top: 5),
        child: Card(
          elevation: 10,
          color: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            side: BorderSide(color: Colors.white),
          ),
          child: InkWell(
            onTap: () {

              Navigator.of(context).push(
                  new MaterialPageRoute(
                      builder: (BuildContext context) => linkTo
                  )
              );
            },
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Image(
                    image: new AssetImage(imgUrl,),
                    width: 300,
                    height: 100,
                  ),
                  Padding(
                      padding: const EdgeInsets.all(8.0),
                      child:Center(
                        child: Text(
                          textData,
                          style: TextStyle(color: Colors.white),
                        ),
                      )
                  )
                ],
              ),
            ),
          ),
        ),
      );
      ;
    });
  }
}

class ShapesPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();
    // set the paint color to be white
    paint.color = Colors.white;
    // Create a rectangle with size and width same as the canvas
    var rect = Rect.fromLTWH(0, 0, size.width, size.height);
    // draw the rectangle using the paint
    canvas.drawRect(rect, paint);
    paint.color = Colors.blue[300];
    // create a path
    var path = Path();
    path.lineTo(0, size.height);
    path.lineTo(size.width, 0);
    // close the path to form a bounded shape
    path.close();
    canvas.drawPath(path, paint);
    /* // set the color property of the paint
    paint.color = Colors.deepOrange;
    // center of the canvas is (x,y) => (width/2, height/2)
    var center = Offset(size.width / 2, size.height / 2);
    // draw the circle with center having radius 75.0
    canvas.drawCircle(center, 75.0, paint);*/
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}