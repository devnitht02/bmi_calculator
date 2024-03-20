import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/Screens/input_page.dart';
import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/material.dart';
import '../components/bottom_container.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage(
      {required this.bmiResult,
      required this.interpretation,
      required this.resultText});

  final int result = 130;
  final String bmiResult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BMI CALCULATOR',
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.popAndPushNamed(context, 'input_page');
          },
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
              child: Container(
            padding: EdgeInsets.all(15),
            alignment: Alignment.bottomLeft,
            child: Text(
              'Your Result',
              style: kTitleTextStyle,
            ),
          )),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kActiveCardColor,
              onPress: () {},
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    resultText.toUpperCase(),
                    style: kResultTextStyle,
                  ),
                  Text(
                    bmiResult,
                    style: kNumberResultsStyle,
                  ),
                  Text(
                    interpretation,
                    textAlign: TextAlign.center,
                    style: kFinalParaStyle,
                  ),
                ],
              ),
            ),
          ),
          BottomContainer(
              onTap: () {
                Navigator.pop(context);
              },
              buttonTitle: 'RECALCULATE'),
        ],
      ),
    );
  }
}
