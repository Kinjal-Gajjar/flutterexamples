import 'package:flutter/material.dart';

import 'components/home.dart';

void main() => runApp(FooderLich());

class FooderLich extends StatelessWidget {
  const FooderLich({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      title: 'Fooderlich',
      home: Home(),
    );
  }
}
