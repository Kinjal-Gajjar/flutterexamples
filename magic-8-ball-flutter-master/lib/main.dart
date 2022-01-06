import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Ballpage(),
      ),
    );

class Ballpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[700],
        title: Text(
          'Ask Me Anything',
          style: TextStyle(
            fontSize: 25.0,
          ),
        ),
      ),
      body: Ballbody(),
    );
  }
}

class Ballbody extends StatefulWidget {
  @override
  _BallbodyState createState() => _BallbodyState();
}

class _BallbodyState extends State<Ballbody> {
  int ball = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue[300],
      child: Center(
        child: TextButton(
          onPressed: () {
            setState(() {
              ball = Random().nextInt(5) + 1;
            });
          },
          child: Image.asset('images/ball$ball.png'),
        ),
      ),
    );
  }
}
