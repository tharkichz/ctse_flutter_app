import 'package:flutter/material.dart';
import 'package:sliit_app/pro.dart';
import 'package:sliit_app/profile_page.dart';

import 'home.dart';

class BottomBar extends StatelessWidget {
  final colorHome;
  final colorProfile;
  final colorSearch;
  final colorSettings;

  BottomBar(this.colorHome, this.colorProfile,this.colorSearch, this.colorSettings);
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: CircularNotchedRectangle(),
      notchMargin: 6.0,
      color: Colors.transparent,
      elevation: 9.0,
      clipBehavior: Clip.antiAlias,
      child: Container(
        height: 65.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25.0),
            topRight: Radius.circular(25.0)
          ),
          color: Colors.white
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 50.0,
              width: MediaQuery.of(context).size.width /2 - 40.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.home),
                    color: colorHome,
                    onPressed: () {
                       Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => MyApp()
                      ));
                    }
                  ),
                  IconButton(
                    icon: Icon(Icons.person_outline),
                    color: colorProfile,
                    onPressed: () {
                       Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => ProfilePage()
                      ));
                    }
                  ),
                ],
              )
            ),
            Container(
              height: 50.0,
              width: MediaQuery.of(context).size.width /2 - 40.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Icon(Icons.search, color: colorSearch),
                  IconButton(
                    icon: Icon(Icons.settings),
                    color: colorSettings,
                    onPressed: () {
                       Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => ProfilePage()
                      ));
                    }
                  )
                ],
              )
            ),
          ]
        )
      )
    );
  }
}