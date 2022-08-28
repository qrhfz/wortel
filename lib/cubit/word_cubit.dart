import 'dart:math';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';
import 'package:wortel/daftar_kata_clean.dart';
import 'dart:developer' as dev;

import 'letter_state.dart';

part 'word_state.dart';
part 'word_cubit.freezed.dart';

class WordCubit extends Cubit<WordState> {
  WordCubit({
    required this.size,
  }) : super(const WordState.init()) {
    reset();
  }
  final int size;

  void submitLetter(String letter) {
    final current = state.mapOrNull(game: (game) => game);
    if (current == null) return;

    if (letter == 'DEL') {
      return _deleteLetter(current);
    } else if (letter == 'ENTER') {
      return _evaluateWord(current);
    }

    emit(current.copyWith(letterList: _loadLetter(current, letter)));
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
    final lastLetter = mLetterList.findLast((p0) => true);

    if (lastLetter != null &&
        lastLetter.maybeMap(
          orElse: () => false,
          loaded: (_) => true,
        )) {
      mLetterList.removeLast();
    }

    return emit(current.copyWith(letterList: mLetterList));
  }

  KtList<LetterState> _loadLetter(_Game current, String letter) {
    final letterList = current.letterList.toMutableList();
    final lastLetterEvaluated = letterList
            .elementAtOrNull(letterList.lastIndex)
            ?.map(
              empty: (_) => false,
              loaded: (_) => false,
              correct: (_) => true,
              wrongPlace: (_) => true,
              wrongTotally: (_) => true,
            ) ??
        true; // means letter list is empty. empty list is assumed to be equivalent to evaluated.

    if (lastLetterEvaluated || letterList.size % size > 0) {
      letterList.add(LetterState.loaded(letter));
    }

    return letterList;
  }

  void _evaluateWord(_Game current) {
    if (current.letterList.size % 5 != 0 || current.letterList.isEmpty()) {
      return;
    }

    final mLetterList = current.letterList.toMutableList();

    final toIndex = current.letterList.size;
    final fromIndex = toIndex - size;
    final word = mLetterList.subList(fromIndex, toIndex);

    final myAnswer = word
        .map(
          (p0) => p0.maybeWhen(
            loaded: (letter) => letter,
            orElse: () => "",
          ),
        )
        .joinToString(separator: "");

    if (wordList[myAnswer] == null) {
      emit(const WordState.warning("Bukan kata dalam KBBI!"));
      return emit(current);
    }

    final evaluatedWord = word.mapIndexed(
      (index, p0) => _evaluateLetter(
        current.answer,
        p0.maybeWhen(
          loaded: (letter) => letter,
          orElse: () => "*",
        ),
        index,
      ),
    );

    final newLetterList = mLetterList.dropLast(size).toMutableList()
      ..addAll(evaluatedWord);

    var isWinning = false;
    for (final letter in evaluatedWord.iter) {
      isWinning = letter.maybeWhen(correct: (_) => true, orElse: () => false);
      if (!isWinning) {
        break;
      }
    }

    final disabledLetters = _evaluateDisabledLetters(newLetterList).toSet();

    if (isWinning) {
      return emit(WordState.won(current.answer, newLetterList));
    } else if (newLetterList.size == size * size && !isWinning) {
      return emit(WordState.gameOver(current.answer, newLetterList));
    }

    return emit(current.copyWith(
      letterList: newLetterList,
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
    final answer =
        wordList.entries.elementAt(Random().nextInt(wordList.length)).key;
    dev.log(answer);

    emit(WordState.game(answer, const KtList.empty()));
  }

  void giveUp() {
    emit(state.maybeMap(
      game: (value) => WordState.gameOver(value.answer, value.letterList),
      orElse: () => const WordState.warning('error'),
    ));
  }
}
