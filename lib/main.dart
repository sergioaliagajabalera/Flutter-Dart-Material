import 'package:flutter/material.dart';
import 'custom_widgets.dart';//in this library we have all widgets create by us

void main() => runApp(MyApp());



class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //routing
      routes: {
        '/': (context) => MainScreen(),
        '/myinfo': (context) => MyInfoscreen(),
        '/about': (context) => Aboutscreen(),
      },//---------------------------------
    );
  }
}







