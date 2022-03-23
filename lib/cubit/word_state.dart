part of 'word_cubit.dart';

@freezed
class WordState with _$WordState {
  const factory WordState.init() = _Init;
  const factory WordState.game(
    String answer,
    KtList<LetterState> letterList, [
    @Default(KtSet.empty()) KtSet<String> disabledLetters,
    @Default(0) int index,
  ]) = _Game;

  const factory WordState.finish(
    String answer,
  ) = _Finish;
}
