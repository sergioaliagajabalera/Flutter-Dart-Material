//source: https://www.desarrollolibre.net/blog/flutter/animaciones-en-flutter-primeros-pasos

import 'package:flutter/material.dart';

class Animation1 extends StatefulWidget {
  @override
  _Animation1State createState() => _Animation1State();
}

class _Animation1State extends State<Animation1> {
  double opacity = 0.0;
  double width = 300;
  double height = 300;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
            child: Column(children: [
          AnimatedOpacity(
            child: Container(
                child: Column(
              children: [ 
                Container(
                 child: GestureDetector(
                  onTap: () {
                    _changeSize();
                }),
                  width: width,
                  height: height,
                  decoration: BoxDecoration(
                      color: Colors.orange,
                      shape: BoxShape.circle,
                      border: Border.all(
                          color: Colors.orange,
                          width: 10.0,
                          style: BorderStyle.solid),
                      image: new DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/images/guizmo.png'))),
                ),
              ],
            )),
            duration: Duration(seconds: 1),
            opacity: opacity,
          ),
          TextButton(
              onPressed: _changeOpacity,
              child: Text('Animate'),
              style: TextButton.styleFrom(
                primary: Colors.orange,
              ))
        ]))
      ],
    );
  }

  void _changeOpacity() {
    setState(() {
      opacity = opacity == 1.0 ? 0.0 : 1.0; //modified
    });

  }
  void _changeSize(){
     setState(() {
        width=400;
        height=400;
     });
  }
}
