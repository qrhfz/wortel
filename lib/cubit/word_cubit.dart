import 'dart:math';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';
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

  void _getRandomWord() {
    final answer = wordList[Random().nextInt(wordList.length)];
    emit(WordState.game(answer, const KtList.empty()));
  }

  void submitLetter(String letter) {
    final current = state.mapOrNull(game: (game) => game);
    if (current == null) return;

    if (letter == 'DEL') {
      return _deleteLetter(current);
    } else if (letter == 'ENTER') {
      return _evaluateWord(current);
    }

    final answer = current.answer;
    // finish
    if (current.letterList.size == size * size) {
      return emit(WordState.finish(answer));
    }

    emit(current.copyWith(letterList: _loadLetter(letter)));
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
    final mLetterList = current.letterList.toMutableList();

    if (mLetterList.isNotEmpty() && mLetterList.size % 5 != 0) {
      mLetterList.removeLast();
    }

    return emit(current.copyWith(letterList: mLetterList));
  }

  KtList<LetterState> _loadLetter(String letter) {
    final current = state.mapOrNull(
      game: (game) => game,
    );
    if (current == null) return const KtList.empty();

    final letterList = current.letterList.toMutableList()
      ..add(LetterState.loaded(letter));

    return letterList.toList();
  }

  void _evaluateWord(_Game current) {
    if (current.letterList.size % 5 != 0) return;

    final mLetterList = current.letterList.toMutableList();

    final toIndex = current.letterList.size;
    final fromIndex = toIndex - size;

    for (var i = fromIndex; i < toIndex; i++) {
      mLetterList[i] = _evaluateLetter(
        current.answer,
        mLetterList[i].maybeWhen(
          loaded: (letter) => letter,
          orElse: () => "",
        ),
        i - fromIndex,
      );
    }

    final disabledLetters = _evaluateDisabledLetters(mLetterList).toSet();

    emit(current.copyWith(
      letterList: mLetterList,
      disabledLetters: disabledLetters,
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
