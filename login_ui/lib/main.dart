import 'package:flutter/material.dart';
import 'package:task/loginpage.dart';
import 'package:task/signpage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        // home: Signpage(),
        initialRoute: '/',
        routes: {
          "/": (context) => Loginpage(),
          'second': (context) => Signpage(),
        });
  }
}
