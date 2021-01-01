import 'package:fc_bmi/constants.dart';
import 'package:flutter/material.dart';

class IconContent extends StatelessWidget {
  final String label;
  final IconData icon;

  IconContent({this.icon, this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 76,
        ),
        SizedBox(height: 16),
        Text(
          label,
          style: kLabelStyle,
        ),
      ],
    );
  }
}
