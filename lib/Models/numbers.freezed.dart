// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'numbers.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Numbers _$NumbersFromJson(Map<String, dynamic> json) {
  return _Numbers.fromJson(json);
}

/// @nodoc
mixin _$Numbers {
  @JsonKey(name: 'value')
  int? get value => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String? get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NumbersCopyWith<Numbers> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NumbersCopyWith<$Res> {
  factory $NumbersCopyWith(Numbers value, $Res Function(Numbers) then) =
      _$NumbersCopyWithImpl<$Res, Numbers>;
  @useResult
  $Res call(
      {@JsonKey(name: 'value') int? value,
      @JsonKey(name: 'description') String? description});
}

/// @nodoc
class _$NumbersCopyWithImpl<$Res, $Val extends Numbers>
    implements $NumbersCopyWith<$Res> {
  _$NumbersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_NumbersCopyWith<$Res> implements $NumbersCopyWith<$Res> {
  factory _$$_NumbersCopyWith(
          _$_Numbers value, $Res Function(_$_Numbers) then) =
      __$$_NumbersCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'value') int? value,
      @JsonKey(name: 'description') String? description});
}

/// @nodoc
class __$$_NumbersCopyWithImpl<$Res>
    extends _$NumbersCopyWithImpl<$Res, _$_Numbers>
    implements _$$_NumbersCopyWith<$Res> {
  __$$_NumbersCopyWithImpl(_$_Numbers _value, $Res Function(_$_Numbers) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
    Object? description = freezed,
  }) {
    return _then(_$_Numbers(
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$_Numbers implements _Numbers {
  const _$_Numbers(
      {@JsonKey(name: 'value') this.value,
      @JsonKey(name: 'description') this.description});

  factory _$_Numbers.fromJson(Map<String, dynamic> json) =>
      _$$_NumbersFromJson(json);

  @override
  @JsonKey(name: 'value')
  final int? value;
  @override
  @JsonKey(name: 'description')
  final String? description;

  @override
  String toString() {
    return 'Numbers(value: $value, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Numbers &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, value, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NumbersCopyWith<_$_Numbers> get copyWith =>
      __$$_NumbersCopyWithImpl<_$_Numbers>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NumbersToJson(
      this,
    );
  }
}

abstract class _Numbers implements Numbers {
  const factory _Numbers(
      {@JsonKey(name: 'value') final int? value,
      @JsonKey(name: 'description') final String? description}) = _$_Numbers;

  factory _Numbers.fromJson(Map<String, dynamic> json) = _$_Numbers.fromJson;

  @override
  @JsonKey(name: 'value')
  int? get value;
  @override
  @JsonKey(name: 'description')
  String? get description;
  @override
  @JsonKey(ignore: true)
  _$$_NumbersCopyWith<_$_Numbers> get copyWith =>
      throw _privateConstructorUsedError;
}
