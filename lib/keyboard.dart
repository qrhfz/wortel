import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wortel/cubit/word_cubit.dart';

class KeyboardRow extends StatelessWidget {
  const KeyboardRow({
    required this.letters,
    Key? key,
  }) : super(key: key);

  final List<String> letters;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        letters.length,
        (index) => SizedBox(
          width: 40,
          height: 40,
          child: BlocBuilder<WordCubit, WordState>(
            builder: (context, state) {
              return TextButton(
                onPressed: !state.triedLetters.contains(letters[index])
                    ? () => BlocProvider.of<WordCubit>(context)
                        .submitLetter(letters[index])
                    : null,
                child: Center(
                  child: Text(
                    letters[index],
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
