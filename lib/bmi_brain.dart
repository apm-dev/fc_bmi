import 'dart:math';

import 'package:flutter/material.dart';

class BMIBrain {

  double calculate({@required int weight, @required int height}) {
    return weight / pow(height / 100, 2);
  }

  String getResult(double bmi) {
    if (bmi < 18.5) {
      return 'underweight';
    } else if (bmi < 25) {
      return 'normal';
    } else {
      return 'overweight';
    }
  }

  String getDescription(double bmi) {
    if (bmi < 18.5) {
      return 'you have underweight body weight. eat more!';
    } else if (bmi < 25) {
      return 'you have normal body weight. good job!';
    } else {
      return 'you have overweight body weight. do exercise!';
    }
  }
}
