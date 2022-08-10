import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({
    Key? key,
    required this.context,
  }) : super(key: key);

  final BuildContext context;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 30.0),
        color: Colors.white,
        height: 5,
        alignment: Alignment.center,
        width: MediaQuery.of(context).size.width * 0.88,
      ),
    );
  }
}
