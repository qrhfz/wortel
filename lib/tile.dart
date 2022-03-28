import 'package:flutter/material.dart';

class Tile extends StatelessWidget {
  const Tile({
    this.backgroundColor,
    this.borderColor,
    this.letter = "",
    this.size = 64.0,
    Key? key,
  }) : super(key: key);

  final double size;
  final String letter;
  final Color? backgroundColor;
  final Color? borderColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: backgroundColor,
        border: borderColor != null ? Border.all(color: borderColor!) : null,
      ),
      child: Center(
        child: Text(
          letter,
          style: TextStyle(
            color: backgroundColor == null ? Colors.brown : Colors.white,
            fontSize: 32,
          ),
        ),
      ),
    );
  }
}
