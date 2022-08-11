import 'package:flutter/material.dart';

import '../constants.dart' as constants;

class SeeMore extends StatelessWidget {
  const SeeMore({
    Key? key,
  }) : super(key: key);

  final Color customYellow = constants.customYellow;

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
