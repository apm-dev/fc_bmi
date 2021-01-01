import 'package:fc_bmi/bmi_brain.dart';
import 'package:fc_bmi/components/bottom_button.dart';
import 'package:fc_bmi/components/common_card.dart';
import 'package:fc_bmi/components/icon_content.dart';
import 'package:fc_bmi/components/round_button.dart';
import 'package:fc_bmi/constants.dart';
import 'package:fc_bmi/pages/result_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender;

  int height = 180;
  int weight = 70;
  int age = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: CommonCard(
                    colour: selectedGender == Gender.male
                        ? kActiveColor
                        : kInactiveColor,
                    child: IconContent(
                      icon: FontAwesomeIcons.mars,
                      label: 'MALE',
                    ),
                    onPressed: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                  ),
                ),
                Expanded(
                  child: CommonCard(
                    colour: selectedGender == Gender.female
                        ? kActiveColor
                        : kInactiveColor,
                    child: IconContent(
                      icon: FontAwesomeIcons.venus,
                      label: 'FEMALE',
                    ),
                    onPressed: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: CommonCard(
              colour: kActiveColor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'HEIGHT',
                    style: kLabelStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        height.toString(),
                        style: kNumberStyle,
                      ),
                      Text(
                        'cm',
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                  SliderTheme(
                    data: SliderThemeData(
                      thumbShape: RoundSliderThumbShape(
                        enabledThumbRadius: 14,
                      ),
                      overlayShape: RoundSliderOverlayShape(
                        overlayRadius: 24,
                      ),
                      activeTrackColor: Colors.white,
                      inactiveTrackColor: Colors.grey.shade700,
                      thumbColor: kPinkColor,
                      overlayColor: kOverlayPinkColor,
                    ),
                    child: Slider(
                      min: 120,
                      max: 220,
                      value: height.toDouble(),
                      onChanged: (double value) {
                        setState(() {
                          height = value.round();
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: CommonCard(
                    colour: kActiveColor,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'WEIGHT',
                          style: kLabelStyle,
                        ),
                        Text(
                          weight.toString(),
                          style: kNumberStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundButton(
                              color: kRoundButtonColor,
                              icon: FontAwesomeIcons.minus,
                              onPressed: () {
                                setState(() {
                                  if (weight > 20) {
                                    weight--;
                                  }
                                });
                              },
                            ),
                            SizedBox(width: 16),
                            RoundButton(
                              icon: FontAwesomeIcons.plus,
                              color: kRoundButtonColor,
                              onPressed: () {
                                setState(() {
                                  if (weight < 150) {
                                    weight++;
                                  }
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: CommonCard(
                    colour: kActiveColor,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'AGE',
                          style: kLabelStyle,
                        ),
                        Text(
                          age.toString(),
                          style: kNumberStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundButton(
                              color: kRoundButtonColor,
                              icon: FontAwesomeIcons.minus,
                              onPressed: () {
                                setState(() {
                                  if (age > 15) {
                                    age--;
                                  }
                                });
                              },
                            ),
                            SizedBox(width: 16),
                            RoundButton(
                              icon: FontAwesomeIcons.plus,
                              color: kRoundButtonColor,
                              onPressed: () {
                                setState(() {
                                  if (age < 120) {
                                    age++;
                                  }
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          BottomButton(
            text: 'CALCULATE',
            onTap: () {
              BMIBrain brain = BMIBrain();
              double bmi = brain.calculate(
                height: height,
                weight: weight,
              );
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ResultPage(
                    bmi: bmi,
                    result: brain.getResult(bmi),
                    description: brain.getDescription(bmi),
                  ),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
