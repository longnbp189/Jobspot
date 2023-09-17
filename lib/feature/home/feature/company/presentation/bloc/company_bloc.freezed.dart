// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'company_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CompanyEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int pageKey) getListCompany,
    required TResult Function() getListCompanyMax,
    required TResult Function(String searchText) searchCompany,
    required TResult Function(int pageKey) getListCompanySameType,
    required TResult Function() getListTopCompany,
    required TResult Function() resetLastDocument,
    required TResult Function(CompanyModel company, UserModel userModel)
        getCompanyById,
    required TResult Function() followCompany,
    required TResult Function(CompanyModel company) unFollowCompany,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int pageKey)? getListCompany,
    TResult? Function()? getListCompanyMax,
    TResult? Function(String searchText)? searchCompany,
    TResult? Function(int pageKey)? getListCompanySameType,
    TResult? Function()? getListTopCompany,
    TResult? Function()? resetLastDocument,
    TResult? Function(CompanyModel company, UserModel userModel)?
        getCompanyById,
    TResult? Function()? followCompany,
    TResult? Function(CompanyModel company)? unFollowCompany,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int pageKey)? getListCompany,
    TResult Function()? getListCompanyMax,
    TResult Function(String searchText)? searchCompany,
    TResult Function(int pageKey)? getListCompanySameType,
    TResult Function()? getListTopCompany,
    TResult Function()? resetLastDocument,
    TResult Function(CompanyModel company, UserModel userModel)? getCompanyById,
    TResult Function()? followCompany,
    TResult Function(CompanyModel company)? unFollowCompany,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetListCompanyRequested value) getListCompany,
    required TResult Function(GetListCompanyMaxRequested value)
        getListCompanyMax,
    required TResult Function(SearchCompanyRequested value) searchCompany,
    required TResult Function(GetListCompanySameTypeRequested value)
        getListCompanySameType,
    required TResult Function(GetListTopCompanyRequested value)
        getListTopCompany,
    required TResult Function(ResetLastDocumentRequested value)
        resetLastDocument,
    required TResult Function(GetCompanyByIdRequested value) getCompanyById,
    required TResult Function(FollowCompanyRequested value) followCompany,
    required TResult Function(UnFollowCompanyRequested value) unFollowCompany,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetListCompanyRequested value)? getListCompany,
    TResult? Function(GetListCompanyMaxRequested value)? getListCompanyMax,
    TResult? Function(SearchCompanyRequested value)? searchCompany,
    TResult? Function(GetListCompanySameTypeRequested value)?
        getListCompanySameType,
    TResult? Function(GetListTopCompanyRequested value)? getListTopCompany,
    TResult? Function(ResetLastDocumentRequested value)? resetLastDocument,
    TResult? Function(GetCompanyByIdRequested value)? getCompanyById,
    TResult? Function(FollowCompanyRequested value)? followCompany,
    TResult? Function(UnFollowCompanyRequested value)? unFollowCompany,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetListCompanyRequested value)? getListCompany,
    TResult Function(GetListCompanyMaxRequested value)? getListCompanyMax,
    TResult Function(SearchCompanyRequested value)? searchCompany,
    TResult Function(GetListCompanySameTypeRequested value)?
        getListCompanySameType,
    TResult Function(GetListTopCompanyRequested value)? getListTopCompany,
    TResult Function(ResetLastDocumentRequested value)? resetLastDocument,
    TResult Function(GetCompanyByIdRequested value)? getCompanyById,
    TResult Function(FollowCompanyRequested value)? followCompany,
    TResult Function(UnFollowCompanyRequested value)? unFollowCompany,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompanyEventCopyWith<$Res> {
  factory $CompanyEventCopyWith(
          CompanyEvent value, $Res Function(CompanyEvent) then) =
      _$CompanyEventCopyWithImpl<$Res, CompanyEvent>;
}

/// @nodoc
class _$CompanyEventCopyWithImpl<$Res, $Val extends CompanyEvent>
    implements $CompanyEventCopyWith<$Res> {
  _$CompanyEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetListCompanyRequestedCopyWith<$Res> {
  factory _$$GetListCompanyRequestedCopyWith(_$GetListCompanyRequested value,
          $Res Function(_$GetListCompanyRequested) then) =
      __$$GetListCompanyRequestedCopyWithImpl<$Res>;
  @useResult
  $Res call({int pageKey});
}

/// @nodoc
class __$$GetListCompanyRequestedCopyWithImpl<$Res>
    extends _$CompanyEventCopyWithImpl<$Res, _$GetListCompanyRequested>
    implements _$$GetListCompanyRequestedCopyWith<$Res> {
  __$$GetListCompanyRequestedCopyWithImpl(_$GetListCompanyRequested _value,
      $Res Function(_$GetListCompanyRequested) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageKey = null,
  }) {
    return _then(_$GetListCompanyRequested(
      null == pageKey
          ? _value.pageKey
          : pageKey // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GetListCompanyRequested implements GetListCompanyRequested {
  const _$GetListCompanyRequested(this.pageKey);

  @override
  final int pageKey;

  @override
  String toString() {
    return 'CompanyEvent.getListCompany(pageKey: $pageKey)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetListCompanyRequested &&
            (identical(other.pageKey, pageKey) || other.pageKey == pageKey));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pageKey);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetListCompanyRequestedCopyWith<_$GetListCompanyRequested> get copyWith =>
      __$$GetListCompanyRequestedCopyWithImpl<_$GetListCompanyRequested>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int pageKey) getListCompany,
    required TResult Function() getListCompanyMax,
    required TResult Function(String searchText) searchCompany,
    required TResult Function(int pageKey) getListCompanySameType,
    required TResult Function() getListTopCompany,
    required TResult Function() resetLastDocument,
    required TResult Function(CompanyModel company, UserModel userModel)
        getCompanyById,
    required TResult Function() followCompany,
    required TResult Function(CompanyModel company) unFollowCompany,
  }) {
    return getListCompany(pageKey);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int pageKey)? getListCompany,
    TResult? Function()? getListCompanyMax,
    TResult? Function(String searchText)? searchCompany,
    TResult? Function(int pageKey)? getListCompanySameType,
    TResult? Function()? getListTopCompany,
    TResult? Function()? resetLastDocument,
    TResult? Function(CompanyModel company, UserModel userModel)?
        getCompanyById,
    TResult? Function()? followCompany,
    TResult? Function(CompanyModel company)? unFollowCompany,
  }) {
    return getListCompany?.call(pageKey);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int pageKey)? getListCompany,
    TResult Function()? getListCompanyMax,
    TResult Function(String searchText)? searchCompany,
    TResult Function(int pageKey)? getListCompanySameType,
    TResult Function()? getListTopCompany,
    TResult Function()? resetLastDocument,
    TResult Function(CompanyModel company, UserModel userModel)? getCompanyById,
    TResult Function()? followCompany,
    TResult Function(CompanyModel company)? unFollowCompany,
    required TResult orElse(),
  }) {
    if (getListCompany != null) {
      return getListCompany(pageKey);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetListCompanyRequested value) getListCompany,
    required TResult Function(GetListCompanyMaxRequested value)
        getListCompanyMax,
    required TResult Function(SearchCompanyRequested value) searchCompany,
    required TResult Function(GetListCompanySameTypeRequested value)
        getListCompanySameType,
    required TResult Function(GetListTopCompanyRequested value)
        getListTopCompany,
    required TResult Function(ResetLastDocumentRequested value)
        resetLastDocument,
    required TResult Function(GetCompanyByIdRequested value) getCompanyById,
    required TResult Function(FollowCompanyRequested value) followCompany,
    required TResult Function(UnFollowCompanyRequested value) unFollowCompany,
  }) {
    return getListCompany(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetListCompanyRequested value)? getListCompany,
    TResult? Function(GetListCompanyMaxRequested value)? getListCompanyMax,
    TResult? Function(SearchCompanyRequested value)? searchCompany,
    TResult? Function(GetListCompanySameTypeRequested value)?
        getListCompanySameType,
    TResult? Function(GetListTopCompanyRequested value)? getListTopCompany,
    TResult? Function(ResetLastDocumentRequested value)? resetLastDocument,
    TResult? Function(GetCompanyByIdRequested value)? getCompanyById,
    TResult? Function(FollowCompanyRequested value)? followCompany,
    TResult? Function(UnFollowCompanyRequested value)? unFollowCompany,
  }) {
    return getListCompany?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetListCompanyRequested value)? getListCompany,
    TResult Function(GetListCompanyMaxRequested value)? getListCompanyMax,
    TResult Function(SearchCompanyRequested value)? searchCompany,
    TResult Function(GetListCompanySameTypeRequested value)?
        getListCompanySameType,
    TResult Function(GetListTopCompanyRequested value)? getListTopCompany,
    TResult Function(ResetLastDocumentRequested value)? resetLastDocument,
    TResult Function(GetCompanyByIdRequested value)? getCompanyById,
    TResult Function(FollowCompanyRequested value)? followCompany,
    TResult Function(UnFollowCompanyRequested value)? unFollowCompany,
    required TResult orElse(),
  }) {
    if (getListCompany != null) {
      return getListCompany(this);
    }
    return orElse();
  }
}

abstract class GetListCompanyRequested implements CompanyEvent {
  const factory GetListCompanyRequested(final int pageKey) =
      _$GetListCompanyRequested;

  int get pageKey;
  @JsonKey(ignore: true)
  _$$GetListCompanyRequestedCopyWith<_$GetListCompanyRequested> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetListCompanyMaxRequestedCopyWith<$Res> {
  factory _$$GetListCompanyMaxRequestedCopyWith(
          _$GetListCompanyMaxRequested value,
          $Res Function(_$GetListCompanyMaxRequested) then) =
      __$$GetListCompanyMaxRequestedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetListCompanyMaxRequestedCopyWithImpl<$Res>
    extends _$CompanyEventCopyWithImpl<$Res, _$GetListCompanyMaxRequested>
    implements _$$GetListCompanyMaxRequestedCopyWith<$Res> {
  __$$GetListCompanyMaxRequestedCopyWithImpl(
      _$GetListCompanyMaxRequested _value,
      $Res Function(_$GetListCompanyMaxRequested) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetListCompanyMaxRequested implements GetListCompanyMaxRequested {
  const _$GetListCompanyMaxRequested();

  @override
  String toString() {
    return 'CompanyEvent.getListCompanyMax()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetListCompanyMaxRequested);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int pageKey) getListCompany,
    required TResult Function() getListCompanyMax,
    required TResult Function(String searchText) searchCompany,
    required TResult Function(int pageKey) getListCompanySameType,
    required TResult Function() getListTopCompany,
    required TResult Function() resetLastDocument,
    required TResult Function(CompanyModel company, UserModel userModel)
        getCompanyById,
    required TResult Function() followCompany,
    required TResult Function(CompanyModel company) unFollowCompany,
  }) {
    return getListCompanyMax();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int pageKey)? getListCompany,
    TResult? Function()? getListCompanyMax,
    TResult? Function(String searchText)? searchCompany,
    TResult? Function(int pageKey)? getListCompanySameType,
    TResult? Function()? getListTopCompany,
    TResult? Function()? resetLastDocument,
    TResult? Function(CompanyModel company, UserModel userModel)?
        getCompanyById,
    TResult? Function()? followCompany,
    TResult? Function(CompanyModel company)? unFollowCompany,
  }) {
    return getListCompanyMax?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int pageKey)? getListCompany,
    TResult Function()? getListCompanyMax,
    TResult Function(String searchText)? searchCompany,
    TResult Function(int pageKey)? getListCompanySameType,
    TResult Function()? getListTopCompany,
    TResult Function()? resetLastDocument,
    TResult Function(CompanyModel company, UserModel userModel)? getCompanyById,
    TResult Function()? followCompany,
    TResult Function(CompanyModel company)? unFollowCompany,
    required TResult orElse(),
  }) {
    if (getListCompanyMax != null) {
      return getListCompanyMax();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetListCompanyRequested value) getListCompany,
    required TResult Function(GetListCompanyMaxRequested value)
        getListCompanyMax,
    required TResult Function(SearchCompanyRequested value) searchCompany,
    required TResult Function(GetListCompanySameTypeRequested value)
        getListCompanySameType,
    required TResult Function(GetListTopCompanyRequested value)
        getListTopCompany,
    required TResult Function(ResetLastDocumentRequested value)
        resetLastDocument,
    required TResult Function(GetCompanyByIdRequested value) getCompanyById,
    required TResult Function(FollowCompanyRequested value) followCompany,
    required TResult Function(UnFollowCompanyRequested value) unFollowCompany,
  }) {
    return getListCompanyMax(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetListCompanyRequested value)? getListCompany,
    TResult? Function(GetListCompanyMaxRequested value)? getListCompanyMax,
    TResult? Function(SearchCompanyRequested value)? searchCompany,
    TResult? Function(GetListCompanySameTypeRequested value)?
        getListCompanySameType,
    TResult? Function(GetListTopCompanyRequested value)? getListTopCompany,
    TResult? Function(ResetLastDocumentRequested value)? resetLastDocument,
    TResult? Function(GetCompanyByIdRequested value)? getCompanyById,
    TResult? Function(FollowCompanyRequested value)? followCompany,
    TResult? Function(UnFollowCompanyRequested value)? unFollowCompany,
  }) {
    return getListCompanyMax?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetListCompanyRequested value)? getListCompany,
    TResult Function(GetListCompanyMaxRequested value)? getListCompanyMax,
    TResult Function(SearchCompanyRequested value)? searchCompany,
    TResult Function(GetListCompanySameTypeRequested value)?
        getListCompanySameType,
    TResult Function(GetListTopCompanyRequested value)? getListTopCompany,
    TResult Function(ResetLastDocumentRequested value)? resetLastDocument,
    TResult Function(GetCompanyByIdRequested value)? getCompanyById,
    TResult Function(FollowCompanyRequested value)? followCompany,
    TResult Function(UnFollowCompanyRequested value)? unFollowCompany,
    required TResult orElse(),
  }) {
    if (getListCompanyMax != null) {
      return getListCompanyMax(this);
    }
    return orElse();
  }
}

abstract class GetListCompanyMaxRequested implements CompanyEvent {
  const factory GetListCompanyMaxRequested() = _$GetListCompanyMaxRequested;
}

/// @nodoc
abstract class _$$SearchCompanyRequestedCopyWith<$Res> {
  factory _$$SearchCompanyRequestedCopyWith(_$SearchCompanyRequested value,
          $Res Function(_$SearchCompanyRequested) then) =
      __$$SearchCompanyRequestedCopyWithImpl<$Res>;
  @useResult
  $Res call({String searchText});
}

/// @nodoc
class __$$SearchCompanyRequestedCopyWithImpl<$Res>
    extends _$CompanyEventCopyWithImpl<$Res, _$SearchCompanyRequested>
    implements _$$SearchCompanyRequestedCopyWith<$Res> {
  __$$SearchCompanyRequestedCopyWithImpl(_$SearchCompanyRequested _value,
      $Res Function(_$SearchCompanyRequested) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchText = null,
  }) {
    return _then(_$SearchCompanyRequested(
      null == searchText
          ? _value.searchText
          : searchText // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchCompanyRequested implements SearchCompanyRequested {
  const _$SearchCompanyRequested(this.searchText);

  @override
  final String searchText;

  @override
  String toString() {
    return 'CompanyEvent.searchCompany(searchText: $searchText)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchCompanyRequested &&
            (identical(other.searchText, searchText) ||
                other.searchText == searchText));
  }

  @override
  int get hashCode => Object.hash(runtimeType, searchText);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchCompanyRequestedCopyWith<_$SearchCompanyRequested> get copyWith =>
      __$$SearchCompanyRequestedCopyWithImpl<_$SearchCompanyRequested>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int pageKey) getListCompany,
    required TResult Function() getListCompanyMax,
    required TResult Function(String searchText) searchCompany,
    required TResult Function(int pageKey) getListCompanySameType,
    required TResult Function() getListTopCompany,
    required TResult Function() resetLastDocument,
    required TResult Function(CompanyModel company, UserModel userModel)
        getCompanyById,
    required TResult Function() followCompany,
    required TResult Function(CompanyModel company) unFollowCompany,
  }) {
    return searchCompany(searchText);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int pageKey)? getListCompany,
    TResult? Function()? getListCompanyMax,
    TResult? Function(String searchText)? searchCompany,
    TResult? Function(int pageKey)? getListCompanySameType,
    TResult? Function()? getListTopCompany,
    TResult? Function()? resetLastDocument,
    TResult? Function(CompanyModel company, UserModel userModel)?
        getCompanyById,
    TResult? Function()? followCompany,
    TResult? Function(CompanyModel company)? unFollowCompany,
  }) {
    return searchCompany?.call(searchText);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int pageKey)? getListCompany,
    TResult Function()? getListCompanyMax,
    TResult Function(String searchText)? searchCompany,
    TResult Function(int pageKey)? getListCompanySameType,
    TResult Function()? getListTopCompany,
    TResult Function()? resetLastDocument,
    TResult Function(CompanyModel company, UserModel userModel)? getCompanyById,
    TResult Function()? followCompany,
    TResult Function(CompanyModel company)? unFollowCompany,
    required TResult orElse(),
  }) {
    if (searchCompany != null) {
      return searchCompany(searchText);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetListCompanyRequested value) getListCompany,
    required TResult Function(GetListCompanyMaxRequested value)
        getListCompanyMax,
    required TResult Function(SearchCompanyRequested value) searchCompany,
    required TResult Function(GetListCompanySameTypeRequested value)
        getListCompanySameType,
    required TResult Function(GetListTopCompanyRequested value)
        getListTopCompany,
    required TResult Function(ResetLastDocumentRequested value)
        resetLastDocument,
    required TResult Function(GetCompanyByIdRequested value) getCompanyById,
    required TResult Function(FollowCompanyRequested value) followCompany,
    required TResult Function(UnFollowCompanyRequested value) unFollowCompany,
  }) {
    return searchCompany(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetListCompanyRequested value)? getListCompany,
    TResult? Function(GetListCompanyMaxRequested value)? getListCompanyMax,
    TResult? Function(SearchCompanyRequested value)? searchCompany,
    TResult? Function(GetListCompanySameTypeRequested value)?
        getListCompanySameType,
    TResult? Function(GetListTopCompanyRequested value)? getListTopCompany,
    TResult? Function(ResetLastDocumentRequested value)? resetLastDocument,
    TResult? Function(GetCompanyByIdRequested value)? getCompanyById,
    TResult? Function(FollowCompanyRequested value)? followCompany,
    TResult? Function(UnFollowCompanyRequested value)? unFollowCompany,
  }) {
    return searchCompany?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetListCompanyRequested value)? getListCompany,
    TResult Function(GetListCompanyMaxRequested value)? getListCompanyMax,
    TResult Function(SearchCompanyRequested value)? searchCompany,
    TResult Function(GetListCompanySameTypeRequested value)?
        getListCompanySameType,
    TResult Function(GetListTopCompanyRequested value)? getListTopCompany,
    TResult Function(ResetLastDocumentRequested value)? resetLastDocument,
    TResult Function(GetCompanyByIdRequested value)? getCompanyById,
    TResult Function(FollowCompanyRequested value)? followCompany,
    TResult Function(UnFollowCompanyRequested value)? unFollowCompany,
    required TResult orElse(),
  }) {
    if (searchCompany != null) {
      return searchCompany(this);
    }
    return orElse();
  }
}

abstract class SearchCompanyRequested implements CompanyEvent {
  const factory SearchCompanyRequested(final String searchText) =
      _$SearchCompanyRequested;

  String get searchText;
  @JsonKey(ignore: true)
  _$$SearchCompanyRequestedCopyWith<_$SearchCompanyRequested> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetListCompanySameTypeRequestedCopyWith<$Res> {
  factory _$$GetListCompanySameTypeRequestedCopyWith(
          _$GetListCompanySameTypeRequested value,
          $Res Function(_$GetListCompanySameTypeRequested) then) =
      __$$GetListCompanySameTypeRequestedCopyWithImpl<$Res>;
  @useResult
  $Res call({int pageKey});
}

/// @nodoc
class __$$GetListCompanySameTypeRequestedCopyWithImpl<$Res>
    extends _$CompanyEventCopyWithImpl<$Res, _$GetListCompanySameTypeRequested>
    implements _$$GetListCompanySameTypeRequestedCopyWith<$Res> {
  __$$GetListCompanySameTypeRequestedCopyWithImpl(
      _$GetListCompanySameTypeRequested _value,
      $Res Function(_$GetListCompanySameTypeRequested) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageKey = null,
  }) {
    return _then(_$GetListCompanySameTypeRequested(
      null == pageKey
          ? _value.pageKey
          : pageKey // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GetListCompanySameTypeRequested
    implements GetListCompanySameTypeRequested {
  const _$GetListCompanySameTypeRequested(this.pageKey);

  @override
  final int pageKey;

  @override
  String toString() {
    return 'CompanyEvent.getListCompanySameType(pageKey: $pageKey)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetListCompanySameTypeRequested &&
            (identical(other.pageKey, pageKey) || other.pageKey == pageKey));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pageKey);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetListCompanySameTypeRequestedCopyWith<_$GetListCompanySameTypeRequested>
      get copyWith => __$$GetListCompanySameTypeRequestedCopyWithImpl<
          _$GetListCompanySameTypeRequested>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int pageKey) getListCompany,
    required TResult Function() getListCompanyMax,
    required TResult Function(String searchText) searchCompany,
    required TResult Function(int pageKey) getListCompanySameType,
    required TResult Function() getListTopCompany,
    required TResult Function() resetLastDocument,
    required TResult Function(CompanyModel company, UserModel userModel)
        getCompanyById,
    required TResult Function() followCompany,
    required TResult Function(CompanyModel company) unFollowCompany,
  }) {
    return getListCompanySameType(pageKey);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int pageKey)? getListCompany,
    TResult? Function()? getListCompanyMax,
    TResult? Function(String searchText)? searchCompany,
    TResult? Function(int pageKey)? getListCompanySameType,
    TResult? Function()? getListTopCompany,
    TResult? Function()? resetLastDocument,
    TResult? Function(CompanyModel company, UserModel userModel)?
        getCompanyById,
    TResult? Function()? followCompany,
    TResult? Function(CompanyModel company)? unFollowCompany,
  }) {
    return getListCompanySameType?.call(pageKey);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int pageKey)? getListCompany,
    TResult Function()? getListCompanyMax,
    TResult Function(String searchText)? searchCompany,
    TResult Function(int pageKey)? getListCompanySameType,
    TResult Function()? getListTopCompany,
    TResult Function()? resetLastDocument,
    TResult Function(CompanyModel company, UserModel userModel)? getCompanyById,
    TResult Function()? followCompany,
    TResult Function(CompanyModel company)? unFollowCompany,
    required TResult orElse(),
  }) {
    if (getListCompanySameType != null) {
      return getListCompanySameType(pageKey);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetListCompanyRequested value) getListCompany,
    required TResult Function(GetListCompanyMaxRequested value)
        getListCompanyMax,
    required TResult Function(SearchCompanyRequested value) searchCompany,
    required TResult Function(GetListCompanySameTypeRequested value)
        getListCompanySameType,
    required TResult Function(GetListTopCompanyRequested value)
        getListTopCompany,
    required TResult Function(ResetLastDocumentRequested value)
        resetLastDocument,
    required TResult Function(GetCompanyByIdRequested value) getCompanyById,
    required TResult Function(FollowCompanyRequested value) followCompany,
    required TResult Function(UnFollowCompanyRequested value) unFollowCompany,
  }) {
    return getListCompanySameType(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetListCompanyRequested value)? getListCompany,
    TResult? Function(GetListCompanyMaxRequested value)? getListCompanyMax,
    TResult? Function(SearchCompanyRequested value)? searchCompany,
    TResult? Function(GetListCompanySameTypeRequested value)?
        getListCompanySameType,
    TResult? Function(GetListTopCompanyRequested value)? getListTopCompany,
    TResult? Function(ResetLastDocumentRequested value)? resetLastDocument,
    TResult? Function(GetCompanyByIdRequested value)? getCompanyById,
    TResult? Function(FollowCompanyRequested value)? followCompany,
    TResult? Function(UnFollowCompanyRequested value)? unFollowCompany,
  }) {
    return getListCompanySameType?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetListCompanyRequested value)? getListCompany,
    TResult Function(GetListCompanyMaxRequested value)? getListCompanyMax,
    TResult Function(SearchCompanyRequested value)? searchCompany,
    TResult Function(GetListCompanySameTypeRequested value)?
        getListCompanySameType,
    TResult Function(GetListTopCompanyRequested value)? getListTopCompany,
    TResult Function(ResetLastDocumentRequested value)? resetLastDocument,
    TResult Function(GetCompanyByIdRequested value)? getCompanyById,
    TResult Function(FollowCompanyRequested value)? followCompany,
    TResult Function(UnFollowCompanyRequested value)? unFollowCompany,
    required TResult orElse(),
  }) {
    if (getListCompanySameType != null) {
      return getListCompanySameType(this);
    }
    return orElse();
  }
}

abstract class GetListCompanySameTypeRequested implements CompanyEvent {
  const factory GetListCompanySameTypeRequested(final int pageKey) =
      _$GetListCompanySameTypeRequested;

  int get pageKey;
  @JsonKey(ignore: true)
  _$$GetListCompanySameTypeRequestedCopyWith<_$GetListCompanySameTypeRequested>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetListTopCompanyRequestedCopyWith<$Res> {
  factory _$$GetListTopCompanyRequestedCopyWith(
          _$GetListTopCompanyRequested value,
          $Res Function(_$GetListTopCompanyRequested) then) =
      __$$GetListTopCompanyRequestedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetListTopCompanyRequestedCopyWithImpl<$Res>
    extends _$CompanyEventCopyWithImpl<$Res, _$GetListTopCompanyRequested>
    implements _$$GetListTopCompanyRequestedCopyWith<$Res> {
  __$$GetListTopCompanyRequestedCopyWithImpl(
      _$GetListTopCompanyRequested _value,
      $Res Function(_$GetListTopCompanyRequested) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetListTopCompanyRequested implements GetListTopCompanyRequested {
  const _$GetListTopCompanyRequested();

  @override
  String toString() {
    return 'CompanyEvent.getListTopCompany()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetListTopCompanyRequested);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int pageKey) getListCompany,
    required TResult Function() getListCompanyMax,
    required TResult Function(String searchText) searchCompany,
    required TResult Function(int pageKey) getListCompanySameType,
    required TResult Function() getListTopCompany,
    required TResult Function() resetLastDocument,
    required TResult Function(CompanyModel company, UserModel userModel)
        getCompanyById,
    required TResult Function() followCompany,
    required TResult Function(CompanyModel company) unFollowCompany,
  }) {
    return getListTopCompany();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int pageKey)? getListCompany,
    TResult? Function()? getListCompanyMax,
    TResult? Function(String searchText)? searchCompany,
    TResult? Function(int pageKey)? getListCompanySameType,
    TResult? Function()? getListTopCompany,
    TResult? Function()? resetLastDocument,
    TResult? Function(CompanyModel company, UserModel userModel)?
        getCompanyById,
    TResult? Function()? followCompany,
    TResult? Function(CompanyModel company)? unFollowCompany,
  }) {
    return getListTopCompany?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int pageKey)? getListCompany,
    TResult Function()? getListCompanyMax,
    TResult Function(String searchText)? searchCompany,
    TResult Function(int pageKey)? getListCompanySameType,
    TResult Function()? getListTopCompany,
    TResult Function()? resetLastDocument,
    TResult Function(CompanyModel company, UserModel userModel)? getCompanyById,
    TResult Function()? followCompany,
    TResult Function(CompanyModel company)? unFollowCompany,
    required TResult orElse(),
  }) {
    if (getListTopCompany != null) {
      return getListTopCompany();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetListCompanyRequested value) getListCompany,
    required TResult Function(GetListCompanyMaxRequested value)
        getListCompanyMax,
    required TResult Function(SearchCompanyRequested value) searchCompany,
    required TResult Function(GetListCompanySameTypeRequested value)
        getListCompanySameType,
    required TResult Function(GetListTopCompanyRequested value)
        getListTopCompany,
    required TResult Function(ResetLastDocumentRequested value)
        resetLastDocument,
    required TResult Function(GetCompanyByIdRequested value) getCompanyById,
    required TResult Function(FollowCompanyRequested value) followCompany,
    required TResult Function(UnFollowCompanyRequested value) unFollowCompany,
  }) {
    return getListTopCompany(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetListCompanyRequested value)? getListCompany,
    TResult? Function(GetListCompanyMaxRequested value)? getListCompanyMax,
    TResult? Function(SearchCompanyRequested value)? searchCompany,
    TResult? Function(GetListCompanySameTypeRequested value)?
        getListCompanySameType,
    TResult? Function(GetListTopCompanyRequested value)? getListTopCompany,
    TResult? Function(ResetLastDocumentRequested value)? resetLastDocument,
    TResult? Function(GetCompanyByIdRequested value)? getCompanyById,
    TResult? Function(FollowCompanyRequested value)? followCompany,
    TResult? Function(UnFollowCompanyRequested value)? unFollowCompany,
  }) {
    return getListTopCompany?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetListCompanyRequested value)? getListCompany,
    TResult Function(GetListCompanyMaxRequested value)? getListCompanyMax,
    TResult Function(SearchCompanyRequested value)? searchCompany,
    TResult Function(GetListCompanySameTypeRequested value)?
        getListCompanySameType,
    TResult Function(GetListTopCompanyRequested value)? getListTopCompany,
    TResult Function(ResetLastDocumentRequested value)? resetLastDocument,
    TResult Function(GetCompanyByIdRequested value)? getCompanyById,
    TResult Function(FollowCompanyRequested value)? followCompany,
    TResult Function(UnFollowCompanyRequested value)? unFollowCompany,
    required TResult orElse(),
  }) {
    if (getListTopCompany != null) {
      return getListTopCompany(this);
    }
    return orElse();
  }
}

abstract class GetListTopCompanyRequested implements CompanyEvent {
  const factory GetListTopCompanyRequested() = _$GetListTopCompanyRequested;
}

/// @nodoc
abstract class _$$ResetLastDocumentRequestedCopyWith<$Res> {
  factory _$$ResetLastDocumentRequestedCopyWith(
          _$ResetLastDocumentRequested value,
          $Res Function(_$ResetLastDocumentRequested) then) =
      __$$ResetLastDocumentRequestedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ResetLastDocumentRequestedCopyWithImpl<$Res>
    extends _$CompanyEventCopyWithImpl<$Res, _$ResetLastDocumentRequested>
    implements _$$ResetLastDocumentRequestedCopyWith<$Res> {
  __$$ResetLastDocumentRequestedCopyWithImpl(
      _$ResetLastDocumentRequested _value,
      $Res Function(_$ResetLastDocumentRequested) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ResetLastDocumentRequested implements ResetLastDocumentRequested {
  const _$ResetLastDocumentRequested();

  @override
  String toString() {
    return 'CompanyEvent.resetLastDocument()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResetLastDocumentRequested);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int pageKey) getListCompany,
    required TResult Function() getListCompanyMax,
    required TResult Function(String searchText) searchCompany,
    required TResult Function(int pageKey) getListCompanySameType,
    required TResult Function() getListTopCompany,
    required TResult Function() resetLastDocument,
    required TResult Function(CompanyModel company, UserModel userModel)
        getCompanyById,
    required TResult Function() followCompany,
    required TResult Function(CompanyModel company) unFollowCompany,
  }) {
    return resetLastDocument();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int pageKey)? getListCompany,
    TResult? Function()? getListCompanyMax,
    TResult? Function(String searchText)? searchCompany,
    TResult? Function(int pageKey)? getListCompanySameType,
    TResult? Function()? getListTopCompany,
    TResult? Function()? resetLastDocument,
    TResult? Function(CompanyModel company, UserModel userModel)?
        getCompanyById,
    TResult? Function()? followCompany,
    TResult? Function(CompanyModel company)? unFollowCompany,
  }) {
    return resetLastDocument?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int pageKey)? getListCompany,
    TResult Function()? getListCompanyMax,
    TResult Function(String searchText)? searchCompany,
    TResult Function(int pageKey)? getListCompanySameType,
    TResult Function()? getListTopCompany,
    TResult Function()? resetLastDocument,
    TResult Function(CompanyModel company, UserModel userModel)? getCompanyById,
    TResult Function()? followCompany,
    TResult Function(CompanyModel company)? unFollowCompany,
    required TResult orElse(),
  }) {
    if (resetLastDocument != null) {
      return resetLastDocument();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetListCompanyRequested value) getListCompany,
    required TResult Function(GetListCompanyMaxRequested value)
        getListCompanyMax,
    required TResult Function(SearchCompanyRequested value) searchCompany,
    required TResult Function(GetListCompanySameTypeRequested value)
        getListCompanySameType,
    required TResult Function(GetListTopCompanyRequested value)
        getListTopCompany,
    required TResult Function(ResetLastDocumentRequested value)
        resetLastDocument,
    required TResult Function(GetCompanyByIdRequested value) getCompanyById,
    required TResult Function(FollowCompanyRequested value) followCompany,
    required TResult Function(UnFollowCompanyRequested value) unFollowCompany,
  }) {
    return resetLastDocument(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetListCompanyRequested value)? getListCompany,
    TResult? Function(GetListCompanyMaxRequested value)? getListCompanyMax,
    TResult? Function(SearchCompanyRequested value)? searchCompany,
    TResult? Function(GetListCompanySameTypeRequested value)?
        getListCompanySameType,
    TResult? Function(GetListTopCompanyRequested value)? getListTopCompany,
    TResult? Function(ResetLastDocumentRequested value)? resetLastDocument,
    TResult? Function(GetCompanyByIdRequested value)? getCompanyById,
    TResult? Function(FollowCompanyRequested value)? followCompany,
    TResult? Function(UnFollowCompanyRequested value)? unFollowCompany,
  }) {
    return resetLastDocument?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetListCompanyRequested value)? getListCompany,
    TResult Function(GetListCompanyMaxRequested value)? getListCompanyMax,
    TResult Function(SearchCompanyRequested value)? searchCompany,
    TResult Function(GetListCompanySameTypeRequested value)?
        getListCompanySameType,
    TResult Function(GetListTopCompanyRequested value)? getListTopCompany,
    TResult Function(ResetLastDocumentRequested value)? resetLastDocument,
    TResult Function(GetCompanyByIdRequested value)? getCompanyById,
    TResult Function(FollowCompanyRequested value)? followCompany,
    TResult Function(UnFollowCompanyRequested value)? unFollowCompany,
    required TResult orElse(),
  }) {
    if (resetLastDocument != null) {
      return resetLastDocument(this);
    }
    return orElse();
  }
}

abstract class ResetLastDocumentRequested implements CompanyEvent {
  const factory ResetLastDocumentRequested() = _$ResetLastDocumentRequested;
}

/// @nodoc
abstract class _$$GetCompanyByIdRequestedCopyWith<$Res> {
  factory _$$GetCompanyByIdRequestedCopyWith(_$GetCompanyByIdRequested value,
          $Res Function(_$GetCompanyByIdRequested) then) =
      __$$GetCompanyByIdRequestedCopyWithImpl<$Res>;
  @useResult
  $Res call({CompanyModel company, UserModel userModel});

  $CompanyModelCopyWith<$Res> get company;
  $UserModelCopyWith<$Res> get userModel;
}

/// @nodoc
class __$$GetCompanyByIdRequestedCopyWithImpl<$Res>
    extends _$CompanyEventCopyWithImpl<$Res, _$GetCompanyByIdRequested>
    implements _$$GetCompanyByIdRequestedCopyWith<$Res> {
  __$$GetCompanyByIdRequestedCopyWithImpl(_$GetCompanyByIdRequested _value,
      $Res Function(_$GetCompanyByIdRequested) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? company = null,
    Object? userModel = null,
  }) {
    return _then(_$GetCompanyByIdRequested(
      null == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as CompanyModel,
      null == userModel
          ? _value.userModel
          : userModel // ignore: cast_nullable_to_non_nullable
              as UserModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CompanyModelCopyWith<$Res> get company {
    return $CompanyModelCopyWith<$Res>(_value.company, (value) {
      return _then(_value.copyWith(company: value));
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res> get userModel {
    return $UserModelCopyWith<$Res>(_value.userModel, (value) {
      return _then(_value.copyWith(userModel: value));
    });
  }
}

/// @nodoc

class _$GetCompanyByIdRequested implements GetCompanyByIdRequested {
  const _$GetCompanyByIdRequested(this.company, this.userModel);

  @override
  final CompanyModel company;
  @override
  final UserModel userModel;

  @override
  String toString() {
    return 'CompanyEvent.getCompanyById(company: $company, userModel: $userModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCompanyByIdRequested &&
            (identical(other.company, company) || other.company == company) &&
            (identical(other.userModel, userModel) ||
                other.userModel == userModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, company, userModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetCompanyByIdRequestedCopyWith<_$GetCompanyByIdRequested> get copyWith =>
      __$$GetCompanyByIdRequestedCopyWithImpl<_$GetCompanyByIdRequested>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int pageKey) getListCompany,
    required TResult Function() getListCompanyMax,
    required TResult Function(String searchText) searchCompany,
    required TResult Function(int pageKey) getListCompanySameType,
    required TResult Function() getListTopCompany,
    required TResult Function() resetLastDocument,
    required TResult Function(CompanyModel company, UserModel userModel)
        getCompanyById,
    required TResult Function() followCompany,
    required TResult Function(CompanyModel company) unFollowCompany,
  }) {
    return getCompanyById(company, userModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int pageKey)? getListCompany,
    TResult? Function()? getListCompanyMax,
    TResult? Function(String searchText)? searchCompany,
    TResult? Function(int pageKey)? getListCompanySameType,
    TResult? Function()? getListTopCompany,
    TResult? Function()? resetLastDocument,
    TResult? Function(CompanyModel company, UserModel userModel)?
        getCompanyById,
    TResult? Function()? followCompany,
    TResult? Function(CompanyModel company)? unFollowCompany,
  }) {
    return getCompanyById?.call(company, userModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int pageKey)? getListCompany,
    TResult Function()? getListCompanyMax,
    TResult Function(String searchText)? searchCompany,
    TResult Function(int pageKey)? getListCompanySameType,
    TResult Function()? getListTopCompany,
    TResult Function()? resetLastDocument,
    TResult Function(CompanyModel company, UserModel userModel)? getCompanyById,
    TResult Function()? followCompany,
    TResult Function(CompanyModel company)? unFollowCompany,
    required TResult orElse(),
  }) {
    if (getCompanyById != null) {
      return getCompanyById(company, userModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetListCompanyRequested value) getListCompany,
    required TResult Function(GetListCompanyMaxRequested value)
        getListCompanyMax,
    required TResult Function(SearchCompanyRequested value) searchCompany,
    required TResult Function(GetListCompanySameTypeRequested value)
        getListCompanySameType,
    required TResult Function(GetListTopCompanyRequested value)
        getListTopCompany,
    required TResult Function(ResetLastDocumentRequested value)
        resetLastDocument,
    required TResult Function(GetCompanyByIdRequested value) getCompanyById,
    required TResult Function(FollowCompanyRequested value) followCompany,
    required TResult Function(UnFollowCompanyRequested value) unFollowCompany,
  }) {
    return getCompanyById(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetListCompanyRequested value)? getListCompany,
    TResult? Function(GetListCompanyMaxRequested value)? getListCompanyMax,
    TResult? Function(SearchCompanyRequested value)? searchCompany,
    TResult? Function(GetListCompanySameTypeRequested value)?
        getListCompanySameType,
    TResult? Function(GetListTopCompanyRequested value)? getListTopCompany,
    TResult? Function(ResetLastDocumentRequested value)? resetLastDocument,
    TResult? Function(GetCompanyByIdRequested value)? getCompanyById,
    TResult? Function(FollowCompanyRequested value)? followCompany,
    TResult? Function(UnFollowCompanyRequested value)? unFollowCompany,
  }) {
    return getCompanyById?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetListCompanyRequested value)? getListCompany,
    TResult Function(GetListCompanyMaxRequested value)? getListCompanyMax,
    TResult Function(SearchCompanyRequested value)? searchCompany,
    TResult Function(GetListCompanySameTypeRequested value)?
        getListCompanySameType,
    TResult Function(GetListTopCompanyRequested value)? getListTopCompany,
    TResult Function(ResetLastDocumentRequested value)? resetLastDocument,
    TResult Function(GetCompanyByIdRequested value)? getCompanyById,
    TResult Function(FollowCompanyRequested value)? followCompany,
    TResult Function(UnFollowCompanyRequested value)? unFollowCompany,
    required TResult orElse(),
  }) {
    if (getCompanyById != null) {
      return getCompanyById(this);
    }
    return orElse();
  }
}

abstract class GetCompanyByIdRequested implements CompanyEvent {
  const factory GetCompanyByIdRequested(
          final CompanyModel company, final UserModel userModel) =
      _$GetCompanyByIdRequested;

  CompanyModel get company;
  UserModel get userModel;
  @JsonKey(ignore: true)
  _$$GetCompanyByIdRequestedCopyWith<_$GetCompanyByIdRequested> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FollowCompanyRequestedCopyWith<$Res> {
  factory _$$FollowCompanyRequestedCopyWith(_$FollowCompanyRequested value,
          $Res Function(_$FollowCompanyRequested) then) =
      __$$FollowCompanyRequestedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FollowCompanyRequestedCopyWithImpl<$Res>
    extends _$CompanyEventCopyWithImpl<$Res, _$FollowCompanyRequested>
    implements _$$FollowCompanyRequestedCopyWith<$Res> {
  __$$FollowCompanyRequestedCopyWithImpl(_$FollowCompanyRequested _value,
      $Res Function(_$FollowCompanyRequested) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FollowCompanyRequested implements FollowCompanyRequested {
  const _$FollowCompanyRequested();

  @override
  String toString() {
    return 'CompanyEvent.followCompany()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FollowCompanyRequested);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int pageKey) getListCompany,
    required TResult Function() getListCompanyMax,
    required TResult Function(String searchText) searchCompany,
    required TResult Function(int pageKey) getListCompanySameType,
    required TResult Function() getListTopCompany,
    required TResult Function() resetLastDocument,
    required TResult Function(CompanyModel company, UserModel userModel)
        getCompanyById,
    required TResult Function() followCompany,
    required TResult Function(CompanyModel company) unFollowCompany,
  }) {
    return followCompany();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int pageKey)? getListCompany,
    TResult? Function()? getListCompanyMax,
    TResult? Function(String searchText)? searchCompany,
    TResult? Function(int pageKey)? getListCompanySameType,
    TResult? Function()? getListTopCompany,
    TResult? Function()? resetLastDocument,
    TResult? Function(CompanyModel company, UserModel userModel)?
        getCompanyById,
    TResult? Function()? followCompany,
    TResult? Function(CompanyModel company)? unFollowCompany,
  }) {
    return followCompany?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int pageKey)? getListCompany,
    TResult Function()? getListCompanyMax,
    TResult Function(String searchText)? searchCompany,
    TResult Function(int pageKey)? getListCompanySameType,
    TResult Function()? getListTopCompany,
    TResult Function()? resetLastDocument,
    TResult Function(CompanyModel company, UserModel userModel)? getCompanyById,
    TResult Function()? followCompany,
    TResult Function(CompanyModel company)? unFollowCompany,
    required TResult orElse(),
  }) {
    if (followCompany != null) {
      return followCompany();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetListCompanyRequested value) getListCompany,
    required TResult Function(GetListCompanyMaxRequested value)
        getListCompanyMax,
    required TResult Function(SearchCompanyRequested value) searchCompany,
    required TResult Function(GetListCompanySameTypeRequested value)
        getListCompanySameType,
    required TResult Function(GetListTopCompanyRequested value)
        getListTopCompany,
    required TResult Function(ResetLastDocumentRequested value)
        resetLastDocument,
    required TResult Function(GetCompanyByIdRequested value) getCompanyById,
    required TResult Function(FollowCompanyRequested value) followCompany,
    required TResult Function(UnFollowCompanyRequested value) unFollowCompany,
  }) {
    return followCompany(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetListCompanyRequested value)? getListCompany,
    TResult? Function(GetListCompanyMaxRequested value)? getListCompanyMax,
    TResult? Function(SearchCompanyRequested value)? searchCompany,
    TResult? Function(GetListCompanySameTypeRequested value)?
        getListCompanySameType,
    TResult? Function(GetListTopCompanyRequested value)? getListTopCompany,
    TResult? Function(ResetLastDocumentRequested value)? resetLastDocument,
    TResult? Function(GetCompanyByIdRequested value)? getCompanyById,
    TResult? Function(FollowCompanyRequested value)? followCompany,
    TResult? Function(UnFollowCompanyRequested value)? unFollowCompany,
  }) {
    return followCompany?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetListCompanyRequested value)? getListCompany,
    TResult Function(GetListCompanyMaxRequested value)? getListCompanyMax,
    TResult Function(SearchCompanyRequested value)? searchCompany,
    TResult Function(GetListCompanySameTypeRequested value)?
        getListCompanySameType,
    TResult Function(GetListTopCompanyRequested value)? getListTopCompany,
    TResult Function(ResetLastDocumentRequested value)? resetLastDocument,
    TResult Function(GetCompanyByIdRequested value)? getCompanyById,
    TResult Function(FollowCompanyRequested value)? followCompany,
    TResult Function(UnFollowCompanyRequested value)? unFollowCompany,
    required TResult orElse(),
  }) {
    if (followCompany != null) {
      return followCompany(this);
    }
    return orElse();
  }
}

abstract class FollowCompanyRequested implements CompanyEvent {
  const factory FollowCompanyRequested() = _$FollowCompanyRequested;
}

/// @nodoc
abstract class _$$UnFollowCompanyRequestedCopyWith<$Res> {
  factory _$$UnFollowCompanyRequestedCopyWith(_$UnFollowCompanyRequested value,
          $Res Function(_$UnFollowCompanyRequested) then) =
      __$$UnFollowCompanyRequestedCopyWithImpl<$Res>;
  @useResult
  $Res call({CompanyModel company});

  $CompanyModelCopyWith<$Res> get company;
}

/// @nodoc
class __$$UnFollowCompanyRequestedCopyWithImpl<$Res>
    extends _$CompanyEventCopyWithImpl<$Res, _$UnFollowCompanyRequested>
    implements _$$UnFollowCompanyRequestedCopyWith<$Res> {
  __$$UnFollowCompanyRequestedCopyWithImpl(_$UnFollowCompanyRequested _value,
      $Res Function(_$UnFollowCompanyRequested) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? company = null,
  }) {
    return _then(_$UnFollowCompanyRequested(
      null == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as CompanyModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CompanyModelCopyWith<$Res> get company {
    return $CompanyModelCopyWith<$Res>(_value.company, (value) {
      return _then(_value.copyWith(company: value));
    });
  }
}

/// @nodoc

class _$UnFollowCompanyRequested implements UnFollowCompanyRequested {
  const _$UnFollowCompanyRequested(this.company);

  @override
  final CompanyModel company;

  @override
  String toString() {
    return 'CompanyEvent.unFollowCompany(company: $company)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnFollowCompanyRequested &&
            (identical(other.company, company) || other.company == company));
  }

  @override
  int get hashCode => Object.hash(runtimeType, company);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UnFollowCompanyRequestedCopyWith<_$UnFollowCompanyRequested>
      get copyWith =>
          __$$UnFollowCompanyRequestedCopyWithImpl<_$UnFollowCompanyRequested>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int pageKey) getListCompany,
    required TResult Function() getListCompanyMax,
    required TResult Function(String searchText) searchCompany,
    required TResult Function(int pageKey) getListCompanySameType,
    required TResult Function() getListTopCompany,
    required TResult Function() resetLastDocument,
    required TResult Function(CompanyModel company, UserModel userModel)
        getCompanyById,
    required TResult Function() followCompany,
    required TResult Function(CompanyModel company) unFollowCompany,
  }) {
    return unFollowCompany(company);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int pageKey)? getListCompany,
    TResult? Function()? getListCompanyMax,
    TResult? Function(String searchText)? searchCompany,
    TResult? Function(int pageKey)? getListCompanySameType,
    TResult? Function()? getListTopCompany,
    TResult? Function()? resetLastDocument,
    TResult? Function(CompanyModel company, UserModel userModel)?
        getCompanyById,
    TResult? Function()? followCompany,
    TResult? Function(CompanyModel company)? unFollowCompany,
  }) {
    return unFollowCompany?.call(company);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int pageKey)? getListCompany,
    TResult Function()? getListCompanyMax,
    TResult Function(String searchText)? searchCompany,
    TResult Function(int pageKey)? getListCompanySameType,
    TResult Function()? getListTopCompany,
    TResult Function()? resetLastDocument,
    TResult Function(CompanyModel company, UserModel userModel)? getCompanyById,
    TResult Function()? followCompany,
    TResult Function(CompanyModel company)? unFollowCompany,
    required TResult orElse(),
  }) {
    if (unFollowCompany != null) {
      return unFollowCompany(company);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetListCompanyRequested value) getListCompany,
    required TResult Function(GetListCompanyMaxRequested value)
        getListCompanyMax,
    required TResult Function(SearchCompanyRequested value) searchCompany,
    required TResult Function(GetListCompanySameTypeRequested value)
        getListCompanySameType,
    required TResult Function(GetListTopCompanyRequested value)
        getListTopCompany,
    required TResult Function(ResetLastDocumentRequested value)
        resetLastDocument,
    required TResult Function(GetCompanyByIdRequested value) getCompanyById,
    required TResult Function(FollowCompanyRequested value) followCompany,
    required TResult Function(UnFollowCompanyRequested value) unFollowCompany,
  }) {
    return unFollowCompany(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetListCompanyRequested value)? getListCompany,
    TResult? Function(GetListCompanyMaxRequested value)? getListCompanyMax,
    TResult? Function(SearchCompanyRequested value)? searchCompany,
    TResult? Function(GetListCompanySameTypeRequested value)?
        getListCompanySameType,
    TResult? Function(GetListTopCompanyRequested value)? getListTopCompany,
    TResult? Function(ResetLastDocumentRequested value)? resetLastDocument,
    TResult? Function(GetCompanyByIdRequested value)? getCompanyById,
    TResult? Function(FollowCompanyRequested value)? followCompany,
    TResult? Function(UnFollowCompanyRequested value)? unFollowCompany,
  }) {
    return unFollowCompany?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetListCompanyRequested value)? getListCompany,
    TResult Function(GetListCompanyMaxRequested value)? getListCompanyMax,
    TResult Function(SearchCompanyRequested value)? searchCompany,
    TResult Function(GetListCompanySameTypeRequested value)?
        getListCompanySameType,
    TResult Function(GetListTopCompanyRequested value)? getListTopCompany,
    TResult Function(ResetLastDocumentRequested value)? resetLastDocument,
    TResult Function(GetCompanyByIdRequested value)? getCompanyById,
    TResult Function(FollowCompanyRequested value)? followCompany,
    TResult Function(UnFollowCompanyRequested value)? unFollowCompany,
    required TResult orElse(),
  }) {
    if (unFollowCompany != null) {
      return unFollowCompany(this);
    }
    return orElse();
  }
}

abstract class UnFollowCompanyRequested implements CompanyEvent {
  const factory UnFollowCompanyRequested(final CompanyModel company) =
      _$UnFollowCompanyRequested;

  CompanyModel get company;
  @JsonKey(ignore: true)
  _$$UnFollowCompanyRequestedCopyWith<_$UnFollowCompanyRequested>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CompanyState {
  CompanyModel? get company => throw _privateConstructorUsedError;
  UserModel? get user => throw _privateConstructorUsedError;
  List<CompanyModel> get companies => throw _privateConstructorUsedError;
  List<CompanyModel> get searchCompanies => throw _privateConstructorUsedError;
  List<CompanyModel> get companiesSameType =>
      throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isShimmer => throw _privateConstructorUsedError;
  bool get isFollow => throw _privateConstructorUsedError;
  String get error => throw _privateConstructorUsedError;
  String get idCompany => throw _privateConstructorUsedError;
  PagingController<int, CompanyModel>? get pagingController =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CompanyStateCopyWith<CompanyState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompanyStateCopyWith<$Res> {
  factory $CompanyStateCopyWith(
          CompanyState value, $Res Function(CompanyState) then) =
      _$CompanyStateCopyWithImpl<$Res, CompanyState>;
  @useResult
  $Res call(
      {CompanyModel? company,
      UserModel? user,
      List<CompanyModel> companies,
      List<CompanyModel> searchCompanies,
      List<CompanyModel> companiesSameType,
      bool isLoading,
      bool isShimmer,
      bool isFollow,
      String error,
      String idCompany,
      PagingController<int, CompanyModel>? pagingController});

  $CompanyModelCopyWith<$Res>? get company;
  $UserModelCopyWith<$Res>? get user;
}

/// @nodoc
class _$CompanyStateCopyWithImpl<$Res, $Val extends CompanyState>
    implements $CompanyStateCopyWith<$Res> {
  _$CompanyStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? company = freezed,
    Object? user = freezed,
    Object? companies = null,
    Object? searchCompanies = null,
    Object? companiesSameType = null,
    Object? isLoading = null,
    Object? isShimmer = null,
    Object? isFollow = null,
    Object? error = null,
    Object? idCompany = null,
    Object? pagingController = freezed,
  }) {
    return _then(_value.copyWith(
      company: freezed == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as CompanyModel?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel?,
      companies: null == companies
          ? _value.companies
          : companies // ignore: cast_nullable_to_non_nullable
              as List<CompanyModel>,
      searchCompanies: null == searchCompanies
          ? _value.searchCompanies
          : searchCompanies // ignore: cast_nullable_to_non_nullable
              as List<CompanyModel>,
      companiesSameType: null == companiesSameType
          ? _value.companiesSameType
          : companiesSameType // ignore: cast_nullable_to_non_nullable
              as List<CompanyModel>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isShimmer: null == isShimmer
          ? _value.isShimmer
          : isShimmer // ignore: cast_nullable_to_non_nullable
              as bool,
      isFollow: null == isFollow
          ? _value.isFollow
          : isFollow // ignore: cast_nullable_to_non_nullable
              as bool,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      idCompany: null == idCompany
          ? _value.idCompany
          : idCompany // ignore: cast_nullable_to_non_nullable
              as String,
      pagingController: freezed == pagingController
          ? _value.pagingController
          : pagingController // ignore: cast_nullable_to_non_nullable
              as PagingController<int, CompanyModel>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CompanyModelCopyWith<$Res>? get company {
    if (_value.company == null) {
      return null;
    }

    return $CompanyModelCopyWith<$Res>(_value.company!, (value) {
      return _then(_value.copyWith(company: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserModelCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CompanyStateCopyWith<$Res>
    implements $CompanyStateCopyWith<$Res> {
  factory _$$_CompanyStateCopyWith(
          _$_CompanyState value, $Res Function(_$_CompanyState) then) =
      __$$_CompanyStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {CompanyModel? company,
      UserModel? user,
      List<CompanyModel> companies,
      List<CompanyModel> searchCompanies,
      List<CompanyModel> companiesSameType,
      bool isLoading,
      bool isShimmer,
      bool isFollow,
      String error,
      String idCompany,
      PagingController<int, CompanyModel>? pagingController});

  @override
  $CompanyModelCopyWith<$Res>? get company;
  @override
  $UserModelCopyWith<$Res>? get user;
}

/// @nodoc
class __$$_CompanyStateCopyWithImpl<$Res>
    extends _$CompanyStateCopyWithImpl<$Res, _$_CompanyState>
    implements _$$_CompanyStateCopyWith<$Res> {
  __$$_CompanyStateCopyWithImpl(
      _$_CompanyState _value, $Res Function(_$_CompanyState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? company = freezed,
    Object? user = freezed,
    Object? companies = null,
    Object? searchCompanies = null,
    Object? companiesSameType = null,
    Object? isLoading = null,
    Object? isShimmer = null,
    Object? isFollow = null,
    Object? error = null,
    Object? idCompany = null,
    Object? pagingController = freezed,
  }) {
    return _then(_$_CompanyState(
      company: freezed == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as CompanyModel?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel?,
      companies: null == companies
          ? _value._companies
          : companies // ignore: cast_nullable_to_non_nullable
              as List<CompanyModel>,
      searchCompanies: null == searchCompanies
          ? _value._searchCompanies
          : searchCompanies // ignore: cast_nullable_to_non_nullable
              as List<CompanyModel>,
      companiesSameType: null == companiesSameType
          ? _value._companiesSameType
          : companiesSameType // ignore: cast_nullable_to_non_nullable
              as List<CompanyModel>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isShimmer: null == isShimmer
          ? _value.isShimmer
          : isShimmer // ignore: cast_nullable_to_non_nullable
              as bool,
      isFollow: null == isFollow
          ? _value.isFollow
          : isFollow // ignore: cast_nullable_to_non_nullable
              as bool,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      idCompany: null == idCompany
          ? _value.idCompany
          : idCompany // ignore: cast_nullable_to_non_nullable
              as String,
      pagingController: freezed == pagingController
          ? _value.pagingController
          : pagingController // ignore: cast_nullable_to_non_nullable
              as PagingController<int, CompanyModel>?,
    ));
  }
}

/// @nodoc

class _$_CompanyState implements _CompanyState {
  _$_CompanyState(
      {this.company,
      this.user,
      final List<CompanyModel> companies = const [],
      final List<CompanyModel> searchCompanies = const [],
      final List<CompanyModel> companiesSameType = const [],
      this.isLoading = false,
      this.isShimmer = true,
      this.isFollow = false,
      this.error = "",
      this.idCompany = "",
      this.pagingController})
      : _companies = companies,
        _searchCompanies = searchCompanies,
        _companiesSameType = companiesSameType;

  @override
  final CompanyModel? company;
  @override
  final UserModel? user;
  final List<CompanyModel> _companies;
  @override
  @JsonKey()
  List<CompanyModel> get companies {
    if (_companies is EqualUnmodifiableListView) return _companies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_companies);
  }

  final List<CompanyModel> _searchCompanies;
  @override
  @JsonKey()
  List<CompanyModel> get searchCompanies {
    if (_searchCompanies is EqualUnmodifiableListView) return _searchCompanies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_searchCompanies);
  }

  final List<CompanyModel> _companiesSameType;
  @override
  @JsonKey()
  List<CompanyModel> get companiesSameType {
    if (_companiesSameType is EqualUnmodifiableListView)
      return _companiesSameType;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_companiesSameType);
  }

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool isShimmer;
  @override
  @JsonKey()
  final bool isFollow;
  @override
  @JsonKey()
  final String error;
  @override
  @JsonKey()
  final String idCompany;
  @override
  final PagingController<int, CompanyModel>? pagingController;

  @override
  String toString() {
    return 'CompanyState(company: $company, user: $user, companies: $companies, searchCompanies: $searchCompanies, companiesSameType: $companiesSameType, isLoading: $isLoading, isShimmer: $isShimmer, isFollow: $isFollow, error: $error, idCompany: $idCompany, pagingController: $pagingController)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CompanyState &&
            (identical(other.company, company) || other.company == company) &&
            (identical(other.user, user) || other.user == user) &&
            const DeepCollectionEquality()
                .equals(other._companies, _companies) &&
            const DeepCollectionEquality()
                .equals(other._searchCompanies, _searchCompanies) &&
            const DeepCollectionEquality()
                .equals(other._companiesSameType, _companiesSameType) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isShimmer, isShimmer) ||
                other.isShimmer == isShimmer) &&
            (identical(other.isFollow, isFollow) ||
                other.isFollow == isFollow) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.idCompany, idCompany) ||
                other.idCompany == idCompany) &&
            (identical(other.pagingController, pagingController) ||
                other.pagingController == pagingController));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      company,
      user,
      const DeepCollectionEquality().hash(_companies),
      const DeepCollectionEquality().hash(_searchCompanies),
      const DeepCollectionEquality().hash(_companiesSameType),
      isLoading,
      isShimmer,
      isFollow,
      error,
      idCompany,
      pagingController);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CompanyStateCopyWith<_$_CompanyState> get copyWith =>
      __$$_CompanyStateCopyWithImpl<_$_CompanyState>(this, _$identity);
}

abstract class _CompanyState implements CompanyState {
  factory _CompanyState(
          {final CompanyModel? company,
          final UserModel? user,
          final List<CompanyModel> companies,
          final List<CompanyModel> searchCompanies,
          final List<CompanyModel> companiesSameType,
          final bool isLoading,
          final bool isShimmer,
          final bool isFollow,
          final String error,
          final String idCompany,
          final PagingController<int, CompanyModel>? pagingController}) =
      _$_CompanyState;

  @override
  CompanyModel? get company;
  @override
  UserModel? get user;
  @override
  List<CompanyModel> get companies;
  @override
  List<CompanyModel> get searchCompanies;
  @override
  List<CompanyModel> get companiesSameType;
  @override
  bool get isLoading;
  @override
  bool get isShimmer;
  @override
  bool get isFollow;
  @override
  String get error;
  @override
  String get idCompany;
  @override
  PagingController<int, CompanyModel>? get pagingController;
  @override
  @JsonKey(ignore: true)
  _$$_CompanyStateCopyWith<_$_CompanyState> get copyWith =>
      throw _privateConstructorUsedError;
}
