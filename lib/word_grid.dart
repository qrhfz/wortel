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
                return previous != current;
              },
              builder: (context, state) {
                final letterList = state.maybeMap(
                  game: (value) => value.letterList,
                  gameOver: (value) => value.letterList,
                  won: (value) => value.letterList,
                  orElse: () => const KtList.empty(),
                );
                return LetterTile(letterList.elementAtOrElse(
                  index,
                  (_) => const LetterState.empty(),
                ));
              },
            );
          }),
        ),
      ),
    );
  }
}
