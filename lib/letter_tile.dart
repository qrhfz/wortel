import 'dart:developer';

import 'package:flutter/material.dart';

import 'cubit/letter_state.dart';
import 'tile.dart';

class LetterTile extends StatelessWidget {
  const LetterTile(
    this.state, {
    Key? key,
  }) : super(key: key);
  final LetterState state;
  @override
  Widget build(BuildContext context) {
    log('build');
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: state.when(
        loaded: (letter) => Tile(
          letter: letter,
        ),
        empty: () => const Tile(letter: ""),
        correct: (String letter) {
          return AnimatedTile(
            letter: letter,
            backgroundColor: const Color(0xFF33BA91),
          );
        },
        wrongPlace: (String letter) {
          return AnimatedTile(
            letter: letter,
            backgroundColor: const Color(0xFFEBB951),
          );
        },
        wrongTotally: (String letter) {
          return AnimatedTile(
            letter: letter,
            backgroundColor: const Color(0xFFFF4B40),
          );
        },
      ),
    );
  }
}
