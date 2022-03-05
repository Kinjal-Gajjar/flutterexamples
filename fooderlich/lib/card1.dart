import 'package:flutter/material.dart';

class Card1 extends StatelessWidget {
  final String category = 'Editor\'s Choice';
  final String title = 'The Art of Dough';
  final String description = 'Learn to make the perfect bread';
  final String chef = 'Ray Wenderlich';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Stack(
          children: [
            Text(category),
            Positioned(
              child: Text(
                title,
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              top: 20,
            ),
            Positioned(
              child: Text(
                description,
              ),
              bottom: 30,
              right: 0,
            ),
            Positioned(
              child: Text(
                chef,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              bottom: 10,
              right: 0,
            ),
          ],
        ),
        padding: EdgeInsets.all(16),
        constraints: BoxConstraints.expand(height: 450, width: 350),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/magazine_pics/mag1.png'), fit: BoxFit.cover),
            borderRadius: BorderRadius.all(Radius.circular(10))),
      ),
    );
  }
}
