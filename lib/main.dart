import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue[200],
        appBar: AppBar(
          title: Center(child: Text('Ask Me Anything ')),
          backgroundColor: Colors.blue[900],
        ),
        body: Ball(),
      ),
    ),
  );
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int change = 1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Center(
        child: FlatButton(
            onPressed: () {
              setState(() {
                change = Random().nextInt(5) + 1;
               });
            },
            child: Image.asset('images/ball$change.png')),
      ),
    );
  }
}
