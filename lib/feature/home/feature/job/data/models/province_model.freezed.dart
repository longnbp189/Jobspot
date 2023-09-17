// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'province_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProvinceModel _$ProvinceModelFromJson(Map<String, dynamic> json) {
  return _ProvinceModel.fromJson(json);
}

/// @nodoc
mixin _$ProvinceModel {
  @JsonKey(name: '_id')
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get slug => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'name_with_type')
  String get nameWithType => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;
  bool get isDeleted => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProvinceModelCopyWith<ProvinceModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProvinceModelCopyWith<$Res> {
  factory $ProvinceModelCopyWith(
          ProvinceModel value, $Res Function(ProvinceModel) then) =
      _$ProvinceModelCopyWithImpl<$Res, ProvinceModel>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      String name,
      String slug,
      String type,
      @JsonKey(name: 'name_with_type') String nameWithType,
      String code,
      bool isDeleted});
}

/// @nodoc
class _$ProvinceModelCopyWithImpl<$Res, $Val extends ProvinceModel>
    implements $ProvinceModelCopyWith<$Res> {
  _$ProvinceModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? slug = null,
    Object? type = null,
    Object? nameWithType = null,
    Object? code = null,
    Object? isDeleted = null,
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
      slug: null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      nameWithType: null == nameWithType
          ? _value.nameWithType
          : nameWithType // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      isDeleted: null == isDeleted
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProvinceModelCopyWith<$Res>
    implements $ProvinceModelCopyWith<$Res> {
  factory _$$_ProvinceModelCopyWith(
          _$_ProvinceModel value, $Res Function(_$_ProvinceModel) then) =
      __$$_ProvinceModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      String name,
      String slug,
      String type,
      @JsonKey(name: 'name_with_type') String nameWithType,
      String code,
      bool isDeleted});
}

/// @nodoc
class __$$_ProvinceModelCopyWithImpl<$Res>
    extends _$ProvinceModelCopyWithImpl<$Res, _$_ProvinceModel>
    implements _$$_ProvinceModelCopyWith<$Res> {
  __$$_ProvinceModelCopyWithImpl(
      _$_ProvinceModel _value, $Res Function(_$_ProvinceModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? slug = null,
    Object? type = null,
    Object? nameWithType = null,
    Object? code = null,
    Object? isDeleted = null,
  }) {
    return _then(_$_ProvinceModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      slug: null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      nameWithType: null == nameWithType
          ? _value.nameWithType
          : nameWithType // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      isDeleted: null == isDeleted
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProvinceModel implements _ProvinceModel {
  _$_ProvinceModel(
      {@JsonKey(name: '_id') this.id = '',
      this.name = '',
      this.slug = '',
      this.type = '',
      @JsonKey(name: 'name_with_type') this.nameWithType = '',
      this.code = '',
      this.isDeleted = false});

  factory _$_ProvinceModel.fromJson(Map<String, dynamic> json) =>
      _$$_ProvinceModelFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String id;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String slug;
  @override
  @JsonKey()
  final String type;
  @override
  @JsonKey(name: 'name_with_type')
  final String nameWithType;
  @override
  @JsonKey()
  final String code;
  @override
  @JsonKey()
  final bool isDeleted;

  @override
  String toString() {
    return 'ProvinceModel(id: $id, name: $name, slug: $slug, type: $type, nameWithType: $nameWithType, code: $code, isDeleted: $isDeleted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProvinceModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.nameWithType, nameWithType) ||
                other.nameWithType == nameWithType) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.isDeleted, isDeleted) ||
                other.isDeleted == isDeleted));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, slug, type, nameWithType, code, isDeleted);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProvinceModelCopyWith<_$_ProvinceModel> get copyWith =>
      __$$_ProvinceModelCopyWithImpl<_$_ProvinceModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProvinceModelToJson(
      this,
    );
  }
}

abstract class _ProvinceModel implements ProvinceModel {
  factory _ProvinceModel(
      {@JsonKey(name: '_id') final String id,
      final String name,
      final String slug,
      final String type,
      @JsonKey(name: 'name_with_type') final String nameWithType,
      final String code,
      final bool isDeleted}) = _$_ProvinceModel;

  factory _ProvinceModel.fromJson(Map<String, dynamic> json) =
      _$_ProvinceModel.fromJson;

  @override
  @JsonKey(name: '_id')
  String get id;
  @override
  String get name;
  @override
  String get slug;
  @override
  String get type;
  @override
  @JsonKey(name: 'name_with_type')
  String get nameWithType;
  @override
  String get code;
  @override
  bool get isDeleted;
  @override
  @JsonKey(ignore: true)
  _$$_ProvinceModelCopyWith<_$_ProvinceModel> get copyWith =>
      throw _privateConstructorUsedError;
}
