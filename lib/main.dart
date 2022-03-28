import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:kt_dart/kt.dart';
import 'package:wortel/cubit/word_cubit.dart';
import 'package:wortel/tile.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'cubit/letter_state.dart';
import 'keyboard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => WordCubit(size: 5),
      child: MaterialApp(
        title: 'Wortel',
        theme: ThemeData(
          primarySwatch: Colors.brown,
        ),
        home: const HomePage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffeadbcb),
      body: SafeArea(
        child: BlocListener<WordCubit, WordState>(
          listener: (context, state) {
            state.whenOrNull(
              won: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return const AlertDialog(
                      title: Center(child: Text('ANDA MENANG!')),
                    );
                  },
                );
              },
              gameOver: (answer) {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: const Center(child: Text('Maaf Anda kalah')),
                      content: Center(
                        heightFactor: 1,
                        child: Text('Jawaban yang benar adalah $answer'),
                      ),
                      actions: [
                        TextButton(
                          onPressed: () {
                            BlocProvider.of<WordCubit>(context).reset();
                            Navigator.of(context).pop();
                          },
                          child: const Text('Reset'),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: const Text('Oke'),
                        ),
                      ],
                    );
                  },
                );
              },
              warning: ((message) {
                ScaffoldMessenger.of(context)
                    .showSnackBar(SnackBar(content: Text(message)));
              }),
            );
          },
          child: BlocBuilder<WordCubit, WordState>(
            buildWhen: (_, current) {
              return current.maybeMap(game: (_) => true, orElse: () => false);
            },
            builder: (context, state) {
              return state.maybeMap(
                game: (_) => const Gameboard(),
                orElse: () => Container(),
              );
            },
          ),
        ),
      ),
    );
  }
}

class Gameboard extends StatelessWidget {
  const Gameboard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 450,
          padding: const EdgeInsets.symmetric(horizontal: 36),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'WORTEL',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              const Spacer(),
              IconButton(
                onPressed: () {
                  BlocProvider.of<WordCubit>(context).reset();
                },
                icon: const Icon(Icons.refresh),
              ),
              IconButton(
                onPressed: () {
                  BlocProvider.of<WordCubit>(context).giveUp();
                },
                icon: const Icon(Icons.flag),
              )
            ],
          ),
        ),
        const Spacer(),
        const Center(
          child: WordTiles(size: 5),
        ),
        const Spacer(),
        const KeyboardRow(
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
        const KeyboardRow(
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
        const KeyboardRow(
          letters: ["DEL", "Z", "X", "C", "V", "B", "N", "M", "ENTER"],
        ),
        const Spacer(),
      ],
    );
  }
}

class WordTiles extends StatelessWidget {
  const WordTiles({
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
          borderColor: Colors.brown,
        ),
        correct: (String letter) {
          return Tile(
            letter: letter,
            backgroundColor: const Color(0xFF33BA91),
          );
        },
        empty: () => const Tile(
          borderColor: Colors.brown,
        ),
        wrongPlace: (String letter) {
          return Tile(
            letter: letter,
            backgroundColor: const Color(0xFFEBB951),
          );
        },
        wrongTotally: (String letter) {
          return Tile(
            letter: letter,
            backgroundColor: const Color(0xFFFF4B40),
          );
        },
      ),
    );
  }
}
