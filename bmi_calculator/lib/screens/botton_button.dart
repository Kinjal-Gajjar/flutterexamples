import 'package:flutter/material.dart';
import '../components/consts.dart';
class Bottonbutton extends StatelessWidget {
  final onTap;
  final buttonTitle;

  const Bottonbutton({Key? key, required this.onTap, required this.buttonTitle})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            buttonTitle,
            style: KLargeButtonstyle,
          ),
        ),
        margin: EdgeInsets.only(top: 10.0),
        color: KBottomColour,
        width: double.infinity,
        padding: EdgeInsets.only(bottom: 20.0),
        height: kBottomContainerHeight,
      ),
    );
  }
}