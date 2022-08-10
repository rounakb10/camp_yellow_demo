import 'package:flutter/material.dart';

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
          style: const TextStyle(
            color: Color(0xffd22b66),
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
