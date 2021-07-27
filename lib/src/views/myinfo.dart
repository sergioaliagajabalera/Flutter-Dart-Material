import 'package:flutter/material.dart';
import '../models/User.dart';


class MyInfoscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.cyan,
        appBar: AppBar(
          title: Text('USER INFO'),
          backgroundColor: Colors.deepOrange,
        ),
        body: Column(
          children: [
            for (var element in mainuser.toJson().keys) //not exist directives for iterate as angular(example: ngfor or ngif) but it can use for-in
            Flexible(
                flex: 2,
                child: Container(
                  margin: EdgeInsets.only(top:20),
                    width:420 ,
                    color: listcolor[numbercolor=numbercolor+1],
                    child: 
                     Text(
                      '${element}: ${mainuser.toJson()[element]}',
                      style: TextStyle(fontSize: 20),
                  ))), 
          ],
        ));
  }

  //OBJECTS, Arrays, funtions, etc
  var mainuser = new User('Sergio', 'Aliaga', DateTime.parse("1969-07-20"),
      'España', 'Barcelona', '6484845', '9384835');
  var listcolor=[Colors.teal, Colors.blueGrey,Colors.indigo,Colors.green, Colors.limeAccent,Colors.orange, Colors.yellow];
  var numbercolor=-1;

}
