import 'dart:math';

class Calculate {
  static double calculateBmi(weight, height) {
    double bmiScore = weight / pow(height / 100, 2);
    return bmiScore;
  }
}