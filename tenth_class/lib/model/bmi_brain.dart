import 'dart:math';

class BMIBrain {
  int height;
  int weight;
  BMIBrain(this.height, this.weight);

  double _bmi = 0;
  double get bmi => _bmi;

  void calculateBmi() {
    _bmi = weight / (pow(height / 100, 2));
  }

  String descriptionForBMI() {
    if (bmi >= 25) {
      return "You are overweight. Try to exercise more.";
    } else if (bmi >= 18) {
      return "Good Job!";
    } else {
      return "You are under weight. Try to eat more.";
    }
  }
}
