import 'package:flutter/material.dart';

class AchievementRow extends StatelessWidget {
  const AchievementRow({
    Key? key,
    required this.customPink,
    required this.customYellow,
    required this.context,
    required this.text,
    required this.text2,
    required this.width,
  }) : super(key: key);

  final Color customPink;
  final Color customYellow;
  final BuildContext context;
  final String text;
  final String text2;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          text,
          style: TextStyle(
            color: customPink,
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(width: width),
        Text(
          text2,
          style: TextStyle(
            color: customYellow,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
