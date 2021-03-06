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
          width: 36,
          height: 48,
          child: BlocBuilder<WordCubit, WordState>(
            buildWhen: (_, state) {
              return state.maybeMap(orElse: () => false, game: (_) => true);
            },
            builder: (context, state) {
              return state.maybeWhen(
                game: (_, __, disabledLetters) {
                  return TextButton(
                    onPressed: !disabledLetters.contains(letters[index])
                        ? () {
                            BlocProvider.of<WordCubit>(context)
                                .submitLetter(letters[index]);
                          }
                        : null,
                    child: KeySymbol(letter: letters[index]),
                    style: TextButton.styleFrom(primary: Colors.brown[800]),
                  );
                },
                orElse: () => Container(),
              );
            },
          ),
        ),
      ),
    );
  }
}

class KeySymbol extends StatelessWidget {
  const KeySymbol({
    Key? key,
    required this.letter,
  }) : super(key: key);

  final String letter;

  @override
  Widget build(BuildContext context) {
    return Center(child: _content());
  }

  Widget _content() {
    switch (letter) {
      case 'ENTER':
        return const Icon(Icons.keyboard_return);
      case 'DEL':
        return const Icon(Icons.keyboard_backspace);
      default:
        return Text(
          letter,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        );
    }
  }
}
