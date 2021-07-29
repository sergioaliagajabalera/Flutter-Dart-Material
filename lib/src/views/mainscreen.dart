import 'package:flutter/material.dart';

dynamic calculateyears(int years) {
  if (years < 18 && years > 0)
    return "younger";
  else if (years > 18 && years < 60)
    return "adult";
  else
    return "old";
}

class Point {
  num x, y;

  Point(this.x, this.y);
}

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final years = 21;
    return Scaffold(
      backgroundColor: Colors.purple,
      appBar: AppBar(
        title: Text('${calculateyears(years)}'),
        backgroundColor: Colors.deepPurple,
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.contact_support),
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  '/about',
                );
              }),
        ],
        shape: RoundedRectangleBorder ( borderRadius: BorderRadius.all(Radius.elliptical(10,50) ))),
      drawer: Drawer(
        child: ListView(children: [
          DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.purple[300],
              ),
              child: ListView(
                children: [
                  ListTile(
                      title: Column(
                    children: [
                      IconButton(
                          padding: EdgeInsets.all(0.0),
                          icon: Icon(Icons.account_circle),
                          onPressed: () {
                            Navigator.pushNamed(
                              context,
                              '/myinfo',
                            );
                          }),
                      Text('Profile'),
                    ],
                  ))
                ],
              ))
        ]),
      ),
    );
  }
}
