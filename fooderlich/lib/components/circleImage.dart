import 'package:flutter/material.dart';

class CircleImage extends StatelessWidget {
  final double imageRadius;
  final ImageProvider? imageProvider;

  const CircleImage({Key? key, this.imageRadius = 20, this.imageProvider})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.white,
      radius: imageRadius,
      child: CircleAvatar(
        backgroundImage: imageProvider,
        radius: imageRadius - 5,
      ),
    );
  }
}

//authorcard

