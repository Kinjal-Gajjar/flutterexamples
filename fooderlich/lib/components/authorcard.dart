import 'package:flutter/material.dart';

import 'circleImage.dart';

class Authorcard extends StatefulWidget {
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
  _AuthorcardState createState() => _AuthorcardState();
}

class _AuthorcardState extends State<Authorcard> {
  bool _isfavorite = false;
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
                imageProvider: widget.imageProvider,
                imageRadius: 28,
              ),
              SizedBox(
                width: 8,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.authorName,
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(widget.title,
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
              setState(() {
                _isfavorite = !_isfavorite;
              });
              const snackBar = SnackBar(content: Text('Favorite pressed'));
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
            icon: Icon(_isfavorite ? Icons.favorite : Icons.favorite_border),
            iconSize: 30,
            color: Colors.red[400],
          )
        ],
      ),
    );
  }
}
