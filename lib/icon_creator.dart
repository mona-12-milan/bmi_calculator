import 'package:flutter/material.dart';
import 'constants.dart';

class IconCreator extends StatelessWidget {
  const IconCreator({required this.icon, required this.text});
  final IconData icon;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80,
          color: Color(0xFF8D8E98),
        ),
        Text(text, style: kLabelTextStyle),
      ],
    );
  }
}
