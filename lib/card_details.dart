import 'package:flutter/material.dart';

class CardDetails extends StatelessWidget {
  CardDetails({this.icon, this.label});

  static const labelTextStyle = TextStyle(
    fontSize: 18,
    color: Color(0xFF8D8E98),
  );

  final IconData? icon;
  final String? label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 80,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          label!,
          style: labelTextStyle,
        ),
      ],
    );
  }
}
