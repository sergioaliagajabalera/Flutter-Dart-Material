//source:https://www.desarrollolibre.net/blog/flutter/animaciones-en-flutter-primeros-pasos
//info gestureDetector: https://api.flutter.dev/flutter/widgets/GestureDetector-class.html
//info matrix: https://morioh.com/p/6a0d03e6ff91

import 'package:flutter/material.dart';

class Animation1 extends StatefulWidget {
  String image;
  double width,height;
  Animation1({Key? key, required this.image, required this.width, required this.height }) : super (key: key);
  @override
  _Animation1State createState() => _Animation1State(image,width,height);
}

class _Animation1State extends State<Animation1> {
  List<String> valueslist=<String>[];
  double opacity = 0.0;
  String image;
  double width, height,x=0,y=0,z=0,pi=3.14;

  _Animation1State(this.image,this.width,this.height);

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
                  onPanUpdate: _changematrix, 
                  onLongPress: (){ _changeSize(true);},
                  onLongPressEnd: (LongPressEndDetails longPressEndDetails){ _changeSize(false);},
                  ),

                  width: this.width,
                  height: this.height,
                  transform: Matrix4(
                                1,0,0,0,
                                0,1,0,0,
                                0,0,1,0,
                                0,0,0,1,
                            )..rotateX(x)..rotateY(y)..rotateZ(z),
                  decoration: BoxDecoration(
                      color: Colors.orange,
                      shape: BoxShape.circle,
                      border: Border.all(
                          color: Colors.orange,
                          width: 2.0,
                          style: BorderStyle.solid),
                      image: new DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(this.image))),
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
  void _changeSize(bool pressed){
     setState(() {
        if(pressed){
          this.width=this.width*1.2;
          this.height=this.height*1.2;
        }else{
          width=this.width/1.2;
          height=this.height/1.2;
        }
     });
  }

  void _changematrix(details){
    setState(() {
        y = y - details.delta.dx / 100;
        x = x + details.delta.dy / 100;
    });
  }
}
