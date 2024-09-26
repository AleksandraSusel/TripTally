// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'expense_category_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ExpenseCategoryEntity {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get translationKey => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ExpenseCategoryEntityCopyWith<ExpenseCategoryEntity> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExpenseCategoryEntityCopyWith<$Res> {
  factory $ExpenseCategoryEntityCopyWith(ExpenseCategoryEntity value, $Res Function(ExpenseCategoryEntity) then) =
      _$ExpenseCategoryEntityCopyWithImpl<$Res, ExpenseCategoryEntity>;
  @useResult
  $Res call({String id, String name, String translationKey});
}

/// @nodoc
class _$ExpenseCategoryEntityCopyWithImpl<$Res, $Val extends ExpenseCategoryEntity>
    implements $ExpenseCategoryEntityCopyWith<$Res> {
  _$ExpenseCategoryEntityCopyWithImpl(this._value, this._then);

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
abstract class _$$ExpenseCategoryEntityImplCopyWith<$Res> implements $ExpenseCategoryEntityCopyWith<$Res> {
  factory _$$ExpenseCategoryEntityImplCopyWith(
          _$ExpenseCategoryEntityImpl value, $Res Function(_$ExpenseCategoryEntityImpl) then) =
      __$$ExpenseCategoryEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name, String translationKey});
}

/// @nodoc
class __$$ExpenseCategoryEntityImplCopyWithImpl<$Res>
    extends _$ExpenseCategoryEntityCopyWithImpl<$Res, _$ExpenseCategoryEntityImpl>
    implements _$$ExpenseCategoryEntityImplCopyWith<$Res> {
  __$$ExpenseCategoryEntityImplCopyWithImpl(
      _$ExpenseCategoryEntityImpl _value, $Res Function(_$ExpenseCategoryEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? translationKey = null,
  }) {
    return _then(_$ExpenseCategoryEntityImpl(
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

class _$ExpenseCategoryEntityImpl implements _ExpenseCategoryEntity {
  const _$ExpenseCategoryEntityImpl({required this.id, required this.name, required this.translationKey});

  @override
  final String id;
  @override
  final String name;
  @override
  final String translationKey;

  @override
  String toString() {
    return 'ExpenseCategoryEntity(id: $id, name: $name, translationKey: $translationKey)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExpenseCategoryEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.translationKey, translationKey) || other.translationKey == translationKey));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name, translationKey);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExpenseCategoryEntityImplCopyWith<_$ExpenseCategoryEntityImpl> get copyWith =>
      __$$ExpenseCategoryEntityImplCopyWithImpl<_$ExpenseCategoryEntityImpl>(this, _$identity);
}

abstract class _ExpenseCategoryEntity implements ExpenseCategoryEntity {
  const factory _ExpenseCategoryEntity(
      {required final String id,
      required final String name,
      required final String translationKey}) = _$ExpenseCategoryEntityImpl;

  @override
  String get id;
  @override
  String get name;
  @override
  String get translationKey;
  @override
  @JsonKey(ignore: true)
  _$$ExpenseCategoryEntityImplCopyWith<_$ExpenseCategoryEntityImpl> get copyWith => throw _privateConstructorUsedError;
}
