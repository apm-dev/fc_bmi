import 'package:fc_bmi/components/bottom_button.dart';
import 'package:fc_bmi/components/common_card.dart';
import 'package:fc_bmi/constants.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  final double bmi;
  final String result, description;

  const ResultPage({
    @required this.bmi,
    @required this.result,
    @required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.bottomLeft,
              padding: EdgeInsets.only(left: 16),
              child: Text(
                'Your Result',
                style: kBMIResultTitleStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: CommonCard(
              colour: kActiveColor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    result,
                    style: kBMIResultStyle,
                  ),
                  Text(
                    bmi.toStringAsFixed(1),
                    style: kBMIStyle,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                    ),
                    child: Text(
                      description,
                      style: kBMIResultDescriptionStyle,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: BottomButton(
              text: 'RE-CALCULATE BMI',
              onTap: () {
                Navigator.pop(context);
              },
            ),
          )
        ],
      ),
    );
  }
}
