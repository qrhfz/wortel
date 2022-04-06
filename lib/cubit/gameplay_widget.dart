import 'package:flutter/material.dart';
import 'package:wortel/word_grid.dart';

import '../keyboard.dart';

class GameplayWidget extends StatelessWidget {
  const GameplayWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Spacer(),
        Center(
          child: WordGrid(size: 5),
        ),
        Spacer(),
        FirstKeyboardRow(),
        SecondKeyboardRow(),
        ThirdKeyboardRow(),
        Spacer(),
      ],
    );
  }
}

class ThirdKeyboardRow extends StatelessWidget {
  const ThirdKeyboardRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const KeyboardRow(
      letters: ["DEL", "Z", "X", "C", "V", "B", "N", "M", "ENTER"],
    );
  }
}

class SecondKeyboardRow extends StatelessWidget {
  const SecondKeyboardRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const KeyboardRow(
      letters: [
        "A",
        "S",
        "D",
        "F",
        "G",
        "H",
        "J",
        "K",
        "L",
      ],
    );
  }
}

class FirstKeyboardRow extends StatelessWidget {
  const FirstKeyboardRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const KeyboardRow(
      letters: [
        "Q",
        "W",
        "E",
        "R",
        "T",
        "Y",
        "U",
        "I",
        "O",
        "P",
      ],
    );
  }
}
