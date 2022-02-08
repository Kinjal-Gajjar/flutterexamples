import 'package:flutter/material.dart';

class ResuableCard extends StatelessWidget {
  final  cardChild;
  final Color colour;
  final onpress;

  ResuableCard({this.cardChild, required this.colour, this.onpress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10.0),
        ),
        height: 200.0,
        width: 170,
      ),
    );
  }
}
