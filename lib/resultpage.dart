import 'package:bmi_calculator/bmistyle.dart';
import 'package:flutter/material.dart';
import 'bmistyle.dart';

class Resutl extends StatelessWidget {
  Resutl({@required this.bmi, @required this.result, @required this.inter});

  final String bmi;
  final String result;
  final String inter;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            bmi,
            style: kNumberstyle,
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.all(15.0),
              color: Color(0xFF1D1E33),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    result,
                    style: TextStyle(
                      color: Color(0xFF00D003),
                      fontSize: 27.0,
                    ),
                  ),
                  SizedBox(
                    height: 80.0,
                  ),
                  Text(
                    bmi,
                    style: kNumberstyle,
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Text(
                    inter,
                    style: TextStyle(
                      fontSize: 23.0,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            child: Padding(
              padding: EdgeInsets.only(bottom: 20.0),
              child: GestureDetector(
                onTap: () {
                  // Navigator.pushNamed(context, 'input');
                },
                child: Center(
                  child: Text(
                    'Re Calculator',
                    style: kCalculatestyle,
                  ),
                ),
              ),
            ),
            color: Color(0xFFEB1555),
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: 80.0,
          ),
        ],
      ),
    );
  }
}
