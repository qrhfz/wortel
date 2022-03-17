part of 'word_cubit.dart';

@freezed
class WordState with _$WordState {
  const factory WordState(
    KtList<KtList<LetterState>> words,
    KtList<String> triedLetters,
  ) = _State;
}
