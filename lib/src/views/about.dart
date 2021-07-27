import 'package:flutter/material.dart';
import '../animation/animated1.dart';

class Aboutscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      appBar: AppBar(
        title: Text('ABOUT'),
        backgroundColor: Colors.deepOrange,
      ),
      body: Animation1()
    );
  }
}