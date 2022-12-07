import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'bmistyle.dart';
import '';

class BottomComponent extends StatelessWidget {
  BottomComponent({this.mainText, this.givenNumber});

  final mainText;
  int givenNumber;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            mainText.toString(),
          ),
          Text(
            givenNumber.toString(),
            style: kNumberstyle,
          ),
        ],
      ),
    );
  }
}

class Roundbutton extends StatelessWidget {
  @override
  Roundbutton({@required this.icon, this.onPress});

  final IconData icon;
  final Function onPress;

  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPress,
      child: Icon(icon),
      fillColor: Color(0xFF4C4F5E),
      shape: CircleBorder(),
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
    );
  }
}
