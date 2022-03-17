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

  _State call(KtList<KtList<LetterState>> words, KtList<String> triedLetters) {
    return _State(
      words,
      triedLetters,
    );
  }
}

/// @nodoc
const $WordState = _$WordStateTearOff();

/// @nodoc
mixin _$WordState {
  KtList<KtList<LetterState>> get words => throw _privateConstructorUsedError;
  KtList<String> get triedLetters => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WordStateCopyWith<WordState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WordStateCopyWith<$Res> {
  factory $WordStateCopyWith(WordState value, $Res Function(WordState) then) =
      _$WordStateCopyWithImpl<$Res>;
  $Res call({KtList<KtList<LetterState>> words, KtList<String> triedLetters});
}

/// @nodoc
class _$WordStateCopyWithImpl<$Res> implements $WordStateCopyWith<$Res> {
  _$WordStateCopyWithImpl(this._value, this._then);

  final WordState _value;
  // ignore: unused_field
  final $Res Function(WordState) _then;

  @override
  $Res call({
    Object? words = freezed,
    Object? triedLetters = freezed,
  }) {
    return _then(_value.copyWith(
      words: words == freezed
          ? _value.words
          : words // ignore: cast_nullable_to_non_nullable
              as KtList<KtList<LetterState>>,
      triedLetters: triedLetters == freezed
          ? _value.triedLetters
          : triedLetters // ignore: cast_nullable_to_non_nullable
              as KtList<String>,
    ));
  }
}

/// @nodoc
abstract class _$StateCopyWith<$Res> implements $WordStateCopyWith<$Res> {
  factory _$StateCopyWith(_State value, $Res Function(_State) then) =
      __$StateCopyWithImpl<$Res>;
  @override
  $Res call({KtList<KtList<LetterState>> words, KtList<String> triedLetters});
}

/// @nodoc
class __$StateCopyWithImpl<$Res> extends _$WordStateCopyWithImpl<$Res>
    implements _$StateCopyWith<$Res> {
  __$StateCopyWithImpl(_State _value, $Res Function(_State) _then)
      : super(_value, (v) => _then(v as _State));

  @override
  _State get _value => super._value as _State;

  @override
  $Res call({
    Object? words = freezed,
    Object? triedLetters = freezed,
  }) {
    return _then(_State(
      words == freezed
          ? _value.words
          : words // ignore: cast_nullable_to_non_nullable
              as KtList<KtList<LetterState>>,
      triedLetters == freezed
          ? _value.triedLetters
          : triedLetters // ignore: cast_nullable_to_non_nullable
              as KtList<String>,
    ));
  }
}

/// @nodoc

class _$_State implements _State {
  const _$_State(this.words, this.triedLetters);

  @override
  final KtList<KtList<LetterState>> words;
  @override
  final KtList<String> triedLetters;

  @override
  String toString() {
    return 'WordState(words: $words, triedLetters: $triedLetters)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _State &&
            const DeepCollectionEquality().equals(other.words, words) &&
            const DeepCollectionEquality()
                .equals(other.triedLetters, triedLetters));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(words),
      const DeepCollectionEquality().hash(triedLetters));

  @JsonKey(ignore: true)
  @override
  _$StateCopyWith<_State> get copyWith =>
      __$StateCopyWithImpl<_State>(this, _$identity);
}

abstract class _State implements WordState {
  const factory _State(
          KtList<KtList<LetterState>> words, KtList<String> triedLetters) =
      _$_State;

  @override
  KtList<KtList<LetterState>> get words;
  @override
  KtList<String> get triedLetters;
  @override
  @JsonKey(ignore: true)
  _$StateCopyWith<_State> get copyWith => throw _privateConstructorUsedError;
}
