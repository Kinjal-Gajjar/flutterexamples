import 'package:flutter/material.dart';

class Card3 extends StatelessWidget {
  const Card3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        constraints: BoxConstraints.expand(width: 350, height: 450),
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.6),
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            image: DecorationImage(
                image: AssetImage('assets/mag2.png'), fit: BoxFit.cover)),
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(
                  Icons.book,
                  color: Colors.white,
                  size: 40,
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  'Recipe Trends',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Center(
                  child: Wrap(
                    alignment: WrapAlignment.start,
                    spacing: 12,
                    runSpacing: 12,
                    children: [
                      Chip(
                        label: Text(
                          'Healthy',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        backgroundColor: Colors.black.withOpacity(0.7),
                        onDeleted: () {
                          print('delete');
                        },
                      ),
                      Chip(
                        label: Text(
                          'Vegan',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        backgroundColor: Colors.black.withOpacity(0.7),
                        onDeleted: () {
                          print('delete');
                        },
                      ),
                      Chip(
                        label: Text(
                          'Carrots',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        backgroundColor: Colors.black.withOpacity(0.7),
                      ),
                      Chip(
                        label: Text(
                          'Greens',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        backgroundColor: Colors.black.withOpacity(0.7),
                      ),
                      Chip(
                        label: Text(
                          'Wheat',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        backgroundColor: Colors.black.withOpacity(0.7),
                      ),
                      Chip(
                        label: Text(
                          'Pescetarian',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        backgroundColor: Colors.black.withOpacity(0.7),
                      ),
                      Chip(
                        label: Text(
                          'Mint',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        backgroundColor: Colors.black.withOpacity(0.7),
                      ),
                      Chip(
                        label: Text(
                          'Lemongrass',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        backgroundColor: Colors.black.withOpacity(0.7),
                      ),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
