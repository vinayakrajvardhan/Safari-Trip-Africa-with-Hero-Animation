import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';

class NavigatorBuildWithFlip extends StatefulWidget {
  @override
  _NavigatorBuildWithFlipState createState() => _NavigatorBuildWithFlipState();
}

class _NavigatorBuildWithFlipState extends State<NavigatorBuildWithFlip> {
  @override
  Widget build(BuildContext context) {
    return FlipCard(
      direction: FlipDirection.HORIZONTAL,
      front: Container(
        margin: EdgeInsets.only(bottom: 12.0, left: 18, right: 18),
        height: 70,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(34.9),
          color: Colors.black,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(
              Icons.home,
              size: 30.0,
              color: Colors.amber,
            ),
            Icon(
              Icons.business,
              size: 30.0,
              color: Colors.grey,
            ),
            Icon(
              Icons.tour,
              size: 30.0,
              color: Colors.grey,
            ),
            Icon(
              Icons.mail,
              size: 30.0,
              color: Colors.grey,
            ),
          ],
        ),
      ),
      back: Container(
        margin: EdgeInsets.only(bottom: 12.0, left: 18, right: 18),
        height: 70,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(34.9),
          color: Colors.amber,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(
              Icons.home,
              size: 30.0,
              color: Colors.pink,
            ),
            Icon(
              Icons.business,
              size: 30.0,
              color: Colors.grey,
            ),
            Icon(
              Icons.tour,
              size: 30.0,
              color: Colors.grey,
            ),
            Icon(
              Icons.mail,
              size: 30.0,
              color: Colors.grey,
            ),
          ],
        ),
      ),
    );
  }
}
