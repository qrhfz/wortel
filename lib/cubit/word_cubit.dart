import 'dart:math';
import 'dart:developer' as dev;
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';
import 'package:wortel/daftar-kata-clean.dart';

import 'letter_state.dart';

part 'word_state.dart';
part 'word_cubit.freezed.dart';

class WordCubit extends Cubit<WordState> {
  WordCubit({
    required this.size,
  }) : super(WordState(_makeTable(size), const KtList.empty())) {
    getRandomWord();
  }
  final int size;
  int get lastIndex => size - 1;
  int x = 0;
  int y = 0;

  late String answer;

  void getRandomWord() {
    answer = wordList[Random().nextInt(wordList.length)];
  }

  void submitLetter(String letter) {
    if (y > lastIndex) return;

    final disabledLetters = _updateDisabledLetter(letter);
    final newTable = _makeNewTable(letter);

    emit(WordState(newTable, disabledLetters));
    _moveCoor();
  }

  KtList<String> _updateDisabledLetter(String letter) {
    final letters = state.triedLetters.toMutableList();

    if (!answer.contains(letter)) {
      letters.add(letter);
    }

    return letters;
  }

  KtList<KtList<LetterState>> _makeNewTable(String letter) {
    final words = state.words.toMutableList();
    final word = words[y].toMutableList();

    if (letter == answer[x]) {
      word[x] = LetterState.correct(letter);
    } else if (answer.contains(letter)) {
      word[x] = LetterState.wrongPlace(letter);
    } else {
      word[x] = LetterState.wrongTotally(letter);
    }

    final newWord = word.toList();
    words[y] = newWord;

    final newWords = words.toList();
    return newWords;
  }

  void _moveCoor() {
    if (x == lastIndex) {
      x = 0;
      y++;
    } else {
      x++;
    }
  }

  static KtList<KtList<LetterState>> _makeTable(int size) {
    return KtList.from(
      List.generate(
        size,
        (index) => KtList.from(
          List.generate(
            size,
            (index) => const LetterState.empty(),
          ),
        ),
      ),
    );
  }
}
