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
  }) : super(WordState.game(_makeTable(size), const KtList.empty())) {
    _getRandomWord();
  }
  final int size;
  int get lastIndex => size - 1;
  int x = 0;
  int y = 0;

  late String answer;

  void _getRandomWord() {
    answer = wordList[Random().nextInt(wordList.length)];
    dev.log(answer);
  }

  void submitLetter(String letter) {
    if (y > lastIndex) return;

    final newTable = _makeNewTable(letter);

    var disabledLetters = state.maybeWhen(
      game: (words, disabledLetters) {
        if (x == lastIndex) {
          return disabledLetters.toMutableList()
            ..addAll(_updateDisabledLetter(letter, newTable[y]));
        }
        return disabledLetters;
      },
      orElse: () => const KtList<String>.empty(),
    );
    if (y == lastIndex && x == lastIndex) {
      return emit(WordState.finish(answer));
    }
    emit(WordState.game(newTable, disabledLetters));
    _moveCoor();
  }

  KtList<String> _updateDisabledLetter(
    String letter,
    KtList<LetterState> word,
  ) {
    KtMutableList<String> letters = KtMutableList.empty();
    dev.log(word.toString());
    word.forEach(
      (letterState) => letterState.maybeWhen(
        wrongTotally: (letter) => letters.add(letter),
        orElse: () => null,
      ),
    );

    return letters;
  }

  KtList<KtList<LetterState>> _makeNewTable(String letter) {
    final table = state.maybeWhen<KtMutableList<KtList<LetterState>>>(
      game: (words, disabledLetters) => words.toMutableList(),
      orElse: () => KtMutableList.empty(),
    );
    final word = table[y].toMutableList();

    word[x] = LetterState.loaded(letter);
    dev.log(word.toString());
    late KtList<LetterState> newWord;
    if (x == lastIndex) {
      newWord = word.mapIndexed(
        (index, a) => _evaluateLetter(
          a.maybeWhen(
            loaded: (letter) => letter,
            orElse: () => "",
          ),
          index,
        ),
      );
    } else {
      newWord = word.toList();
    }

    table[y] = newWord;

    final newWords = table.toList();
    return newWords;
  }

  LetterState _evaluateLetter(String letter, int index) {
    if (letter == answer[index]) {
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

  void reset() {
    _getRandomWord();
    x = 0;
    y = 0;
    emit(WordState.game(_makeTable(5), const KtList.empty()));
  }
}
