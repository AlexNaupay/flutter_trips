import 'package:flutter/material.dart';
import 'package:flutter_started/review.dart';

class ReviewList extends StatelessWidget{
  String pathImage = "assets/images/alexh.jpg";
  String name = "Alex Naupay";
  String details = "1 review . 5 photos";
  String comment = "There is an amazing place in Sri Lanka";

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 30.0),
      child: Column(
        children: [
          Review(pathImage, name, details, comment),
          Review(pathImage, name, details, comment),
          Review(pathImage, name, details, comment),
          Review(pathImage, name, details, comment),
          Review(pathImage, name, details, comment),
          Review(pathImage, name, details, comment),
        ],
      ),
    );
  }

}