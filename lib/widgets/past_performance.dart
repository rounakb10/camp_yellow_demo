import 'package:flutter/material.dart';

import '../constants.dart' as constants;

class PastPerformance extends StatelessWidget {
  const PastPerformance({
    Key? key,
    required this.context,
    required this.text,
    required this.image,
  }) : super(key: key);

  final BuildContext context;
  final String text;
  final String image;
  final Color customPink = constants.customPink;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          image,
          width: MediaQuery.of(context).size.width / 3,
        ),
        SizedBox(width: MediaQuery.of(context).size.width / 20),
        Text(
          text,
          style: TextStyle(
            color: customPink,
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
