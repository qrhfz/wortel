import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kt_dart/kt.dart';

import 'cubit/letter_state.dart';
import 'cubit/word_cubit.dart';
import 'letter_tile.dart';

class WordGrid extends StatelessWidget {
  const WordGrid({
    required this.size,
    Key? key,
  }) : super(key: key);

  final int size;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(
        size,
        (y) => Row(
          mainAxisSize: MainAxisSize.min,
          children: List.generate(size, (x) {
            final index = y * 5 + x;
            return BlocBuilder<WordCubit, WordState>(
              buildWhen: (previous, current) {
                final prevLetter = previous.maybeMap(
                  game: (value) => value.letterList.elementAtOrNull(index),
                  orElse: () => null,
                );
                final curLetter = current.maybeMap(
                  game: (value) => value.letterList.elementAtOrNull(index),
                  orElse: () => null,
                );
                return prevLetter != curLetter;
              },
              builder: (context, state) {
                return LetterTile(state.maybeMap(
                  game: (state) {
                    return state.letterList.elementAtOrElse(
                      index,
                      (index) => const LetterState.empty(),
                    );
                  },
                  orElse: () => const LetterState.empty(),
                ));
              },
            );
          }),
        ),
      ),
    );
  }
}
