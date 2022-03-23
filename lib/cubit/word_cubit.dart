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
  int get _lastIndex => size - 1;

  void _getRandomWord() {
    final answer = wordList[Random().nextInt(wordList.length)];
    emit(WordState.game(answer, _makeTable(size)));
  }

  void submitLetter(String letter) {
    final current = state.mapOrNull(game: (game) => game);
    if (current == null) return;

    final y = current.y;
    final x = current.x;
    final answer = current.answer;

    if (y > _lastIndex) return;

    final newTable = _makeNewTable(letter);

    var disabledLetters = state.maybeWhen(
      game: (_, words, disabledLetters, x, y) {
        if (x == _lastIndex) {
          return disabledLetters.toMutableList()
            ..addAll(_updateDisabledLetter(letter, newTable[y]));
        }
        return disabledLetters;
      },
      orElse: () => const KtList<String>.empty(),
    );
    if (y == _lastIndex && x == _lastIndex) {
      return emit(WordState.finish(answer));
    }
    final coor = _moveCoor(x, y);

    emit(WordState.game(
      answer,
      newTable,
      disabledLetters,
      coor.item1,
      coor.item2,
    ));
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
    final current = state.mapOrNull(
      game: (game) => game,
    );
    if (current == null) return const KtList.empty();

    final table = current.words.toMutableList();
    final y = current.y;
    final x = current.x;
    final answer = current.answer;

    final word = table[y].toMutableList();

    word[x] = LetterState.loaded(letter);
    dev.log(word.toString());
    late KtList<LetterState> newWord;
    if (x == _lastIndex) {
      newWord = word.mapIndexed(
        (index, a) => _evaluateLetter(
          answer,
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

  LetterState _evaluateLetter(String answer, String letter, int index) {
    if (letter == answer[index]) {
      return LetterState.correct(letter);
    } else if (answer.contains(letter)) {
      return LetterState.wrongPlace(letter);
    } else {
      return LetterState.wrongTotally(letter);
    }
  }

  Tuple2<int, int> _moveCoor(int x, int y) {
    if (x == _lastIndex) {
      x = 0;
      y++;
    } else {
      x++;
    }

    return Tuple2(x, y);
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
  }
}
