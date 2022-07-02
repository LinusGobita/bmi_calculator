import 'package:flutter/material.dart';

import '../generated/l10n.dart';

class Rating {
  static rate(bmi, context) {
    String message;
    String status;
    MaterialColor bmiStatusColor;
    var ratingList = [];

    if (bmi < 15) {
      message = S.of(context).underweight_very_severely;
      status = 'Underweight';
      bmiStatusColor = Colors.red;
    } else if (bmi < 16) {
      message = S.of(context).underweight_severely;
      status = 'Underweight';
      bmiStatusColor = Colors.red;
    } else if (bmi < 17) {
      message = S.of(context).underweight_moderately;
      status = 'Underweight';
      bmiStatusColor = Colors.red;
    } else if (bmi < 18.5) {
      message = S.of(context).underweight_slightly;
      status = 'Underweight';
      bmiStatusColor = Colors.red;
    } else if (bmi < 25) {
      message = S.of(context).normal;
      status = 'Normal';
      bmiStatusColor = Colors.green;
    } else if (bmi < 30) {
      message = S.of(context).overweight;
      status = 'Overweight';
      bmiStatusColor = Colors.pink;
    } else if (bmi < 35) {
      message = S.of(context).obese_moderately;
      status = 'Obese';
      bmiStatusColor = Colors.pink;
    } else if (bmi < 40) {
      message = S.of(context).obese_severely;
      status = 'Obese';
      bmiStatusColor = Colors.pink;
    } else {
      message = S.of(context).obese_very_severely;
      status = 'Obese';
      bmiStatusColor = Colors.pink;
    }

    ratingList.add(message);
    ratingList.add(status);
    ratingList.add(bmiStatusColor);

    return ratingList;
  }
}