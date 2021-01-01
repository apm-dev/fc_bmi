import 'package:flutter/material.dart';

class CommonCard extends StatelessWidget {
  final Color colour;
  final Widget child;
  final Function onPressed;

  CommonCard({@required this.colour, this.child, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: double.infinity,
        margin: EdgeInsets.symmetric(vertical: 10, horizontal: 8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: colour,
        ),
        child: child,
      ),
    );
  }
}
