import 'package:flutter/material.dart';
import 'card_detail.dart';

class FacultyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(133, 120, 255, 1),
      body: ListView(
        children: <Widget>[
          SizedBox(height: 15.0),
          Container(
              padding: EdgeInsets.only(right: 15.0),
              width: MediaQuery.of(context).size.width - 30.0,
              height: MediaQuery.of(context).size.height - 10.0,
              child: ListView(
                children: <Widget>[
                  _buildCard(
                      'Computing faculty',
                      'assets/club-fcsc.jpg',
                      90,
                      160,
                      'The SLIIT Faculty of Computing is equipped with a range of courses specialising in various arms of the IT sector. Students are able to choose a path that is most in line with their requirements, allowing them to pursue substantial careers in their selected field.Combined with an in-house lecturer panel, expansive computer laboratories and hands-on learning, SLIIT provides its Faculty of Computing students with the ideal environment to develop their computing skills.',
                      'Bsc(Hons) in Information Technology','Bsc(Hons) in Software Engineering',context),
                  _buildCard('Enginerring Faculty', 'assets/club-fesc.jpg', 90,
                      160, 'The SLIIT Faculty of Computing is equipped with a range of courses specialising in various arms of the IT sector. Students are able to choose a path that is most in line with their requirements, allowing them to pursue substantial careers in their selected field.Combined with an in-house lecturer panel, expansive computer laboratories and hands-on learning, SLIIT provides its Faculty of Computing students with the ideal environment to develop their computing skills.', 'Bsc(Hons) in Electric Engineering','Bsc(Hons) in Civil Engineering',context),
                  _buildCard('Business Faculty', 'assets/club-fbsc.jpg', 90,
                      160, 'The SLIIT Faculty of Computing is equipped with a range of courses specialising in various arms of the IT sector. Students are able to choose a path that is most in line with their requirements, allowing them to pursue substantial careers in their selected field.Combined with an in-house lecturer panel, expansive computer laboratories and hands-on learning, SLIIT provides its Faculty of Computing students with the ideal environment to develop their computing skills.', 'Bsc(Hons) in Information Technology','a',context),
                  _buildCard('Humanies & Science', 'assets/bio.jpg', 90, 150,
                      'The SLIIT Faculty of Computing is equipped with a range of courses specialising in various arms of the IT sector. Students are able to choose a path that is most in line with their requirements, allowing them to pursue substantial careers in their selected field.Combined with an in-house lecturer panel, expansive computer laboratories and hands-on learning, SLIIT provides its Faculty of Computing students with the ideal environment to develop their computing skills.','Bsc(Hons) in Information Technology','a', context),
                  _buildCard('Architecture', 'assets/archi.jpg', 90, 160, 'The SLIIT Faculty of Computing is equipped with a range of courses specialising in various arms of the IT sector. Students are able to choose a path that is most in line with their requirements, allowing them to pursue substantial careers in their selected field.Combined with an in-house lecturer panel, expansive computer laboratories and hands-on learning, SLIIT provides its Faculty of Computing students with the ideal environment to develop their computing skills.','Bsc(Hons) in Information Technology','a',
                      context),
                  // _buildCard('Graduate Studies', 'assets/graduate.jpg',
                  //     90, 160, context)
                ],
              )),
          SizedBox(height: 15.0)
        ],
      ),
    );
  }

  Widget _buildCard(
      String name, String imgPath, double h, double w, String dis, String d1,String d2 ,context) {
    return Padding(
        padding: EdgeInsets.only(top: 5.0, bottom: 5.0, left: 5.0, right: 5.0),
        child: InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) =>
                      CardDetail(assetPath: imgPath, cardname: name, dis2: dis, d12: d1, d22: d2)));
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
                  Padding(
                      padding: EdgeInsets.only(right: 5.0),
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              SizedBox(height: 10.0),
                              Center(
                                child: Text(name,
                                    style: TextStyle(
                                        color: Colors.black87,
                                        fontFamily: 'Varela',
                                        fontWeight: FontWeight.bold,
                                        fontSize: 17.0)),
                              ),
                              IconButton(
                                icon: Icon(Icons.arrow_forward,
                                    color: Color(0xFF545D68)),
                                onPressed: () {},
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
                               Visibility(
                                child: Text(d1,
                                    style: TextStyle(
                                        color: Colors.black87,
                                        fontFamily: 'Varela',
                                        fontWeight: FontWeight.bold,
                                        fontSize: 17.0)),
                               visible: false,
                              ),
                               Visibility(
                                child: Text(d2,
                                    style: TextStyle(
                                        color: Colors.black87,
                                        fontFamily: 'Varela',
                                        fontWeight: FontWeight.bold,
                                        fontSize: 17.0)),
                               visible: false,
                              ),
                            ]),
                      ))
                ]))));
  }
}
