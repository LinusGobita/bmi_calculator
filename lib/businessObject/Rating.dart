import 'package:flutter/material.dart';
import '../generated/l10n.dart';

class Rating {
  final double bmi;
  final String message;
  final String status;
  final MaterialColor bmiStatusColor;

  const Rating({
    required this.bmi,
    required this.message,
    required this.status,
    required this.bmiStatusColor
});

  static getRatingFromBMI(bmi, context) {

    String message;
    String status;
    MaterialColor bmiStatusColor;

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

    Rating rating = new Rating(bmi: bmi, message: message, status: status, bmiStatusColor: bmiStatusColor);
    return rating;
  }

  static getAllRating(context){
    List<Rating> allRating = <Rating>[];
    bool isInside = false;

    for (double i = 1; i < 50; i++) {
      Rating rating = getRatingFromBMI(i, context);

      for (Rating ra in allRating){
        if (ra.message == rating.message){
          isInside = true;
        }
      }

      if (isInside == false){
        allRating.add(rating);
      }
      isInside = false;
    }
    return allRating;
  }

}