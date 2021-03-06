import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.weight, this.height});

  double _bmi = 0;

  final int height;
  final int weight;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    print(_bmi);
    return _bmi.toStringAsFixed(1);
  }

  String getResults() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi >= 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'you are obese';
    } else if (_bmi >= 18.5) {
      return 'You have a normal BMI.';
    } else {
      return 'You have a lower than normal BMI.';
    }
  }
}
