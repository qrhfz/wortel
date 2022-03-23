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
          width: MediaQuery.of(context).size.width / 10,
          height: 48,
          child: BlocBuilder<WordCubit, WordState>(
            builder: (context, state) {
              return state.maybeWhen(
                game: (___, words, disabledLetters, _, __) {
                  return TextButton(
                    onPressed: !disabledLetters.contains(letters[index])
                        ? () => BlocProvider.of<WordCubit>(context)
                            .submitLetter(letters[index])
                        : null,
                    child: KeySymbol(letter: letters[index]),
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
        return Text(letter,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ));
    }
  }
}
