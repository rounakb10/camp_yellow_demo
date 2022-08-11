import 'package:flutter/material.dart';

import '../constants.dart' as constants;

class CustomTitleText extends StatelessWidget {
  const CustomTitleText({
    Key? key,
    required this.text,
  }) : super(key: key);

  final Color customYellow = constants.customYellow;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          text,
          style: TextStyle(
            color: customYellow,
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 30),
      ],
    );
  }
}
