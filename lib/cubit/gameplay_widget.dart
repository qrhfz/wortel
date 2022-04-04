import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wortel/cubit/word_cubit.dart';
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
        KeyboardRow(
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
        ),
        KeyboardRow(
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
        ),
        KeyboardRow(
          letters: ["DEL", "Z", "X", "C", "V", "B", "N", "M", "ENTER"],
        ),
        Spacer(),
      ],
    );
  }
}
