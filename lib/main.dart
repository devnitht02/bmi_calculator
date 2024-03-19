import 'package:flutter/material.dart';
import 'package:bmi_calculator/input_page.dart';
import 'results_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
      ),
      initialRoute: 'input_page',
      routes: {
        'input_page': (context) => InputPage(),
        'results_page': (context) => ResultsPage(),
      }
    );
  }
}

