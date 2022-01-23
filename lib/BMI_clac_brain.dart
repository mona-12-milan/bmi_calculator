import 'package:flutter/material.dart';

class BMI {
  BMI({required this.height, required this.weight});
  final double height;
  final double weight;
  double _bmi = 0;

  String getBMI() {
    _bmi = (weight * 10000) / (height * height);
    print("Height : $height");
    print("Weight : $weight");
    print(_bmi);
    return _bmi.toStringAsFixed(1);
  }

  String result() {
    if (_bmi <= 18.5)
      return "UNDERWEIGHT";
    else if (_bmi < 24.5)
      return "NORMAL";
    else if (_bmi < 29.9)
      return "OVERWEIGHT";
    else
      return 'OBESITY';
  }

  String interpretations() {
    if (_bmi <= 18.5)
      return "Go Girl Eat More!!";
    else if (_bmi < 24.5)
      return "Youre BMI is perfect !! Good Job";
    else if (_bmi < 29.9)
      return "Youre BMI is A Bit Too much !! nothing to worry! exersise more";
    else
      return 'Go Girl !! Change Your Lifestyle!!';
  }
}
