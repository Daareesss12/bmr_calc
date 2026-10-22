// calculator.dart

import 'constants.dart';

class Calculator {
  Calculator(
      {required this.height, required this.weight, required this.gender, required this.age});

  final int height;
  final int weight;
  final Gender gender;
  final int age; 

  int _bmr = 0;

  int calculateBMR() { //menghitung BMR berdasarkan rumus Mifflin-St Jeor
    if (gender == Gender.male) {
      _bmr = (10 * weight + 6.25 * height - 5 * age + 5).round(); //perhitungan BMR untuk pria
    } else {
      _bmr = (10 * weight + 6.25 * height - 5 * age - 161).round(); //perhitungan BMR untuk wanita
    }
    return _bmr; //mengembalikan nilai hasil perhitungan BMR
  }

  String getResult() { 
    return 'Your BMR is $_bmr calories/day.';
  }

  String getInterpretation() { //teks bagian bawah untuk penjelasan di result page 
  return 'Your BMR is $_bmr calories/day. This is the number of calories your body needs to maintain basic physiological functions at rest.';
  }
}