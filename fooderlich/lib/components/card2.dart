import 'package:flutter/material.dart';

import 'authorcard.dart';

class Card2 extends StatelessWidget {
  const Card2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.all(16),
        constraints: BoxConstraints.expand(
          height: 450,
          width: 350,
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            image: DecorationImage(
                image: AssetImage('assets/magazine_pics/mag2.png'),
                fit: BoxFit.cover)),
        child: Column(
          children: [
            const Authorcard(
              authorName: 'Mike Katz',
              title: 'Smoothie Conmoisseur',
              imageProvider: AssetImage('assets/profile_pics/person_katz.jpeg'),
            ),
            Expanded(
              child: Stack(
                children: [
                  Positioned(
                      bottom: 16,
                      right: 16,
                      child: Text(
                        'Recipe',
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w700,
                            color: Colors.black),
                      )),
                  Positioned(
                      bottom: 70,
                      left: 16,
                      child: RotatedBox(
                        quarterTurns: 3,
                        child: Text(
                          'Smoothies',
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w700,
                              color: Colors.black),
                        ),
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
