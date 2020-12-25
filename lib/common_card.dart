import 'package:flutter/material.dart';

class CommonCard extends StatelessWidget {
  final Color colour;
  final Widget child;

  CommonCard({@required this.colour, this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: colour,
      ),
      child: child,
    );
  }
}
