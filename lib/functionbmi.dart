import 'package:flutter/material.dart';
import 'dart:math';
class FunctionBmi{
  FunctionBmi({this.hight,this.weight});
  final int hight;
  final int weight;
  double _bmi;
  String bmi(){
    _bmi =weight/pow(hight, 2).toDouble();
    print(_bmi);
    return _bmi.toStringAsFixed(1);
  }

  String getResult(){
    if(_bmi >= 25.0){
      return 'Over Weight';
    }else if (_bmi >=18.0){
      return 'Normal';
    }else {
      return 'Under Weight';
    }
  }

  String getInterpret(){
    if(_bmi  >= 25.0){
      return 'You want to loos weight';
    }else if (_bmi >=18.0){
      return 'Good job keep it up';
    }else {
      return 'you need to eat more';
    }
  }
}


