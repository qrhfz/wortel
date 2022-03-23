part of 'word_cubit.dart';

@freezed
class WordState with _$WordState {
  const factory WordState.init() = _Init;
  const factory WordState.game(
    String answer,
    KtList<KtList<LetterState>> words, [
    @Default(KtList.empty()) KtList<String> disabledLetters,
    @Default(0) int x,
    @Default(0) int y,
  ]) = _Game;

  const factory WordState.finish(
    String answer,
  ) = _Finish;
}
