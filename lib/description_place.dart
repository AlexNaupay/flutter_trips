import 'package:flutter/material.dart';

class DescriptionPlace extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    const marginTop = 220.0;

    final start = Container(
        margin: const EdgeInsets.only(right: 4.0),
        child: const Icon(
          Icons.star,
          color: Colors.amber,
        ));

    final titleAndStarts = Row(
      children: [
        Container(
          margin: const EdgeInsets.only(top: marginTop, left: 20.0, right: 20.0),
          child: const Text(
            "Duwilli Ella",
            style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.w800),
            textAlign: TextAlign.start,
          ),
        ),
        Container(
            margin: const EdgeInsets.only(top: marginTop, right: 20.0),
            child: Row(
              children: [start, start, start, start, start],
            ))
      ],
    );

    return Column(
      children: [
        titleAndStarts,
        Container(
          margin: const EdgeInsets.only(left: 20, right: 20.0, top: 10.0),
          child: const Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\n\n Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
          style: TextStyle(
              fontSize: 14.0,
              color: Color(0xFF6D6E71)
          ),
          textAlign: TextAlign.start,
        )
      ),
    ]);
  }
}
