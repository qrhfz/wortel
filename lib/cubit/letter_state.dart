import 'package:freezed_annotation/freezed_annotation.dart';

part 'letter_state.freezed.dart';

@freezed
class LetterState with _$LetterState {
  const factory LetterState.empty() = _Empty;
  const factory LetterState.loaded(String letter) = _Loaded;
  const factory LetterState.correct(String letter) = _Correct;
  const factory LetterState.wrongPlace(String letter) = _WrongPlace;
  const factory LetterState.wrongTotally(String letter) = _WrongTotally;
  const factory LetterState.cursor() = _Cursor;
}
