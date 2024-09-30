// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'expense_category_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ExpenseCategoryDto _$ExpenseCategoryDtoFromJson(Map<String, dynamic> json) {
  return _ExpenseCategoryDto.fromJson(json);
}

/// @nodoc
mixin _$ExpenseCategoryDto {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get translationKey => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExpenseCategoryDtoCopyWith<ExpenseCategoryDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExpenseCategoryDtoCopyWith<$Res> {
  factory $ExpenseCategoryDtoCopyWith(ExpenseCategoryDto value, $Res Function(ExpenseCategoryDto) then) =
      _$ExpenseCategoryDtoCopyWithImpl<$Res, ExpenseCategoryDto>;

  @useResult
  $Res call({String id, String name, String translationKey});
}

/// @nodoc
class _$ExpenseCategoryDtoCopyWithImpl<$Res, $Val extends ExpenseCategoryDto>
    implements $ExpenseCategoryDtoCopyWith<$Res> {
  _$ExpenseCategoryDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? translationKey = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      translationKey: null == translationKey
          ? _value.translationKey
          : translationKey // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ExpenseCategoryDtoImplCopyWith<$Res> implements $ExpenseCategoryDtoCopyWith<$Res> {
  factory _$$ExpenseCategoryDtoImplCopyWith(
          _$ExpenseCategoryDtoImpl value, $Res Function(_$ExpenseCategoryDtoImpl) then) =
      __$$ExpenseCategoryDtoImplCopyWithImpl<$Res>;

  @override
  @useResult
  $Res call({String id, String name, String translationKey});
}

/// @nodoc
class __$$ExpenseCategoryDtoImplCopyWithImpl<$Res>
    extends _$ExpenseCategoryDtoCopyWithImpl<$Res, _$ExpenseCategoryDtoImpl>
    implements _$$ExpenseCategoryDtoImplCopyWith<$Res> {
  __$$ExpenseCategoryDtoImplCopyWithImpl(_$ExpenseCategoryDtoImpl _value, $Res Function(_$ExpenseCategoryDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? translationKey = null,
  }) {
    return _then(_$ExpenseCategoryDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      translationKey: null == translationKey
          ? _value.translationKey
          : translationKey // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ExpenseCategoryDtoImpl implements _ExpenseCategoryDto {
  const _$ExpenseCategoryDtoImpl({required this.id, required this.name, required this.translationKey});

  factory _$ExpenseCategoryDtoImpl.fromJson(Map<String, dynamic> json) => _$$ExpenseCategoryDtoImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String translationKey;

  @override
  String toString() {
    return 'ExpenseCategoryDto(id: $id, name: $name, translationKey: $translationKey)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExpenseCategoryDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.translationKey, translationKey) || other.translationKey == translationKey));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, translationKey);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExpenseCategoryDtoImplCopyWith<_$ExpenseCategoryDtoImpl> get copyWith =>
      __$$ExpenseCategoryDtoImplCopyWithImpl<_$ExpenseCategoryDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExpenseCategoryDtoImplToJson(
      this,
    );
  }
}

abstract class _ExpenseCategoryDto implements ExpenseCategoryDto {
  const factory _ExpenseCategoryDto(
      {required final String id,
      required final String name,
      required final String translationKey}) = _$ExpenseCategoryDtoImpl;

  factory _ExpenseCategoryDto.fromJson(Map<String, dynamic> json) = _$ExpenseCategoryDtoImpl.fromJson;

  @override
  String get id;

  @override
  String get name;

  @override
  String get translationKey;

  @override
  @JsonKey(ignore: true)
  _$$ExpenseCategoryDtoImplCopyWith<_$ExpenseCategoryDtoImpl> get copyWith => throw _privateConstructorUsedError;
}
