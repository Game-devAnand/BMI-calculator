import 'package:flutter/material.dart';

class CardChild extends StatelessWidget {
  CardChild({this.texts, this.icon});

  final String texts;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 60.0,
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(texts)
      ],
    );
  }
}
