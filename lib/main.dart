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
        child: Column(
          children: const [
            Spacer(),
            Center(
              child: WordTiles(size: 5),
            ),
            Spacer(),
            KeyboardRow(
              letters: ["Q", "W", "E", "R", "T", "Y", "U", "I", "O", "P"],
            ),
            KeyboardRow(
              letters: ["A", "S", "D", "F", "G", "H", "J", "K", "L"],
            ),
            KeyboardRow(
              letters: ["Z", "X", "C", "V", "B", "N", "M"],
            ),
            Spacer(),
          ],
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
            return BlocBuilder<WordCubit, WordState>(
              buildWhen: (previous, current) {
                return previous.words[x][y] != current.words[x][y];
              },
              builder: (context, state) {
                return LetterTile(state.words[x][y]);
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
