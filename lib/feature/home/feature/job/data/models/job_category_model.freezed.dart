// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'job_category_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

JobCategoryModel _$JobCategoryModelFromJson(Map<String, dynamic> json) {
  return _JobCategoryModel.fromJson(json);
}

/// @nodoc
mixin _$JobCategoryModel {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $JobCategoryModelCopyWith<JobCategoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JobCategoryModelCopyWith<$Res> {
  factory $JobCategoryModelCopyWith(
          JobCategoryModel value, $Res Function(JobCategoryModel) then) =
      _$JobCategoryModelCopyWithImpl<$Res, JobCategoryModel>;
  @useResult
  $Res call({String id, String name});
}

/// @nodoc
class _$JobCategoryModelCopyWithImpl<$Res, $Val extends JobCategoryModel>
    implements $JobCategoryModelCopyWith<$Res> {
  _$JobCategoryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_JobCategoryModelCopyWith<$Res>
    implements $JobCategoryModelCopyWith<$Res> {
  factory _$$_JobCategoryModelCopyWith(
          _$_JobCategoryModel value, $Res Function(_$_JobCategoryModel) then) =
      __$$_JobCategoryModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name});
}

/// @nodoc
class __$$_JobCategoryModelCopyWithImpl<$Res>
    extends _$JobCategoryModelCopyWithImpl<$Res, _$_JobCategoryModel>
    implements _$$_JobCategoryModelCopyWith<$Res> {
  __$$_JobCategoryModelCopyWithImpl(
      _$_JobCategoryModel _value, $Res Function(_$_JobCategoryModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$_JobCategoryModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_JobCategoryModel implements _JobCategoryModel {
  _$_JobCategoryModel({this.id = '', this.name = ''});

  factory _$_JobCategoryModel.fromJson(Map<String, dynamic> json) =>
      _$$_JobCategoryModelFromJson(json);

  @override
  @JsonKey()
  final String id;
  @override
  @JsonKey()
  final String name;

  @override
  String toString() {
    return 'JobCategoryModel(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_JobCategoryModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_JobCategoryModelCopyWith<_$_JobCategoryModel> get copyWith =>
      __$$_JobCategoryModelCopyWithImpl<_$_JobCategoryModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_JobCategoryModelToJson(
      this,
    );
  }
}

abstract class _JobCategoryModel implements JobCategoryModel {
  factory _JobCategoryModel({final String id, final String name}) =
      _$_JobCategoryModel;

  factory _JobCategoryModel.fromJson(Map<String, dynamic> json) =
      _$_JobCategoryModel.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_JobCategoryModelCopyWith<_$_JobCategoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}
