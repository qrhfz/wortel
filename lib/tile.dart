import 'package:flutter/material.dart';

class Tile extends StatelessWidget {
  const Tile({
    this.backgroundColor,
    required this.letter,
    this.size = 64.0,
    Key? key,
  }) : super(key: key);

  final double size;
  final String letter;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: backgroundColor,
        border: Border.all(color: backgroundColor ?? Colors.brown),
      ),
      child: Center(
        child: Text(
          letter,
          style: TextStyle(
            color: backgroundColor != null ? Colors.white : null,
            fontSize: 32,
          ),
        ),
      ),
    );
  }
}

class AnimatedTile extends StatefulWidget {
  const AnimatedTile({Key? key, required this.letter, this.backgroundColor})
      : super(key: key);

  final String letter;
  final Color? backgroundColor;

  @override
  State<AnimatedTile> createState() => _AnimatedTileState();
}

class _AnimatedTileState extends State<AnimatedTile>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 1),
    vsync: this,
  )..forward();
  final Tween<double> _tween = Tween(begin: 0.5, end: 1);
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ScaleTransition(
      scale: _tween
          .animate(CurvedAnimation(parent: _controller, curve: Curves.ease)),
      child: Tile(
        letter: widget.letter,
        backgroundColor: widget.backgroundColor,
      ),
    );
  }
}
