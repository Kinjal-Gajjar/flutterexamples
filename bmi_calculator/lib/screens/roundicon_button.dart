import 'package:flutter/material.dart';
class RoundIcons extends StatelessWidget {
  RoundIcons({this.icon, required this.onpress});

  final icon;
  final onpress;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      elevation: 0.0,
      onPressed: onpress,
      child: Icon(icon),
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
      constraints: BoxConstraints.tightFor(
        height: 56.0,
        width: 56.0,
      ),
    );
  }
}