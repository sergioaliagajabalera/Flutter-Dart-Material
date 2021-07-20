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
          leading: IconButton(
            icon: Icon(Icons.account_circle),
            onPressed: () {
              Navigator.pushNamed(
                context,
                '/myinfo',
              );
            }, 
          ),
          actions: <Widget>[
            IconButton(icon: Icon(Icons.shopping_cart), 
            onPressed: () {
               Navigator.pushNamed(
                context,
                '/about',
              );
            }),
          ],
        ));
  }
}