// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cv_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CVModel _$CVModelFromJson(Map<String, dynamic> json) {
  return _CVModel.fromJson(json);
}

/// @nodoc
mixin _$CVModel {
  String get id => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get size => throw _privateConstructorUsedError;
  DateTime? get uploadDate => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  bool get isMainCV => throw _privateConstructorUsedError;
  bool get isDelete => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CVModelCopyWith<CVModel> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CVModelCopyWith<$Res> {
  factory $CVModelCopyWith(CVModel value, $Res Function(CVModel) then) =
      _$CVModelCopyWithImpl<$Res, CVModel>;
  @useResult
  $Res call(
      {String id,
      String userId,
      String name,
      int size,
      DateTime? uploadDate,
      String url,
      bool isMainCV,
      bool isDelete});
}

/// @nodoc
class _$CVModelCopyWithImpl<$Res, $Val extends CVModel>
    implements $CVModelCopyWith<$Res> {
  _$CVModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? name = null,
    Object? size = null,
    Object? uploadDate = freezed,
    Object? url = null,
    Object? isMainCV = null,
    Object? isDelete = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
      uploadDate: freezed == uploadDate
          ? _value.uploadDate
          : uploadDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      isMainCV: null == isMainCV
          ? _value.isMainCV
          : isMainCV // ignore: cast_nullable_to_non_nullable
              as bool,
      isDelete: null == isDelete
          ? _value.isDelete
          : isDelete // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CVModelCopyWith<$Res> implements $CVModelCopyWith<$Res> {
  factory _$$_CVModelCopyWith(
          _$_CVModel value, $Res Function(_$_CVModel) then) =
      __$$_CVModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String userId,
      String name,
      int size,
      DateTime? uploadDate,
      String url,
      bool isMainCV,
      bool isDelete});
}

/// @nodoc
class __$$_CVModelCopyWithImpl<$Res>
    extends _$CVModelCopyWithImpl<$Res, _$_CVModel>
    implements _$$_CVModelCopyWith<$Res> {
  __$$_CVModelCopyWithImpl(_$_CVModel _value, $Res Function(_$_CVModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? name = null,
    Object? size = null,
    Object? uploadDate = freezed,
    Object? url = null,
    Object? isMainCV = null,
    Object? isDelete = null,
  }) {
    return _then(_$_CVModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
      uploadDate: freezed == uploadDate
          ? _value.uploadDate
          : uploadDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      isMainCV: null == isMainCV
          ? _value.isMainCV
          : isMainCV // ignore: cast_nullable_to_non_nullable
              as bool,
      isDelete: null == isDelete
          ? _value.isDelete
          : isDelete // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CVModel implements _CVModel {
  _$_CVModel(
      {this.id = '',
      this.userId = '',
      this.name = '',
      this.size = 0,
      this.uploadDate,
      this.url = '',
      this.isMainCV = false,
      this.isDelete = false});

  factory _$_CVModel.fromJson(Map<String, dynamic> json) =>
      _$$_CVModelFromJson(json);

  @override
  @JsonKey()
  final String id;
  @override
  @JsonKey()
  final String userId;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final int size;
  @override
  final DateTime? uploadDate;
  @override
  @JsonKey()
  final String url;
  @override
  @JsonKey()
  final bool isMainCV;
  @override
  @JsonKey()
  final bool isDelete;

  @override
  String toString() {
    return 'CVModel(id: $id, userId: $userId, name: $name, size: $size, uploadDate: $uploadDate, url: $url, isMainCV: $isMainCV, isDelete: $isDelete)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CVModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.uploadDate, uploadDate) ||
                other.uploadDate == uploadDate) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.isMainCV, isMainCV) ||
                other.isMainCV == isMainCV) &&
            (identical(other.isDelete, isDelete) ||
                other.isDelete == isDelete));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, userId, name, size, uploadDate, url, isMainCV, isDelete);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CVModelCopyWith<_$_CVModel> get copyWith =>
      __$$_CVModelCopyWithImpl<_$_CVModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CVModelToJson(
      this,
    );
  }
}

abstract class _CVModel implements CVModel {
  factory _CVModel(
      {final String id,
      final String userId,
      final String name,
      final int size,
      final DateTime? uploadDate,
      final String url,
      final bool isMainCV,
      final bool isDelete}) = _$_CVModel;

  factory _CVModel.fromJson(Map<String, dynamic> json) = _$_CVModel.fromJson;

  @override
  String get id;
  @override
  String get userId;
  @override
  String get name;
  @override
  int get size;
  @override
  DateTime? get uploadDate;
  @override
  String get url;
  @override
  bool get isMainCV;
  @override
  bool get isDelete;
  @override
  @JsonKey(ignore: true)
  _$$_CVModelCopyWith<_$_CVModel> get copyWith =>
      throw _privateConstructorUsedError;
}
