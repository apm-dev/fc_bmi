import 'package:fc_bmi/constants.dart';
import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {
  final String text;
  final Function onTap;

  const BottomButton({@required this.text, @required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(top: 15),
        color: kPinkColor,
        height: 80.0,
        width: double.infinity,
        // padding: EdgeInsets.only(bottom: 15),
        child: Center(
          child: Text(
            text,
            style: kBottomButtonStyle,
          ),
        ),
      ),
    );
  }
}
