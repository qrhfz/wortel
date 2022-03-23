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

  _Init init() {
    return const _Init();
  }

  _Game game(String answer, KtList<LetterState> letterList,
      [KtSet<String> disabledLetters = const KtSet.empty(), int index = 0]) {
    return _Game(
      answer,
      letterList,
      disabledLetters,
      index,
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
    required TResult Function() init,
    required TResult Function(String answer, KtList<LetterState> letterList,
            KtSet<String> disabledLetters, int index)
        game,
    required TResult Function(String answer) finish,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String answer, KtList<LetterState> letterList,
            KtSet<String> disabledLetters, int index)?
        game,
    TResult Function(String answer)? finish,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String answer, KtList<LetterState> letterList,
            KtSet<String> disabledLetters, int index)?
        game,
    TResult Function(String answer)? finish,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_Game value) game,
    required TResult Function(_Finish value) finish,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Game value)? game,
    TResult Function(_Finish value)? finish,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
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
abstract class _$InitCopyWith<$Res> {
  factory _$InitCopyWith(_Init value, $Res Function(_Init) then) =
      __$InitCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitCopyWithImpl<$Res> extends _$WordStateCopyWithImpl<$Res>
    implements _$InitCopyWith<$Res> {
  __$InitCopyWithImpl(_Init _value, $Res Function(_Init) _then)
      : super(_value, (v) => _then(v as _Init));

  @override
  _Init get _value => super._value as _Init;
}

/// @nodoc

class _$_Init implements _Init {
  const _$_Init();

  @override
  String toString() {
    return 'WordState.init()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Init);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(String answer, KtList<LetterState> letterList,
            KtSet<String> disabledLetters, int index)
        game,
    required TResult Function(String answer) finish,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String answer, KtList<LetterState> letterList,
            KtSet<String> disabledLetters, int index)?
        game,
    TResult Function(String answer)? finish,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String answer, KtList<LetterState> letterList,
            KtSet<String> disabledLetters, int index)?
        game,
    TResult Function(String answer)? finish,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_Game value) game,
    required TResult Function(_Finish value) finish,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Game value)? game,
    TResult Function(_Finish value)? finish,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Game value)? game,
    TResult Function(_Finish value)? finish,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class _Init implements WordState {
  const factory _Init() = _$_Init;
}

/// @nodoc
abstract class _$GameCopyWith<$Res> {
  factory _$GameCopyWith(_Game value, $Res Function(_Game) then) =
      __$GameCopyWithImpl<$Res>;
  $Res call(
      {String answer,
      KtList<LetterState> letterList,
      KtSet<String> disabledLetters,
      int index});
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
    Object? answer = freezed,
    Object? letterList = freezed,
    Object? disabledLetters = freezed,
    Object? index = freezed,
  }) {
    return _then(_Game(
      answer == freezed
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String,
      letterList == freezed
          ? _value.letterList
          : letterList // ignore: cast_nullable_to_non_nullable
              as KtList<LetterState>,
      disabledLetters == freezed
          ? _value.disabledLetters
          : disabledLetters // ignore: cast_nullable_to_non_nullable
              as KtSet<String>,
      index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_Game implements _Game {
  const _$_Game(this.answer, this.letterList,
      [this.disabledLetters = const KtSet.empty(), this.index = 0]);

  @override
  final String answer;
  @override
  final KtList<LetterState> letterList;
  @JsonKey()
  @override
  final KtSet<String> disabledLetters;
  @JsonKey()
  @override
  final int index;

  @override
  String toString() {
    return 'WordState.game(answer: $answer, letterList: $letterList, disabledLetters: $disabledLetters, index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Game &&
            const DeepCollectionEquality().equals(other.answer, answer) &&
            const DeepCollectionEquality()
                .equals(other.letterList, letterList) &&
            const DeepCollectionEquality()
                .equals(other.disabledLetters, disabledLetters) &&
            const DeepCollectionEquality().equals(other.index, index));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(answer),
      const DeepCollectionEquality().hash(letterList),
      const DeepCollectionEquality().hash(disabledLetters),
      const DeepCollectionEquality().hash(index));

  @JsonKey(ignore: true)
  @override
  _$GameCopyWith<_Game> get copyWith =>
      __$GameCopyWithImpl<_Game>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(String answer, KtList<LetterState> letterList,
            KtSet<String> disabledLetters, int index)
        game,
    required TResult Function(String answer) finish,
  }) {
    return game(answer, letterList, disabledLetters, index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String answer, KtList<LetterState> letterList,
            KtSet<String> disabledLetters, int index)?
        game,
    TResult Function(String answer)? finish,
  }) {
    return game?.call(answer, letterList, disabledLetters, index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String answer, KtList<LetterState> letterList,
            KtSet<String> disabledLetters, int index)?
        game,
    TResult Function(String answer)? finish,
    required TResult orElse(),
  }) {
    if (game != null) {
      return game(answer, letterList, disabledLetters, index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_Game value) game,
    required TResult Function(_Finish value) finish,
  }) {
    return game(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Game value)? game,
    TResult Function(_Finish value)? finish,
  }) {
    return game?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
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
  const factory _Game(String answer, KtList<LetterState> letterList,
      [KtSet<String> disabledLetters, int index]) = _$_Game;

  String get answer;
  KtList<LetterState> get letterList;
  KtSet<String> get disabledLetters;
  int get index;
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
    required TResult Function() init,
    required TResult Function(String answer, KtList<LetterState> letterList,
            KtSet<String> disabledLetters, int index)
        game,
    required TResult Function(String answer) finish,
  }) {
    return finish(answer);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String answer, KtList<LetterState> letterList,
            KtSet<String> disabledLetters, int index)?
        game,
    TResult Function(String answer)? finish,
  }) {
    return finish?.call(answer);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String answer, KtList<LetterState> letterList,
            KtSet<String> disabledLetters, int index)?
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
    required TResult Function(_Init value) init,
    required TResult Function(_Game value) game,
    required TResult Function(_Finish value) finish,
  }) {
    return finish(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Game value)? game,
    TResult Function(_Finish value)? finish,
  }) {
    return finish?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
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
