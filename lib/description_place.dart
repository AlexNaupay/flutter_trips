import 'package:flutter/material.dart';

class DescriptionPlace extends StatelessWidget {
  late String placeName;
  late double stars;
  late String placeDescription;

  DescriptionPlace(this.placeName, this.stars, this.placeDescription, {super.key});

  @override
  Widget build(BuildContext context) {

    const marginTop = 220.0;

    final start = Container(
        margin: const EdgeInsets.only(right: 4.0),
        child: const Icon(
          Icons.star,
          color: Colors.amber,
        ));

    final startEmpty = Container(
        margin: const EdgeInsets.only(right: 4.0),
        child: const Icon(
          Icons.star_border,
          color: Colors.amber,
        ));

    var starsList = [
      for (var i=1; i<=stars; i++ ) start,
      for (var i=stars; i<5; i++ ) startEmpty,
    ];

    final titleAndStarts = Row(
      children: [
        Container(
          margin: const EdgeInsets.only(top: marginTop, left: 20.0, right: 20.0),
          child: Text(
            placeName,
            style: const TextStyle(fontSize: 30.0, fontWeight: FontWeight.w800),
            textAlign: TextAlign.start,
          ),
        ),
        Container(
            margin: const EdgeInsets.only(top: marginTop, right: 20.0),
            child: Row(
              children: starsList,
            ))
      ],
    );

    return Column(
      children: [
        titleAndStarts,
        Container(
          margin: const EdgeInsets.only(left: 20, right: 20.0, top: 10.0),
          child: Text(
              placeDescription,
          style: const TextStyle(
              fontSize: 14.0,
              color: Color(0xFF6D6E71)
          ),
          textAlign: TextAlign.start,
        )
      ),
    ]);
  }
}
