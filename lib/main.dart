import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'dart:math';



void main() {
  return runApp(
    MaterialApp(
      home: Ball(),
    ),
  );
}

class Ball extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink.shade200,
      appBar: AppBar(
        centerTitle: true,
        title: Text('Your Answer Plug'),
        backgroundColor: Colors.pink.shade700,
      ),
      body: MagicBall(),
    );
  }
}


 class MagicBall extends StatefulWidget {
   @override
   _MagicBallState createState() => _MagicBallState();
 }

 class _MagicBallState extends State<MagicBall> {

  int ballNumber = 1;

   @override
   Widget build(BuildContext context) {
     return Center( child: FlatButton(
       onPressed: (){
         setState(() {
           ballNumber = Random().nextInt(5) + 1;
         });
       },
         child: Image.asset("images/ball$ballNumber.png"),
     ),);
   }
 }
