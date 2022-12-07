import 'package:flutter/material.dart';

class ReuseCard extends StatelessWidget {
  const ReuseCard({@required this.colour,this.cardChild});

  final Color colour;
  final Widget cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 180,
      margin: EdgeInsets.all(15.0),
      child: cardChild,
      decoration: BoxDecoration(
        color:colour,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}