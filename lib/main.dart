import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ball Page',
      home: BallPage(),
    );
  }
}

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent.shade100,
      appBar: AppBar(
        title: Center(child: Text(
            'Ask Me Anything',
             style: TextStyle(
              fontFamily: 'Pacifico',
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
          ),
        )),
        backgroundColor: Colors.blueAccent.shade700,
      ),
      body: Ball(),
    );
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 1;

  void changeBallNumber() {
    setState(() {
      ballNumber = Random().nextInt(5) + 1;
      print("ball$ballNumber");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
          onPressed: () {
          changeBallNumber();
        },
        child: Center(
          child: Image.asset(
            'images/ball$ballNumber.png',
          ),
        ),
      ),
    );
  }
}
