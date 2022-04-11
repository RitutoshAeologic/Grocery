import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class RatingIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.star,
          size: 20.0,
          color: Colors.orangeAccent,
        ),
        Icon(
          Icons.star,
          size: 20.0,
          color: Colors.orangeAccent,
        ),
        Icon(
          Icons.star,
          size: 20.0,
          color: Colors.orangeAccent,
        ),
        Icon(
          Icons.star,
          size: 20.0,
          color: Colors.orangeAccent,
        ),
        Icon(
          Icons.star,
          size: 20.0,
          color: Colors.grey,
        ),
      ],
    );
  }
}