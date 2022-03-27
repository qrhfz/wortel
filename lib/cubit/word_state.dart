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
  ) = _GameOver;

  const factory WordState.won() = _Won;

  const factory WordState.warning(
    String message,
  ) = _Warning;
}
