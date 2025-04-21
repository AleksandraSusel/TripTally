// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'expense_category_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ExpenseCategoryEntity {
  String get id;
  String get name;
  String get translationKey;

  /// Create a copy of ExpenseCategoryEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ExpenseCategoryEntityCopyWith<ExpenseCategoryEntity> get copyWith =>
      _$ExpenseCategoryEntityCopyWithImpl<ExpenseCategoryEntity>(this as ExpenseCategoryEntity, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ExpenseCategoryEntity &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.translationKey, translationKey) || other.translationKey == translationKey));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name, translationKey);

  @override
  String toString() {
    return 'ExpenseCategoryEntity(id: $id, name: $name, translationKey: $translationKey)';
  }
}

/// @nodoc
abstract mixin class $ExpenseCategoryEntityCopyWith<$Res> {
  factory $ExpenseCategoryEntityCopyWith(ExpenseCategoryEntity value, $Res Function(ExpenseCategoryEntity) _then) =
      _$ExpenseCategoryEntityCopyWithImpl;
  @useResult
  $Res call({String id, String name, String translationKey});
}

/// @nodoc
class _$ExpenseCategoryEntityCopyWithImpl<$Res> implements $ExpenseCategoryEntityCopyWith<$Res> {
  _$ExpenseCategoryEntityCopyWithImpl(this._self, this._then);

  final ExpenseCategoryEntity _self;
  final $Res Function(ExpenseCategoryEntity) _then;

  /// Create a copy of ExpenseCategoryEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? translationKey = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      translationKey: null == translationKey
          ? _self.translationKey
          : translationKey // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _ExpenseCategoryEntity implements ExpenseCategoryEntity {
  const _ExpenseCategoryEntity({required this.id, required this.name, required this.translationKey});

  @override
  final String id;
  @override
  final String name;
  @override
  final String translationKey;

  /// Create a copy of ExpenseCategoryEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ExpenseCategoryEntityCopyWith<_ExpenseCategoryEntity> get copyWith =>
      __$ExpenseCategoryEntityCopyWithImpl<_ExpenseCategoryEntity>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ExpenseCategoryEntity &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.translationKey, translationKey) || other.translationKey == translationKey));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name, translationKey);

  @override
  String toString() {
    return 'ExpenseCategoryEntity(id: $id, name: $name, translationKey: $translationKey)';
  }
}

/// @nodoc
abstract mixin class _$ExpenseCategoryEntityCopyWith<$Res> implements $ExpenseCategoryEntityCopyWith<$Res> {
  factory _$ExpenseCategoryEntityCopyWith(_ExpenseCategoryEntity value, $Res Function(_ExpenseCategoryEntity) _then) =
      __$ExpenseCategoryEntityCopyWithImpl;
  @override
  @useResult
  $Res call({String id, String name, String translationKey});
}

/// @nodoc
class __$ExpenseCategoryEntityCopyWithImpl<$Res> implements _$ExpenseCategoryEntityCopyWith<$Res> {
  __$ExpenseCategoryEntityCopyWithImpl(this._self, this._then);

  final _ExpenseCategoryEntity _self;
  final $Res Function(_ExpenseCategoryEntity) _then;

  /// Create a copy of ExpenseCategoryEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? translationKey = null,
  }) {
    return _then(_ExpenseCategoryEntity(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      translationKey: null == translationKey
          ? _self.translationKey
          : translationKey // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
