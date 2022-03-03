import 'package:flutter/material.dart';
import 'package:fooderlich/circleImage.dart';

class Authorcard extends StatelessWidget {
  final String authorName;
  final title;
  final ImageProvider? imageProvider;

  const Authorcard(
      {Key? key,
      required this.authorName,
      required this.title,
      required this.imageProvider})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleImage(
                imageProvider: imageProvider,
                imageRadius: 28,
              ),
              SizedBox(
                width: 8,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    authorName,
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(title,
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                      )),
                ],
              )
            ],
          ),
          IconButton(
            onPressed: () {
              const snackBar = SnackBar(content: Text('Favorite pressed'));
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
            icon: Icon(Icons.favorite_border),
            iconSize: 30,
            color: Colors.grey[400],
          )
        ],
      ),
    );
  }
}
