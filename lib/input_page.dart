import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'common_card.dart';
import 'icon_content.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color activeColor = Color(0xFF323244);
  Color inactiveColor = Color(0xFF24263B);

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
                    colour: inactiveColor,
                    child: IconContent(
                      icon: FontAwesomeIcons.mars,
                      label: 'MALE',
                    ),
                  ),
                ),
                Expanded(
                  child: CommonCard(
                    colour: activeColor,
                    child: IconContent(
                      icon: FontAwesomeIcons.venus,
                      label: 'FEMALE',
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: CommonCard(colour: activeColor),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: CommonCard(colour: activeColor),
                ),
                Expanded(
                  child: CommonCard(colour: activeColor),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 15),
            color: Color(0xFFE83D66),
            height: 80.0,
          ),
        ],
      ),
    );
  }
}
