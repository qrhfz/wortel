part of 'word_cubit.dart';

@freezed
class WordState with _$WordState {
  const factory WordState.init() = _Init;
  const factory WordState.game(
    String answer,
    KtList<LetterState> letterList, [
    @Default(KtSet.empty()) KtSet<String> disabledLetters,
  ]) = _Game;

  const factory WordState.gameOver(
    String answer,
    KtList<LetterState> letterList,
  ) = _GameOver;

  const factory WordState.won(
    String answer,
    KtList<LetterState> letterList,
  ) = _Won;

  const factory WordState.warning(
    String message,
  ) = _Warning;
}
