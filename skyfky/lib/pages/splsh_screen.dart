import 'dart:async';

import 'package:flutter/material.dart';
import 'package:skyfky/pages/choose_page.dart';

class Splash extends StatefulWidget {
  Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => ChoosePage())));
  }

  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      "image/image1.jpg",
                    ),
                    fit: BoxFit.cover)),
          ),
          Positioned(
            child: Padding(
              padding: const EdgeInsets.only(left: 35.0),
              child: Text(
                'Travel with',
                style: KTextstyle,
              ),
            ),
            bottom: 200,
          ),
          Positioned(
            child: Padding(
              padding: const EdgeInsets.only(left: 35.0),
              child: Text(
                'comfort and',
                style: KTextstyle,
              ),
            ),
            bottom: 140,
          ),
          Positioned(
            child: Padding(
              padding: const EdgeInsets.only(left: 35.0),
              child: Text(
                'safety!',
                style: KTextstyle,
              ),
            ),
            bottom: 80,
          ),
          Positioned(
            child: Padding(
                padding: const EdgeInsets.only(left: 35.0),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'sign up',
                    style: TextStyle(fontSize: 20),
                  ),
                  style: ElevatedButton.styleFrom(
                      padding:
                          EdgeInsets.symmetric(vertical: 18, horizontal: 25),
                      primary: Color(0xFFEC6D67),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0))),
                )),
            bottom: 10,
          )
        ],
      ),
    );
  }
}

const KTextstyle = TextStyle(
  fontSize: 45.0,
  color: Color(0xFFFFFFFF),
  letterSpacing: 3,
  fontFamily: 'Lobster',
  fontWeight: FontWeight.bold,
);
