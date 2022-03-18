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

    final newTable = _makeNewTable(letter);

    final disabledLetters = x == lastIndex
        ? _updateDisabledLetter(letter, newTable[y])
        : state.triedLetters;

    emit(WordState(newTable, disabledLetters));
    _moveCoor();
  }

  KtList<String> _updateDisabledLetter(
    String letter,
    KtList<LetterState> word,
  ) {
    KtMutableList<String> letters = KtMutableList.empty();

    word.forEach(
      (letterState) => letterState.maybeWhen(
        wrongTotally: (letter) => letters.add(letter),
        orElse: () => null,
      ),
    );

    return letters;
  }

  KtList<KtList<LetterState>> _makeNewTable(String letter) {
    final words = state.words.toMutableList();
    final word = words[y].toMutableList();

    word[x] = LetterState.loaded(letter);
    late KtList<LetterState> newWord;
    if (x == lastIndex) {
      newWord = word.map(
        (a) => _evaluateLetter(
          a.maybeWhen(
            loaded: (letter) => letter,
            orElse: () => "",
          ),
        ),
      );
    } else {
      newWord = word.toList();
    }

    words[y] = newWord;

    final newWords = words.toList();
    return newWords;
  }

  LetterState _evaluateLetter(String letter) {
    if (letter == answer[x]) {
      return LetterState.correct(letter);
    } else if (answer.contains(letter)) {
      return LetterState.wrongPlace(letter);
    } else {
      return LetterState.wrongTotally(letter);
    }
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
