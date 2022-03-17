import 'package:flutter/material.dart';
import 'package:wortel/cubit/word_cubit.dart';
import 'package:wortel/tile.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
    return BlocBuilder<WordCubit, WordState>(
      builder: (context, state) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: List.generate(
            size,
            (x) => Row(
              mainAxisSize: MainAxisSize.min,
              children: List.generate(
                size,
                (y) => Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Tile(
                    child: Center(
                      child: Text(
                        state.words[x][y].maybeWhen(
                          loaded: (letter) => letter,
                          orElse: () => "",
                        ),
                        style: const TextStyle(
                          fontSize: 32,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
