// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'word_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$WordStateTearOff {
  const _$WordStateTearOff();

  _Game game(
      KtList<KtList<LetterState>> words, KtList<String> disabledLetters) {
    return _Game(
      words,
      disabledLetters,
    );
  }

  _Finish finish(String answer) {
    return _Finish(
      answer,
    );
  }
}

/// @nodoc
const $WordState = _$WordStateTearOff();

/// @nodoc
mixin _$WordState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            KtList<KtList<LetterState>> words, KtList<String> disabledLetters)
        game,
    required TResult Function(String answer) finish,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            KtList<KtList<LetterState>> words, KtList<String> disabledLetters)?
        game,
    TResult Function(String answer)? finish,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            KtList<KtList<LetterState>> words, KtList<String> disabledLetters)?
        game,
    TResult Function(String answer)? finish,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Game value) game,
    required TResult Function(_Finish value) finish,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Game value)? game,
    TResult Function(_Finish value)? finish,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Game value)? game,
    TResult Function(_Finish value)? finish,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WordStateCopyWith<$Res> {
  factory $WordStateCopyWith(WordState value, $Res Function(WordState) then) =
      _$WordStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$WordStateCopyWithImpl<$Res> implements $WordStateCopyWith<$Res> {
  _$WordStateCopyWithImpl(this._value, this._then);

  final WordState _value;
  // ignore: unused_field
  final $Res Function(WordState) _then;
}

/// @nodoc
abstract class _$GameCopyWith<$Res> {
  factory _$GameCopyWith(_Game value, $Res Function(_Game) then) =
      __$GameCopyWithImpl<$Res>;
  $Res call(
      {KtList<KtList<LetterState>> words, KtList<String> disabledLetters});
}

/// @nodoc
class __$GameCopyWithImpl<$Res> extends _$WordStateCopyWithImpl<$Res>
    implements _$GameCopyWith<$Res> {
  __$GameCopyWithImpl(_Game _value, $Res Function(_Game) _then)
      : super(_value, (v) => _then(v as _Game));

  @override
  _Game get _value => super._value as _Game;

  @override
  $Res call({
    Object? words = freezed,
    Object? disabledLetters = freezed,
  }) {
    return _then(_Game(
      words == freezed
          ? _value.words
          : words // ignore: cast_nullable_to_non_nullable
              as KtList<KtList<LetterState>>,
      disabledLetters == freezed
          ? _value.disabledLetters
          : disabledLetters // ignore: cast_nullable_to_non_nullable
              as KtList<String>,
    ));
  }
}

/// @nodoc

class _$_Game implements _Game {
  const _$_Game(this.words, this.disabledLetters);

  @override
  final KtList<KtList<LetterState>> words;
  @override
  final KtList<String> disabledLetters;

  @override
  String toString() {
    return 'WordState.game(words: $words, disabledLetters: $disabledLetters)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Game &&
            const DeepCollectionEquality().equals(other.words, words) &&
            const DeepCollectionEquality()
                .equals(other.disabledLetters, disabledLetters));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(words),
      const DeepCollectionEquality().hash(disabledLetters));

  @JsonKey(ignore: true)
  @override
  _$GameCopyWith<_Game> get copyWith =>
      __$GameCopyWithImpl<_Game>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            KtList<KtList<LetterState>> words, KtList<String> disabledLetters)
        game,
    required TResult Function(String answer) finish,
  }) {
    return game(words, disabledLetters);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            KtList<KtList<LetterState>> words, KtList<String> disabledLetters)?
        game,
    TResult Function(String answer)? finish,
  }) {
    return game?.call(words, disabledLetters);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            KtList<KtList<LetterState>> words, KtList<String> disabledLetters)?
        game,
    TResult Function(String answer)? finish,
    required TResult orElse(),
  }) {
    if (game != null) {
      return game(words, disabledLetters);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Game value) game,
    required TResult Function(_Finish value) finish,
  }) {
    return game(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Game value)? game,
    TResult Function(_Finish value)? finish,
  }) {
    return game?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Game value)? game,
    TResult Function(_Finish value)? finish,
    required TResult orElse(),
  }) {
    if (game != null) {
      return game(this);
    }
    return orElse();
  }
}

abstract class _Game implements WordState {
  const factory _Game(
          KtList<KtList<LetterState>> words, KtList<String> disabledLetters) =
      _$_Game;

  KtList<KtList<LetterState>> get words;
  KtList<String> get disabledLetters;
  @JsonKey(ignore: true)
  _$GameCopyWith<_Game> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$FinishCopyWith<$Res> {
  factory _$FinishCopyWith(_Finish value, $Res Function(_Finish) then) =
      __$FinishCopyWithImpl<$Res>;
  $Res call({String answer});
}

/// @nodoc
class __$FinishCopyWithImpl<$Res> extends _$WordStateCopyWithImpl<$Res>
    implements _$FinishCopyWith<$Res> {
  __$FinishCopyWithImpl(_Finish _value, $Res Function(_Finish) _then)
      : super(_value, (v) => _then(v as _Finish));

  @override
  _Finish get _value => super._value as _Finish;

  @override
  $Res call({
    Object? answer = freezed,
  }) {
    return _then(_Finish(
      answer == freezed
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Finish implements _Finish {
  const _$_Finish(this.answer);

  @override
  final String answer;

  @override
  String toString() {
    return 'WordState.finish(answer: $answer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Finish &&
            const DeepCollectionEquality().equals(other.answer, answer));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(answer));

  @JsonKey(ignore: true)
  @override
  _$FinishCopyWith<_Finish> get copyWith =>
      __$FinishCopyWithImpl<_Finish>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            KtList<KtList<LetterState>> words, KtList<String> disabledLetters)
        game,
    required TResult Function(String answer) finish,
  }) {
    return finish(answer);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            KtList<KtList<LetterState>> words, KtList<String> disabledLetters)?
        game,
    TResult Function(String answer)? finish,
  }) {
    return finish?.call(answer);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            KtList<KtList<LetterState>> words, KtList<String> disabledLetters)?
        game,
    TResult Function(String answer)? finish,
    required TResult orElse(),
  }) {
    if (finish != null) {
      return finish(answer);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Game value) game,
    required TResult Function(_Finish value) finish,
  }) {
    return finish(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Game value)? game,
    TResult Function(_Finish value)? finish,
  }) {
    return finish?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Game value)? game,
    TResult Function(_Finish value)? finish,
    required TResult orElse(),
  }) {
    if (finish != null) {
      return finish(this);
    }
    return orElse();
  }
}

abstract class _Finish implements WordState {
  const factory _Finish(String answer) = _$_Finish;

  String get answer;
  @JsonKey(ignore: true)
  _$FinishCopyWith<_Finish> get copyWith => throw _privateConstructorUsedError;
}
