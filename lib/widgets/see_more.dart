import 'package:flutter/material.dart';

class SeeMore extends StatelessWidget {
  const SeeMore({
    Key? key,
    required this.customYellow,
  }) : super(key: key);

  final Color customYellow;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const SizedBox(height: 15),
          Text(
            'see more',
            style: TextStyle(color: customYellow),
          ),
        ],
      ),
    );
  }
}
