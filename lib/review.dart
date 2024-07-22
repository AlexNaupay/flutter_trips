import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Review extends StatelessWidget {
  String pathImage = "assets/imges/people.jpg";
  String name = "Varuna Yasas";
  String details = "1 review . 5 photos";
  String comment = "There is an amazing place in Sri Lanka";
  double starts;

  Review(this.pathImage, this.name, this.details, this.comment, this.starts, {super.key});

  static const avatarSize = 64.0;

  @override
  Widget build(BuildContext context) {
    final userName = Container(
      margin: const EdgeInsets.only(left: 16.0),
      child: Text(
        name,
        textAlign: TextAlign.left,
        style: const TextStyle(fontSize: 15.0),
      ),
    );

    final userInfo = Container(
      margin: const EdgeInsets.only(left: 16.0),
      child: Row(children: [
        Container(
          margin: const EdgeInsets.only(right: 8.0),
          child: Text(
            details,
            textAlign: TextAlign.left,
            style: const TextStyle(fontSize: 12.0, color: Color(0xff919293)),
          ),
        ),
        RatingBar.builder(
          maxRating: 5,
          itemSize: 13.0,
          initialRating: starts,
          minRating: 1,
          direction: Axis.horizontal,
          allowHalfRating: true,
          itemCount: 5,
          itemPadding: const EdgeInsets.symmetric(horizontal: 1.0),
          itemBuilder: (context, _) => const Icon(
            Icons.star,
            color: Colors.amber,
          ),
          onRatingUpdate: (rating) {
            // print(rating);
          },
        )
      ]),
    );

    final userComment = Container(
      margin: const EdgeInsets.only(left: 16.0),
      child: Text(
        comment,
        textAlign: TextAlign.left,
        style: const TextStyle(fontSize: 12.0, fontWeight: FontWeight.w500),
      ),
    );

    final userDetails = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[userName, userInfo, userComment],
    );

    final photo = Container(
      width: avatarSize,
      height: avatarSize,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          image:
              DecorationImage(fit: BoxFit.cover, image: AssetImage(pathImage))),
    );

    return Container(
      margin: const EdgeInsets.only(left: 20.0, top: 16.0),
      child: Row(
        children: [photo, userDetails],
      ),
    );
  }
}

/*
final avatar = Container(
  height: 100,
  width: 100,
  margin: EdgeInsets.only(
      top: 10,
      left: 10
  ),
  child: CircleAvatar(
    //
    //backgroundImage: NetworkImage(imgUrl),
  ),
);*/
