import 'package:flutter/material.dart';
import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({required this.height, required this.weight});

  final int height;
  final int weight;
  late double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi > 30) {
      return 'Obesity';
    } else if(_bmi > 25 && _bmi <= 30) {
      return 'Overweight';
    } else if (_bmi >= 18.5 && _bmi <= 25) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }
  String getResultText(){
    if (_bmi > 30) {
      return 'You have obesity!';
    } else if(_bmi > 25 && _bmi <= 30) {
      return 'You have a higher than a normal body weight. Try to exercise more!';
    } else if (_bmi >= 18.5 && _bmi <= 25) {
      return 'You have a normal body weight. Well done!';
    } else {
      return 'You have a lower than a normal body weight. Eat more!';
    }













    if (_bmi >= 25 && _bmi <= 29.9) {
      return 'You have a higher than a normal body weight. Try to exercise more!';
    } else if (_bmi >= 18.5 && _bmi <= 24.9) {
      return 'You have a normal body weight. Well done!';
    } else {
      return 'You have a lower than a normal body weight. Eat more!';
    }
  }
  }


