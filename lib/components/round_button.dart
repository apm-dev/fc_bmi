import 'package:flutter/material.dart';

class RoundButton extends StatelessWidget {
  final IconData icon;
  final Color color;
  final Function onPressed;

  RoundButton({
    @required this.icon,
    @required this.color,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      constraints: BoxConstraints.tightFor(width: 56, height: 56),
      onPressed: onPressed,
      child: Icon(icon),
      fillColor: color,
      shape: CircleBorder(),
      elevation: 0,
      highlightElevation: 0,
    );
  }
}
