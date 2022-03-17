import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';

import 'letter_state.dart';

part 'word_state.dart';
part 'word_cubit.freezed.dart';

class WordCubit extends Cubit<WordState> {
  WordCubit({
    required this.size,
  }) : super(WordState(_makeTable(size), const KtList.empty()));
  final int size;
  int get lastIndex => size - 1;
  int x = 0;
  int y = 0;

  void submitLetter(String letter) {
    if (y > lastIndex) return;

    final triedLetters = makeNewTriedLetters(letter);
    final newTable = _makeNewTable(letter);

    emit(WordState(newTable, triedLetters));
    _moveCoor();
  }

  KtList<String> makeNewTriedLetters(String letter) {
    final triedLetters = state.triedLetters.toMutableList();
    triedLetters.add(letter);
    return triedLetters;
  }

  KtList<KtList<LetterState>> _makeNewTable(String letter) {
    final words = state.words.toMutableList();
    final word = words[y].toMutableList();
    word[x] = LetterState.loaded(letter);

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
