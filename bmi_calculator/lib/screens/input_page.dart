import 'package:bmi_calculator/calculator_brain.dart';
import 'package:bmi_calculator/screens/resuable_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../components/consts.dart';
import 'botton_button.dart';
import 'icon_content.dart';
import 'result_page.dart';
import 'roundicon_button.dart';

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

enum Gender { male, female }

class _InputPageState extends State<InputPage> {
  Gender? selectedGender;
  int height = 180;
  int weight = 74;
  int age = 19;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ResuableCard(
                      onpress: () {
                        setState(() {
                          selectedGender = Gender.male;
                        });
                      },
                      colour: selectedGender == Gender.male
                          ? KActiveColour
                          : KInactiveColour,
                      cardChild: IconContent(
                        icon: FontAwesomeIcons.mars,
                        label: 'Male',
                      ),
                    ),
                  ),
                  Expanded(
                    child: ResuableCard(
                      onpress: () {
                        setState(() {
                          selectedGender = Gender.female;
                        });
                      },
                      colour: selectedGender == Gender.female
                          ? KActiveColour
                          : KInactiveColour,
                      cardChild: IconContent(
                          icon: FontAwesomeIcons.venus, label: 'Female'),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
                child: Row(
              children: [
                Expanded(
                  child: ResuableCard(
                    colour: KActiveColour,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'HEIGHT',
                          style: KLabelstyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(
                              height.toString(),
                              style: kNumberstyle,
                            ),
                            Text(
                              'cm',
                              style: KLabelstyle,
                            ),
                          ],
                        ),
                        SliderTheme(
                          data: SliderTheme.of(context).copyWith(
                              activeTrackColor: Colors.white,
                              thumbColor: Color(0xffEB1555),
                              inactiveTrackColor: Color(0xff7C7C8A),
                              thumbShape: RoundSliderThumbShape(
                                  enabledThumbRadius: 15.0),
                              overlayColor: Color(0x1fEB1555),
                              overlayShape:
                                  RoundSliderOverlayShape(overlayRadius: 30.0)),
                          child: Slider(
                              value: height.toDouble(),
                              min: 120.0,
                              max: 220.0,
                              onChanged: (double newValue) {
                                setState(() {
                                  height = newValue.round();
                                });
                              }),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            )),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ResuableCard(
                        colour: KActiveColour,
                        cardChild: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Weight',
                              style: KLabelstyle,
                            ),
                            Text(
                              weight.toString(),
                              style: kNumberstyle,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                RoundIcons(
                                  onpress: () {
                                    setState(() {
                                      weight--;
                                    });
                                  },
                                  icon: FontAwesomeIcons.minus,
                                ),
                                SizedBox(
                                  width: 10.0,
                                ),
                                RoundIcons(
                                  onpress: () {
                                    setState(() {
                                      weight++;
                                    });
                                  },
                                  icon: FontAwesomeIcons.plus,
                                ),
                              ],
                            )
                          ],
                        )),
                  ),
                  Expanded(
                    child: ResuableCard(
                        colour: KActiveColour,
                        cardChild: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Age',
                              style: KLabelstyle,
                            ),
                            Text(
                              age.toString(),
                              style: kNumberstyle,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                RoundIcons(
                                  onpress: () {
                                    setState(() {
                                      age--;
                                    });
                                  },
                                  icon: FontAwesomeIcons.minus,
                                ),
                                SizedBox(
                                  width: 10.0,
                                ),
                                RoundIcons(
                                  onpress: () {
                                    setState(() {
                                      age++;
                                    });
                                  },
                                  icon: FontAwesomeIcons.plus,
                                ),
                              ],
                            )
                          ],
                        )),
                  ),
                ],
              ),
            ),
            Bottonbutton(
              buttonTitle: 'CALCULATOR',
              onTap: () {
                CalculatorBrain cal =
                    CalculatorBrain(weight: weight, height: height);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Results(
                              bmiResult: cal.calculateBMI(),
                              resultText: cal.getResult(),
                              interpretation: cal.getInterpretation(),
                            )));
              },
            )
          ],
        ));
  }
}
