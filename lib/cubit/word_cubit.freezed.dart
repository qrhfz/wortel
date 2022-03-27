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
      [KtSet<String> disabledLetters = const KtSet.empty()]) {
    return _Game(
      answer,
      letterList,
      disabledLetters,
    );
  }

  _GameOver gameOver(String answer) {
    return _GameOver(
      answer,
    );
  }

  _Won won() {
    return const _Won();
  }

  _Warning warning(String message) {
    return _Warning(
      message,
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
            KtSet<String> disabledLetters)
        game,
    required TResult Function(String answer) gameOver,
    required TResult Function() won,
    required TResult Function(String message) warning,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String answer, KtList<LetterState> letterList,
            KtSet<String> disabledLetters)?
        game,
    TResult Function(String answer)? gameOver,
    TResult Function()? won,
    TResult Function(String message)? warning,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String answer, KtList<LetterState> letterList,
            KtSet<String> disabledLetters)?
        game,
    TResult Function(String answer)? gameOver,
    TResult Function()? won,
    TResult Function(String message)? warning,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_Game value) game,
    required TResult Function(_GameOver value) gameOver,
    required TResult Function(_Won value) won,
    required TResult Function(_Warning value) warning,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Game value)? game,
    TResult Function(_GameOver value)? gameOver,
    TResult Function(_Won value)? won,
    TResult Function(_Warning value)? warning,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Game value)? game,
    TResult Function(_GameOver value)? gameOver,
    TResult Function(_Won value)? won,
    TResult Function(_Warning value)? warning,
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
            KtSet<String> disabledLetters)
        game,
    required TResult Function(String answer) gameOver,
    required TResult Function() won,
    required TResult Function(String message) warning,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String answer, KtList<LetterState> letterList,
            KtSet<String> disabledLetters)?
        game,
    TResult Function(String answer)? gameOver,
    TResult Function()? won,
    TResult Function(String message)? warning,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String answer, KtList<LetterState> letterList,
            KtSet<String> disabledLetters)?
        game,
    TResult Function(String answer)? gameOver,
    TResult Function()? won,
    TResult Function(String message)? warning,
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
    required TResult Function(_GameOver value) gameOver,
    required TResult Function(_Won value) won,
    required TResult Function(_Warning value) warning,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Game value)? game,
    TResult Function(_GameOver value)? gameOver,
    TResult Function(_Won value)? won,
    TResult Function(_Warning value)? warning,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Game value)? game,
    TResult Function(_GameOver value)? gameOver,
    TResult Function(_Won value)? won,
    TResult Function(_Warning value)? warning,
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
      KtSet<String> disabledLetters});
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
    ));
  }
}

/// @nodoc

class _$_Game implements _Game {
  const _$_Game(this.answer, this.letterList,
      [this.disabledLetters = const KtSet.empty()]);

  @override
  final String answer;
  @override
  final KtList<LetterState> letterList;
  @JsonKey()
  @override
  final KtSet<String> disabledLetters;

  @override
  String toString() {
    return 'WordState.game(answer: $answer, letterList: $letterList, disabledLetters: $disabledLetters)';
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
                .equals(other.disabledLetters, disabledLetters));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(answer),
      const DeepCollectionEquality().hash(letterList),
      const DeepCollectionEquality().hash(disabledLetters));

  @JsonKey(ignore: true)
  @override
  _$GameCopyWith<_Game> get copyWith =>
      __$GameCopyWithImpl<_Game>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(String answer, KtList<LetterState> letterList,
            KtSet<String> disabledLetters)
        game,
    required TResult Function(String answer) gameOver,
    required TResult Function() won,
    required TResult Function(String message) warning,
  }) {
    return game(answer, letterList, disabledLetters);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String answer, KtList<LetterState> letterList,
            KtSet<String> disabledLetters)?
        game,
    TResult Function(String answer)? gameOver,
    TResult Function()? won,
    TResult Function(String message)? warning,
  }) {
    return game?.call(answer, letterList, disabledLetters);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String answer, KtList<LetterState> letterList,
            KtSet<String> disabledLetters)?
        game,
    TResult Function(String answer)? gameOver,
    TResult Function()? won,
    TResult Function(String message)? warning,
    required TResult orElse(),
  }) {
    if (game != null) {
      return game(answer, letterList, disabledLetters);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_Game value) game,
    required TResult Function(_GameOver value) gameOver,
    required TResult Function(_Won value) won,
    required TResult Function(_Warning value) warning,
  }) {
    return game(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Game value)? game,
    TResult Function(_GameOver value)? gameOver,
    TResult Function(_Won value)? won,
    TResult Function(_Warning value)? warning,
  }) {
    return game?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Game value)? game,
    TResult Function(_GameOver value)? gameOver,
    TResult Function(_Won value)? won,
    TResult Function(_Warning value)? warning,
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
      [KtSet<String> disabledLetters]) = _$_Game;

  String get answer;
  KtList<LetterState> get letterList;
  KtSet<String> get disabledLetters;
  @JsonKey(ignore: true)
  _$GameCopyWith<_Game> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$GameOverCopyWith<$Res> {
  factory _$GameOverCopyWith(_GameOver value, $Res Function(_GameOver) then) =
      __$GameOverCopyWithImpl<$Res>;
  $Res call({String answer});
}

/// @nodoc
class __$GameOverCopyWithImpl<$Res> extends _$WordStateCopyWithImpl<$Res>
    implements _$GameOverCopyWith<$Res> {
  __$GameOverCopyWithImpl(_GameOver _value, $Res Function(_GameOver) _then)
      : super(_value, (v) => _then(v as _GameOver));

  @override
  _GameOver get _value => super._value as _GameOver;

  @override
  $Res call({
    Object? answer = freezed,
  }) {
    return _then(_GameOver(
      answer == freezed
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GameOver implements _GameOver {
  const _$_GameOver(this.answer);

  @override
  final String answer;

  @override
  String toString() {
    return 'WordState.gameOver(answer: $answer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GameOver &&
            const DeepCollectionEquality().equals(other.answer, answer));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(answer));

  @JsonKey(ignore: true)
  @override
  _$GameOverCopyWith<_GameOver> get copyWith =>
      __$GameOverCopyWithImpl<_GameOver>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(String answer, KtList<LetterState> letterList,
            KtSet<String> disabledLetters)
        game,
    required TResult Function(String answer) gameOver,
    required TResult Function() won,
    required TResult Function(String message) warning,
  }) {
    return gameOver(answer);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String answer, KtList<LetterState> letterList,
            KtSet<String> disabledLetters)?
        game,
    TResult Function(String answer)? gameOver,
    TResult Function()? won,
    TResult Function(String message)? warning,
  }) {
    return gameOver?.call(answer);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String answer, KtList<LetterState> letterList,
            KtSet<String> disabledLetters)?
        game,
    TResult Function(String answer)? gameOver,
    TResult Function()? won,
    TResult Function(String message)? warning,
    required TResult orElse(),
  }) {
    if (gameOver != null) {
      return gameOver(answer);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_Game value) game,
    required TResult Function(_GameOver value) gameOver,
    required TResult Function(_Won value) won,
    required TResult Function(_Warning value) warning,
  }) {
    return gameOver(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Game value)? game,
    TResult Function(_GameOver value)? gameOver,
    TResult Function(_Won value)? won,
    TResult Function(_Warning value)? warning,
  }) {
    return gameOver?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Game value)? game,
    TResult Function(_GameOver value)? gameOver,
    TResult Function(_Won value)? won,
    TResult Function(_Warning value)? warning,
    required TResult orElse(),
  }) {
    if (gameOver != null) {
      return gameOver(this);
    }
    return orElse();
  }
}

abstract class _GameOver implements WordState {
  const factory _GameOver(String answer) = _$_GameOver;

  String get answer;
  @JsonKey(ignore: true)
  _$GameOverCopyWith<_GameOver> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$WonCopyWith<$Res> {
  factory _$WonCopyWith(_Won value, $Res Function(_Won) then) =
      __$WonCopyWithImpl<$Res>;
}

/// @nodoc
class __$WonCopyWithImpl<$Res> extends _$WordStateCopyWithImpl<$Res>
    implements _$WonCopyWith<$Res> {
  __$WonCopyWithImpl(_Won _value, $Res Function(_Won) _then)
      : super(_value, (v) => _then(v as _Won));

  @override
  _Won get _value => super._value as _Won;
}

/// @nodoc

class _$_Won implements _Won {
  const _$_Won();

  @override
  String toString() {
    return 'WordState.won()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Won);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(String answer, KtList<LetterState> letterList,
            KtSet<String> disabledLetters)
        game,
    required TResult Function(String answer) gameOver,
    required TResult Function() won,
    required TResult Function(String message) warning,
  }) {
    return won();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String answer, KtList<LetterState> letterList,
            KtSet<String> disabledLetters)?
        game,
    TResult Function(String answer)? gameOver,
    TResult Function()? won,
    TResult Function(String message)? warning,
  }) {
    return won?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String answer, KtList<LetterState> letterList,
            KtSet<String> disabledLetters)?
        game,
    TResult Function(String answer)? gameOver,
    TResult Function()? won,
    TResult Function(String message)? warning,
    required TResult orElse(),
  }) {
    if (won != null) {
      return won();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_Game value) game,
    required TResult Function(_GameOver value) gameOver,
    required TResult Function(_Won value) won,
    required TResult Function(_Warning value) warning,
  }) {
    return won(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Game value)? game,
    TResult Function(_GameOver value)? gameOver,
    TResult Function(_Won value)? won,
    TResult Function(_Warning value)? warning,
  }) {
    return won?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Game value)? game,
    TResult Function(_GameOver value)? gameOver,
    TResult Function(_Won value)? won,
    TResult Function(_Warning value)? warning,
    required TResult orElse(),
  }) {
    if (won != null) {
      return won(this);
    }
    return orElse();
  }
}

abstract class _Won implements WordState {
  const factory _Won() = _$_Won;
}

/// @nodoc
abstract class _$WarningCopyWith<$Res> {
  factory _$WarningCopyWith(_Warning value, $Res Function(_Warning) then) =
      __$WarningCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class __$WarningCopyWithImpl<$Res> extends _$WordStateCopyWithImpl<$Res>
    implements _$WarningCopyWith<$Res> {
  __$WarningCopyWithImpl(_Warning _value, $Res Function(_Warning) _then)
      : super(_value, (v) => _then(v as _Warning));

  @override
  _Warning get _value => super._value as _Warning;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_Warning(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Warning implements _Warning {
  const _$_Warning(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'WordState.warning(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Warning &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$WarningCopyWith<_Warning> get copyWith =>
      __$WarningCopyWithImpl<_Warning>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(String answer, KtList<LetterState> letterList,
            KtSet<String> disabledLetters)
        game,
    required TResult Function(String answer) gameOver,
    required TResult Function() won,
    required TResult Function(String message) warning,
  }) {
    return warning(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String answer, KtList<LetterState> letterList,
            KtSet<String> disabledLetters)?
        game,
    TResult Function(String answer)? gameOver,
    TResult Function()? won,
    TResult Function(String message)? warning,
  }) {
    return warning?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String answer, KtList<LetterState> letterList,
            KtSet<String> disabledLetters)?
        game,
    TResult Function(String answer)? gameOver,
    TResult Function()? won,
    TResult Function(String message)? warning,
    required TResult orElse(),
  }) {
    if (warning != null) {
      return warning(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_Game value) game,
    required TResult Function(_GameOver value) gameOver,
    required TResult Function(_Won value) won,
    required TResult Function(_Warning value) warning,
  }) {
    return warning(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Game value)? game,
    TResult Function(_GameOver value)? gameOver,
    TResult Function(_Won value)? won,
    TResult Function(_Warning value)? warning,
  }) {
    return warning?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Game value)? game,
    TResult Function(_GameOver value)? gameOver,
    TResult Function(_Won value)? won,
    TResult Function(_Warning value)? warning,
    required TResult orElse(),
  }) {
    if (warning != null) {
      return warning(this);
    }
    return orElse();
  }
}

abstract class _Warning implements WordState {
  const factory _Warning(String message) = _$_Warning;

  String get message;
  @JsonKey(ignore: true)
  _$WarningCopyWith<_Warning> get copyWith =>
      throw _privateConstructorUsedError;
}
