part of 'word_cubit.dart';

@freezed
class WordState with _$WordState {
  const factory WordState.game(
    KtList<KtList<LetterState>> words,
    KtList<String> disabledLetters,
  ) = _Game;

  const factory WordState.finish(
    String answer,
  ) = _Finish;
}
