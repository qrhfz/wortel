import 'package:flutter/material.dart';

class Tile extends StatelessWidget {
  const Tile({
    this.color = const Color(0xffcfd8dc),
    this.child,
    this.size = 64.0,
    Key? key,
  }) : super(key: key);

  final double size;
  final Widget? child;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      color: color,
      child: child,
    );
  }
}
