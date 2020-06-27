import 'package:flutter/material.dart';

// ignore: must_be_immutable
class RelateCards extends StatefulWidget {
  @override
  _RelateCardsState createState() => _RelateCardsState();
}

class _RelateCardsState extends State<RelateCards> {
  RelateCards() {}

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(5.0, 0, 5, 5),
            child: Container(
              width: 150,
              height: 160,
              child: ClipRRect(
                child: Image.asset(
                  'images/tiger.jpg',
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(15),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
