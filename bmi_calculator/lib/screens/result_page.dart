import 'package:bmi_calculator/components/consts.dart';
import 'package:bmi_calculator/screens/botton_button.dart';
import 'package:bmi_calculator/screens/resuable_card.dart';
import 'package:flutter/material.dart';

class Results extends StatelessWidget {
  Results(
      {required this.interpretation,
      required this.bmiResult,
      required this.resultText});
  final String bmiResult;
  final String resultText;
  final String interpretation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your result',
                style: KTitleStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ResuableCard(
              colour: KActiveColour,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    resultText.toUpperCase(),
                    style: resultTextStyle,
                  ),
                  Text(
                    bmiResult,
                    style: kBMITextStyle,
                  ),
                  Text(
                    interpretation,
                    textAlign: TextAlign.center,
                    style: kBodyStyle,
                  )
                ],
              ),
            ),
          ),
          Bottonbutton(
              onTap: () {
                Navigator.pop(context);
              },
              buttonTitle: 'RE-CALCULATE')
        ],
      ),
    );
  }
}
