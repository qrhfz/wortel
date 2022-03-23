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

    if (letter == 'DEL') {
      return _deleteLetter(current);
    }

    final y = current.y;
    final x = current.x;
    final answer = current.answer;

    if (y > _lastIndex) return;

    final newTable = _makeNewTable(letter);

    var disabledLetters = _evaluateDisabledLetters(letter, newTable);

    // finish
    if (y == _lastIndex && x == _lastIndex) {
      return emit(WordState.finish(answer));
    }

    //move cursor
    final coor = _forward(x, y);

    emit(WordState.game(
      answer,
      newTable,
      disabledLetters,
      coor.item1,
      coor.item2,
    ));
  }

  KtList<String> _evaluateDisabledLetters(
      String letter, KtList<KtList<LetterState>> newTable) {
    return state.maybeMap(
      game: (state) {
        if (state.x == _lastIndex) {
          return state.disabledLetters.toMutableList()
            ..addAll(_getDisabledLetters(letter, newTable[state.y]));
        }
        return state.disabledLetters;
      },
      orElse: () => const KtList<String>.empty(),
    );
  }

  void _deleteLetter(_Game current) {
    if (current.x == 0) return;

    final newTable = current.words.toMutableList();
    final newWord = newTable[current.y].toMutableList();
    newWord[current.x - 1] = const LetterState.empty();
    newTable[current.y] = newWord;

    return emit(WordState.game(
      current.answer,
      newTable,
      current.disabledLetters,
      current.x - 1,
      current.y,
    ));
  }

  KtList<String> _getDisabledLetters(
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
    final current = state.mapOrNull(
      game: (game) => game,
    );
    if (current == null) return const KtList.empty();

    final table = current.words.toMutableList();
    final y = current.y;
    final x = current.x;
    final answer = current.answer;

    final word = table[y].toMutableList();

    late KtList<LetterState> newWord;
    if (letter == 'ENTER') {
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
      word[x] = LetterState.loaded(letter);
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

  Tuple2<int, int> _forward(int x, int y) {
    if (x == _lastIndex) {
      x = 0;
      y++;
    } else {
      x++;
    }

    return Tuple2(x, y);
  }

  Tuple2<int, int> _backward(int x, int y) {
    if (x == 0) {
      x = _lastIndex;
      y--;
    } else {
      x--;
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
