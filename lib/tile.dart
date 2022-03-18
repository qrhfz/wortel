import 'package:flutter/material.dart';

class Tile extends StatelessWidget {
  const Tile({
    this.color = const Color(0xffcfd8dc),
    this.letter = "",
    this.size = 64.0,
    Key? key,
  }) : super(key: key);

  final double size;
  final String letter;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      color: color,
      child: Center(
        child: Text(
          letter,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 32,
          ),
        ),
      ),
    );
  }
}
