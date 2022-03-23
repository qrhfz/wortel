import 'dart:math';
import 'dart:developer' as dev;
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';
import 'package:tuple/tuple.dart';
import 'package:wortel/daftar_kata_clean.dart';

import 'letter_state.dart';

part 'word_state.dart';
part 'word_cubit.freezed.dart';

class WordCubit extends Cubit<WordState> {
  WordCubit({
    required this.size,
  }) : super(const WordState.init()) {
    _getRandomWord();
  }
  final int size;
  int get _lastIndex => size * size - 1;

  void _getRandomWord() {
    final answer = wordList[Random().nextInt(wordList.length)];
    emit(WordState.game(
      answer,
      KtList.from(List.generate(
        size * size,
        (index) => const LetterState.empty(),
      )),
    ));
  }

  void submitLetter(String letter) {
    final current = state.mapOrNull(game: (game) => game);
    if (current == null) return;

    if (letter == 'DEL') {
      return _deleteLetter(current);
    } else if (letter == 'ENTER') {
      return _evaluateWord();
    }

    final newLetterList = _loadLetter(letter);

    var newDisabledLetters = _evaluateDisabledLetters(newLetterList).toSet();

    final answer = current.answer;
    // finish
    if (current.index == _lastIndex) {
      return emit(WordState.finish(answer));
    }

    final int newIndex = current.index + 1;

    emit(WordState.game(
      answer,
      newLetterList,
      newDisabledLetters,
      newIndex,
    ));
  }

  KtList<String> _evaluateDisabledLetters(KtList<LetterState> letterList) {
    return letterList
        .map((p0) => p0.maybeWhen(
              wrongTotally: (letter) => letter,
              orElse: () => '',
            ))
        .filter((p0) => p0.isNotEmpty);
  }

  void _deleteLetter(_Game current) {
    if (current.index == 0) return;

    final letterList = current.letterList.toMutableList();
    letterList[current.index - 1] = const LetterState.empty();
    final newLetterList = letterList.toList();

    return emit(WordState.game(
      current.answer,
      newLetterList,
      current.disabledLetters,
      current.index - 1,
    ));
  }

  KtList<LetterState> _loadLetter(String letter) {
    final current = state.mapOrNull(
      game: (game) => game,
    );
    if (current == null) return const KtList.empty();

    final letterList = current.letterList.toMutableList();

    final index = current.index;

    letterList[index] = LetterState.loaded(letter);

    return letterList.toList();
  }

  void _evaluateWord() {
    final current = state.mapOrNull(
      game: (game) => game,
    );
    if (current == null) return;

    final letterList = current.letterList.toMutableList();

    final answer = current.answer;
    final index = current.index;

    final fromIndex = ((index - 1) / size).floor() * size;
    final toIndex = ((index - 1) / size).ceil() * size;

    for (var i = fromIndex; i < toIndex; i++) {
      letterList[i] = _evaluateLetter(
        answer,
        letterList[i].maybeMap(
          orElse: () => '',
          loaded: (v) => v.letter,
        ),
        i - fromIndex,
      );
    }

    emit(WordState.game(
      answer,
      letterList,
      current.disabledLetters,
      current.index,
    ));
  }

  LetterState _evaluateLetter(String answer, String letter, int index) {
    if (letter == answer[index]) {
      return LetterState.correct(letter);
    } else if (answer.contains(letter)) {
      return LetterState.wrongPlace(letter);
    } else {
      return LetterState.wrongTotally(letter);
    }
  }

  void reset() {
    _getRandomWord();
  }
}
