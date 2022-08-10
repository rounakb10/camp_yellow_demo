import 'package:flutter/material.dart';

class ClanMember extends StatelessWidget {
  const ClanMember({
    Key? key,
    required this.image,
    required this.name,
  }) : super(key: key);
  final String image;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.asset(
              image,
              width: 50,
            ),
          ),
          const SizedBox(width: 20),
          Text(
            name,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              color: Color(0xffd22b66),
            ),
          )
        ],
      ),
    );
  }
}
