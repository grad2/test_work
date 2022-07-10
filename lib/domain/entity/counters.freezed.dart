// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'counters.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Counters {
  int get one => throw _privateConstructorUsedError;
  int get two => throw _privateConstructorUsedError;
  int get three => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CountersCopyWith<Counters> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CountersCopyWith<$Res> {
  factory $CountersCopyWith(Counters value, $Res Function(Counters) then) =
      _$CountersCopyWithImpl<$Res>;
  $Res call({int one, int two, int three});
}

/// @nodoc
class _$CountersCopyWithImpl<$Res> implements $CountersCopyWith<$Res> {
  _$CountersCopyWithImpl(this._value, this._then);

  final Counters _value;
  // ignore: unused_field
  final $Res Function(Counters) _then;

  @override
  $Res call({
    Object? one = freezed,
    Object? two = freezed,
    Object? three = freezed,
  }) {
    return _then(_value.copyWith(
      one: one == freezed
          ? _value.one
          : one // ignore: cast_nullable_to_non_nullable
              as int,
      two: two == freezed
          ? _value.two
          : two // ignore: cast_nullable_to_non_nullable
              as int,
      three: three == freezed
          ? _value.three
          : three // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_CountersCopyWith<$Res> implements $CountersCopyWith<$Res> {
  factory _$$_CountersCopyWith(
          _$_Counters value, $Res Function(_$_Counters) then) =
      __$$_CountersCopyWithImpl<$Res>;
  @override
  $Res call({int one, int two, int three});
}

/// @nodoc
class __$$_CountersCopyWithImpl<$Res> extends _$CountersCopyWithImpl<$Res>
    implements _$$_CountersCopyWith<$Res> {
  __$$_CountersCopyWithImpl(
      _$_Counters _value, $Res Function(_$_Counters) _then)
      : super(_value, (v) => _then(v as _$_Counters));

  @override
  _$_Counters get _value => super._value as _$_Counters;

  @override
  $Res call({
    Object? one = freezed,
    Object? two = freezed,
    Object? three = freezed,
  }) {
    return _then(_$_Counters(
      one: one == freezed
          ? _value.one
          : one // ignore: cast_nullable_to_non_nullable
              as int,
      two: two == freezed
          ? _value.two
          : two // ignore: cast_nullable_to_non_nullable
              as int,
      three: three == freezed
          ? _value.three
          : three // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_Counters extends _Counters {
  const _$_Counters({required this.one, required this.two, required this.three})
      : super._();

  @override
  final int one;
  @override
  final int two;
  @override
  final int three;

  @override
  String toString() {
    return 'Counters(one: $one, two: $two, three: $three)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Counters &&
            const DeepCollectionEquality().equals(other.one, one) &&
            const DeepCollectionEquality().equals(other.two, two) &&
            const DeepCollectionEquality().equals(other.three, three));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(one),
      const DeepCollectionEquality().hash(two),
      const DeepCollectionEquality().hash(three));

  @JsonKey(ignore: true)
  @override
  _$$_CountersCopyWith<_$_Counters> get copyWith =>
      __$$_CountersCopyWithImpl<_$_Counters>(this, _$identity);
}

abstract class _Counters extends Counters {
  const factory _Counters(
      {required final int one,
      required final int two,
      required final int three}) = _$_Counters;
  const _Counters._() : super._();

  @override
  int get one;
  @override
  int get two;
  @override
  int get three;
  @override
  @JsonKey(ignore: true)
  _$$_CountersCopyWith<_$_Counters> get copyWith =>
      throw _privateConstructorUsedError;
}
