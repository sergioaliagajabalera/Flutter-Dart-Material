import 'package:flutter/material.dart';
import '../animation/animation1.dart';

class Aboutscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      appBar: AppBar(
        title: Text('ABOUT'),
        backgroundColor: Colors.deepOrange,
      ),
      body:SingleChildScrollView( 
        child: Column(
          children: [
            Animation1(image:'assets/images/guizmo.png',width:300,height:300),
            Animation1(image:'assets/images/guizmo.png',width:50,height:50),
            Animation1(image:'assets/images/guizmo.png',width:300,height:300),
          ],

        )
          
    ));
  }
}