import 'package:flutter_bmi/util/Calculate.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Test calculator, should return BMI of 40', ()  {
    double resultBmi = Calculate.calculateBmi(90, 150);
    expect(resultBmi, 40);
  });
}
