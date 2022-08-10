import 'package:flutter/material.dart';

class ClanDiscussion extends StatelessWidget {
  const ClanDiscussion({
    Key? key,
    required this.customPink,
    required this.text1,
    required this.text2,
  }) : super(key: key);

  final Color customPink;
  final String text1;
  final String text2;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            text1,
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 16, color: customPink),
          ),
          Text(
            text2,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
        ],
      ),
    );
  }
}
