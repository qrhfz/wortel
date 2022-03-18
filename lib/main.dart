import 'dart:developer';

import 'package:flutter/material.dart';
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
          primarySwatch: Colors.blue,
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
      body: SafeArea(
        child: BlocBuilder<WordCubit, WordState>(
          builder: (context, state) {
            return state.when(
              game: (words, disabledLetters) {
                return Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 36),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'WORTL',
                            style: Theme.of(context).textTheme.headlineSmall,
                          ),
                          IconButton(
                            onPressed: () {
                              BlocProvider.of<WordCubit>(context).reset();
                            },
                            icon: const Icon(Icons.refresh),
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
                        "P"
                      ],
                    ),
                    const KeyboardRow(
                      letters: ["A", "S", "D", "F", "G", "H", "J", "K", "L"],
                    ),
                    const KeyboardRow(
                      letters: ["Z", "X", "C", "V", "B", "N", "M"],
                    ),
                    const Spacer(),
                  ],
                );
              },
              finish: (answer) => Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      answer,
                      style: const TextStyle(
                        fontSize: 64,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        BlocProvider.of<WordCubit>(context).reset();
                      },
                      icon: const Icon(Icons.refresh, size: 32),
                    )
                  ],
                ),
              ),
            );
          },
        ),
      ),
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
        (x) => Row(
          mainAxisSize: MainAxisSize.min,
          children: List.generate(size, (y) {
            // return Container();
            return BlocBuilder<WordCubit, WordState>(
              buildWhen: (previous, current) {
                return previous.whenOrNull(
                      game: (words, disabledLetters) => words[x][y],
                    ) !=
                    current.whenOrNull(
                      game: (words, disabledLetters) => words[x][y],
                    );
              },
              builder: (context, state) {
                return state.maybeWhen(
                  game: (words, disabledLetters) => LetterTile(words[x][y]),
                  orElse: () => Container(),
                );
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
        loaded: (letter) => Tile(letter: letter),
        correct: (String letter) {
          return Tile(
            letter: letter,
            color: const Color(0xFF33BA91),
          );
        },
        empty: () => const Tile(),
        wrongPlace: (String letter) {
          return Tile(
            letter: letter,
            color: const Color(0xFFEBB951),
          );
        },
        wrongTotally: (String letter) {
          return Tile(
            letter: letter,
            color: const Color(0xFFFF4B40),
          );
        },
      ),
    );
  }
}
