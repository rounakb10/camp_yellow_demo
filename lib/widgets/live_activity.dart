import 'package:flutter/material.dart';

class LiveActivity extends StatelessWidget {
  const LiveActivity({
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
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Image.asset(
            image,
            width: MediaQuery.of(context).size.width * 0.9,
            fit: BoxFit.fitWidth,
            height: 150,
          ),
          Text(
            text,
            style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
