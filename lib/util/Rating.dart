import 'package:flutter/material.dart';

class Rating {
  static rate(bmi) {
    String message;
    String status;
    MaterialColor bmiStatusColor;
    var ratingList = [];

    if (bmi < 15) {
      //message = 'height_input'.i10n();
      message = 'You are very severely underweight';
      status = 'Underweight';
      bmiStatusColor = Colors.red;
    } else if (bmi < 16) {
      message = 'You very underweight';
      status = 'Underweight';
      bmiStatusColor = Colors.red;
    } else if (bmi < 17) {
      message = 'You are moderately underweight';
      status = 'Underweight';
      bmiStatusColor = Colors.red;
    } else if (bmi < 18.5) {
      message = 'You are slightly underweight';
      status = 'Underweight';
      bmiStatusColor = Colors.red;
    } else if (bmi < 25) {
      message = 'You are at a normal weight';
      status = 'Normal';
      bmiStatusColor = Colors.green;
    } else if (bmi < 30) {
      message = 'You are overweight';
      status = 'Overweight';
      bmiStatusColor = Colors.pink;
    } else if (bmi < 35) {
      message = 'You are moderately obese';
      status = 'Obese';
      bmiStatusColor = Colors.pink;
    } else if (bmi < 40) {
      message = 'You are severely obese';
      status = 'Obese';
      bmiStatusColor = Colors.pink;
    } else {
      message = 'You are very severely obese';
      status = 'Obese';
      bmiStatusColor = Colors.pink;
    }

    ratingList.add(message);
    ratingList.add(status);
    ratingList.add(bmiStatusColor);
    //return message + status;
    return ratingList;
  }
}