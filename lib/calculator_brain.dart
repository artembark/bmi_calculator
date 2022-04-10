import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({required this.height, required this.weight});

  final int height;
  final int weight;

  double? _bmi;

  String? calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi?.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi! >= 25) {
      return 'Перевес';
    } else if (_bmi! > 18.5) {
      return 'Номально';
    } else {
      return 'Недовес';
    }
  }

  String getInterpretation() {
    if (_bmi! >= 25) {
      return 'Вес больше нормы. Необходимо заниматься.';
    } else if (_bmi! >= 18.5) {
      return 'Нормальный вес. Отличная работа!';
    } else {
      return 'Вес меньше нормы. Можете больше есть.';
    }
  }
}
