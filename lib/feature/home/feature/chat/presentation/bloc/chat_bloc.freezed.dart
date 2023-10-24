// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ChatEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<String> jobIds) getListMessage,
    required TResult Function(List<String> jobIds) getDetailMessage,
    required TResult Function(CompanyModel companyModel) getDetailCompany,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<String> jobIds)? getListMessage,
    TResult? Function(List<String> jobIds)? getDetailMessage,
    TResult? Function(CompanyModel companyModel)? getDetailCompany,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<String> jobIds)? getListMessage,
    TResult Function(List<String> jobIds)? getDetailMessage,
    TResult Function(CompanyModel companyModel)? getDetailCompany,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetListMessageRequest value) getListMessage,
    required TResult Function(GetDetailMessageRequest value) getDetailMessage,
    required TResult Function(GetDetailCompanyRequest value) getDetailCompany,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetListMessageRequest value)? getListMessage,
    TResult? Function(GetDetailMessageRequest value)? getDetailMessage,
    TResult? Function(GetDetailCompanyRequest value)? getDetailCompany,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetListMessageRequest value)? getListMessage,
    TResult Function(GetDetailMessageRequest value)? getDetailMessage,
    TResult Function(GetDetailCompanyRequest value)? getDetailCompany,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatEventCopyWith<$Res> {
  factory $ChatEventCopyWith(ChatEvent value, $Res Function(ChatEvent) then) =
      _$ChatEventCopyWithImpl<$Res, ChatEvent>;
}

/// @nodoc
class _$ChatEventCopyWithImpl<$Res, $Val extends ChatEvent>
    implements $ChatEventCopyWith<$Res> {
  _$ChatEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetListMessageRequestCopyWith<$Res> {
  factory _$$GetListMessageRequestCopyWith(_$GetListMessageRequest value,
          $Res Function(_$GetListMessageRequest) then) =
      __$$GetListMessageRequestCopyWithImpl<$Res>;
  @useResult
  $Res call({List<String> jobIds});
}

/// @nodoc
class __$$GetListMessageRequestCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$GetListMessageRequest>
    implements _$$GetListMessageRequestCopyWith<$Res> {
  __$$GetListMessageRequestCopyWithImpl(_$GetListMessageRequest _value,
      $Res Function(_$GetListMessageRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? jobIds = null,
  }) {
    return _then(_$GetListMessageRequest(
      null == jobIds
          ? _value._jobIds
          : jobIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$GetListMessageRequest implements GetListMessageRequest {
  const _$GetListMessageRequest(final List<String> jobIds) : _jobIds = jobIds;

  final List<String> _jobIds;
  @override
  List<String> get jobIds {
    if (_jobIds is EqualUnmodifiableListView) return _jobIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_jobIds);
  }

  @override
  String toString() {
    return 'ChatEvent.getListMessage(jobIds: $jobIds)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetListMessageRequest &&
            const DeepCollectionEquality().equals(other._jobIds, _jobIds));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_jobIds));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetListMessageRequestCopyWith<_$GetListMessageRequest> get copyWith =>
      __$$GetListMessageRequestCopyWithImpl<_$GetListMessageRequest>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<String> jobIds) getListMessage,
    required TResult Function(List<String> jobIds) getDetailMessage,
    required TResult Function(CompanyModel companyModel) getDetailCompany,
  }) {
    return getListMessage(jobIds);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<String> jobIds)? getListMessage,
    TResult? Function(List<String> jobIds)? getDetailMessage,
    TResult? Function(CompanyModel companyModel)? getDetailCompany,
  }) {
    return getListMessage?.call(jobIds);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<String> jobIds)? getListMessage,
    TResult Function(List<String> jobIds)? getDetailMessage,
    TResult Function(CompanyModel companyModel)? getDetailCompany,
    required TResult orElse(),
  }) {
    if (getListMessage != null) {
      return getListMessage(jobIds);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetListMessageRequest value) getListMessage,
    required TResult Function(GetDetailMessageRequest value) getDetailMessage,
    required TResult Function(GetDetailCompanyRequest value) getDetailCompany,
  }) {
    return getListMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetListMessageRequest value)? getListMessage,
    TResult? Function(GetDetailMessageRequest value)? getDetailMessage,
    TResult? Function(GetDetailCompanyRequest value)? getDetailCompany,
  }) {
    return getListMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetListMessageRequest value)? getListMessage,
    TResult Function(GetDetailMessageRequest value)? getDetailMessage,
    TResult Function(GetDetailCompanyRequest value)? getDetailCompany,
    required TResult orElse(),
  }) {
    if (getListMessage != null) {
      return getListMessage(this);
    }
    return orElse();
  }
}

abstract class GetListMessageRequest implements ChatEvent {
  const factory GetListMessageRequest(final List<String> jobIds) =
      _$GetListMessageRequest;

  List<String> get jobIds;
  @JsonKey(ignore: true)
  _$$GetListMessageRequestCopyWith<_$GetListMessageRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetDetailMessageRequestCopyWith<$Res> {
  factory _$$GetDetailMessageRequestCopyWith(_$GetDetailMessageRequest value,
          $Res Function(_$GetDetailMessageRequest) then) =
      __$$GetDetailMessageRequestCopyWithImpl<$Res>;
  @useResult
  $Res call({List<String> jobIds});
}

/// @nodoc
class __$$GetDetailMessageRequestCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$GetDetailMessageRequest>
    implements _$$GetDetailMessageRequestCopyWith<$Res> {
  __$$GetDetailMessageRequestCopyWithImpl(_$GetDetailMessageRequest _value,
      $Res Function(_$GetDetailMessageRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? jobIds = null,
  }) {
    return _then(_$GetDetailMessageRequest(
      null == jobIds
          ? _value._jobIds
          : jobIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$GetDetailMessageRequest implements GetDetailMessageRequest {
  const _$GetDetailMessageRequest(final List<String> jobIds) : _jobIds = jobIds;

  final List<String> _jobIds;
  @override
  List<String> get jobIds {
    if (_jobIds is EqualUnmodifiableListView) return _jobIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_jobIds);
  }

  @override
  String toString() {
    return 'ChatEvent.getDetailMessage(jobIds: $jobIds)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetDetailMessageRequest &&
            const DeepCollectionEquality().equals(other._jobIds, _jobIds));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_jobIds));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetDetailMessageRequestCopyWith<_$GetDetailMessageRequest> get copyWith =>
      __$$GetDetailMessageRequestCopyWithImpl<_$GetDetailMessageRequest>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<String> jobIds) getListMessage,
    required TResult Function(List<String> jobIds) getDetailMessage,
    required TResult Function(CompanyModel companyModel) getDetailCompany,
  }) {
    return getDetailMessage(jobIds);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<String> jobIds)? getListMessage,
    TResult? Function(List<String> jobIds)? getDetailMessage,
    TResult? Function(CompanyModel companyModel)? getDetailCompany,
  }) {
    return getDetailMessage?.call(jobIds);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<String> jobIds)? getListMessage,
    TResult Function(List<String> jobIds)? getDetailMessage,
    TResult Function(CompanyModel companyModel)? getDetailCompany,
    required TResult orElse(),
  }) {
    if (getDetailMessage != null) {
      return getDetailMessage(jobIds);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetListMessageRequest value) getListMessage,
    required TResult Function(GetDetailMessageRequest value) getDetailMessage,
    required TResult Function(GetDetailCompanyRequest value) getDetailCompany,
  }) {
    return getDetailMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetListMessageRequest value)? getListMessage,
    TResult? Function(GetDetailMessageRequest value)? getDetailMessage,
    TResult? Function(GetDetailCompanyRequest value)? getDetailCompany,
  }) {
    return getDetailMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetListMessageRequest value)? getListMessage,
    TResult Function(GetDetailMessageRequest value)? getDetailMessage,
    TResult Function(GetDetailCompanyRequest value)? getDetailCompany,
    required TResult orElse(),
  }) {
    if (getDetailMessage != null) {
      return getDetailMessage(this);
    }
    return orElse();
  }
}

abstract class GetDetailMessageRequest implements ChatEvent {
  const factory GetDetailMessageRequest(final List<String> jobIds) =
      _$GetDetailMessageRequest;

  List<String> get jobIds;
  @JsonKey(ignore: true)
  _$$GetDetailMessageRequestCopyWith<_$GetDetailMessageRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetDetailCompanyRequestCopyWith<$Res> {
  factory _$$GetDetailCompanyRequestCopyWith(_$GetDetailCompanyRequest value,
          $Res Function(_$GetDetailCompanyRequest) then) =
      __$$GetDetailCompanyRequestCopyWithImpl<$Res>;
  @useResult
  $Res call({CompanyModel companyModel});

  $CompanyModelCopyWith<$Res> get companyModel;
}

/// @nodoc
class __$$GetDetailCompanyRequestCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$GetDetailCompanyRequest>
    implements _$$GetDetailCompanyRequestCopyWith<$Res> {
  __$$GetDetailCompanyRequestCopyWithImpl(_$GetDetailCompanyRequest _value,
      $Res Function(_$GetDetailCompanyRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? companyModel = null,
  }) {
    return _then(_$GetDetailCompanyRequest(
      null == companyModel
          ? _value.companyModel
          : companyModel // ignore: cast_nullable_to_non_nullable
              as CompanyModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CompanyModelCopyWith<$Res> get companyModel {
    return $CompanyModelCopyWith<$Res>(_value.companyModel, (value) {
      return _then(_value.copyWith(companyModel: value));
    });
  }
}

/// @nodoc

class _$GetDetailCompanyRequest implements GetDetailCompanyRequest {
  const _$GetDetailCompanyRequest(this.companyModel);

  @override
  final CompanyModel companyModel;

  @override
  String toString() {
    return 'ChatEvent.getDetailCompany(companyModel: $companyModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetDetailCompanyRequest &&
            (identical(other.companyModel, companyModel) ||
                other.companyModel == companyModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, companyModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetDetailCompanyRequestCopyWith<_$GetDetailCompanyRequest> get copyWith =>
      __$$GetDetailCompanyRequestCopyWithImpl<_$GetDetailCompanyRequest>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<String> jobIds) getListMessage,
    required TResult Function(List<String> jobIds) getDetailMessage,
    required TResult Function(CompanyModel companyModel) getDetailCompany,
  }) {
    return getDetailCompany(companyModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<String> jobIds)? getListMessage,
    TResult? Function(List<String> jobIds)? getDetailMessage,
    TResult? Function(CompanyModel companyModel)? getDetailCompany,
  }) {
    return getDetailCompany?.call(companyModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<String> jobIds)? getListMessage,
    TResult Function(List<String> jobIds)? getDetailMessage,
    TResult Function(CompanyModel companyModel)? getDetailCompany,
    required TResult orElse(),
  }) {
    if (getDetailCompany != null) {
      return getDetailCompany(companyModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetListMessageRequest value) getListMessage,
    required TResult Function(GetDetailMessageRequest value) getDetailMessage,
    required TResult Function(GetDetailCompanyRequest value) getDetailCompany,
  }) {
    return getDetailCompany(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetListMessageRequest value)? getListMessage,
    TResult? Function(GetDetailMessageRequest value)? getDetailMessage,
    TResult? Function(GetDetailCompanyRequest value)? getDetailCompany,
  }) {
    return getDetailCompany?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetListMessageRequest value)? getListMessage,
    TResult Function(GetDetailMessageRequest value)? getDetailMessage,
    TResult Function(GetDetailCompanyRequest value)? getDetailCompany,
    required TResult orElse(),
  }) {
    if (getDetailCompany != null) {
      return getDetailCompany(this);
    }
    return orElse();
  }
}

abstract class GetDetailCompanyRequest implements ChatEvent {
  const factory GetDetailCompanyRequest(final CompanyModel companyModel) =
      _$GetDetailCompanyRequest;

  CompanyModel get companyModel;
  @JsonKey(ignore: true)
  _$$GetDetailCompanyRequestCopyWith<_$GetDetailCompanyRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ChatState {
  LoadStatusEnum get loadStatus => throw _privateConstructorUsedError;
  UserModel? get userModel => throw _privateConstructorUsedError;
  List<CompanyModel> get companyList => throw _privateConstructorUsedError;
  CompanyModel? get company => throw _privateConstructorUsedError;
  bool get isShimmer => throw _privateConstructorUsedError;
  bool get isSendMessage => throw _privateConstructorUsedError;
  String get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChatStateCopyWith<ChatState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatStateCopyWith<$Res> {
  factory $ChatStateCopyWith(ChatState value, $Res Function(ChatState) then) =
      _$ChatStateCopyWithImpl<$Res, ChatState>;
  @useResult
  $Res call(
      {LoadStatusEnum loadStatus,
      UserModel? userModel,
      List<CompanyModel> companyList,
      CompanyModel? company,
      bool isShimmer,
      bool isSendMessage,
      String error});

  $UserModelCopyWith<$Res>? get userModel;
  $CompanyModelCopyWith<$Res>? get company;
}

/// @nodoc
class _$ChatStateCopyWithImpl<$Res, $Val extends ChatState>
    implements $ChatStateCopyWith<$Res> {
  _$ChatStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loadStatus = null,
    Object? userModel = freezed,
    Object? companyList = null,
    Object? company = freezed,
    Object? isShimmer = null,
    Object? isSendMessage = null,
    Object? error = null,
  }) {
    return _then(_value.copyWith(
      loadStatus: null == loadStatus
          ? _value.loadStatus
          : loadStatus // ignore: cast_nullable_to_non_nullable
              as LoadStatusEnum,
      userModel: freezed == userModel
          ? _value.userModel
          : userModel // ignore: cast_nullable_to_non_nullable
              as UserModel?,
      companyList: null == companyList
          ? _value.companyList
          : companyList // ignore: cast_nullable_to_non_nullable
              as List<CompanyModel>,
      company: freezed == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as CompanyModel?,
      isShimmer: null == isShimmer
          ? _value.isShimmer
          : isShimmer // ignore: cast_nullable_to_non_nullable
              as bool,
      isSendMessage: null == isSendMessage
          ? _value.isSendMessage
          : isSendMessage // ignore: cast_nullable_to_non_nullable
              as bool,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res>? get userModel {
    if (_value.userModel == null) {
      return null;
    }

    return $UserModelCopyWith<$Res>(_value.userModel!, (value) {
      return _then(_value.copyWith(userModel: value) as $Val);
    });
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
}

/// @nodoc
abstract class _$$_ChatStateCopyWith<$Res> implements $ChatStateCopyWith<$Res> {
  factory _$$_ChatStateCopyWith(
          _$_ChatState value, $Res Function(_$_ChatState) then) =
      __$$_ChatStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {LoadStatusEnum loadStatus,
      UserModel? userModel,
      List<CompanyModel> companyList,
      CompanyModel? company,
      bool isShimmer,
      bool isSendMessage,
      String error});

  @override
  $UserModelCopyWith<$Res>? get userModel;
  @override
  $CompanyModelCopyWith<$Res>? get company;
}

/// @nodoc
class __$$_ChatStateCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$_ChatState>
    implements _$$_ChatStateCopyWith<$Res> {
  __$$_ChatStateCopyWithImpl(
      _$_ChatState _value, $Res Function(_$_ChatState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loadStatus = null,
    Object? userModel = freezed,
    Object? companyList = null,
    Object? company = freezed,
    Object? isShimmer = null,
    Object? isSendMessage = null,
    Object? error = null,
  }) {
    return _then(_$_ChatState(
      loadStatus: null == loadStatus
          ? _value.loadStatus
          : loadStatus // ignore: cast_nullable_to_non_nullable
              as LoadStatusEnum,
      userModel: freezed == userModel
          ? _value.userModel
          : userModel // ignore: cast_nullable_to_non_nullable
              as UserModel?,
      companyList: null == companyList
          ? _value._companyList
          : companyList // ignore: cast_nullable_to_non_nullable
              as List<CompanyModel>,
      company: freezed == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as CompanyModel?,
      isShimmer: null == isShimmer
          ? _value.isShimmer
          : isShimmer // ignore: cast_nullable_to_non_nullable
              as bool,
      isSendMessage: null == isSendMessage
          ? _value.isSendMessage
          : isSendMessage // ignore: cast_nullable_to_non_nullable
              as bool,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ChatState implements _ChatState {
  const _$_ChatState(
      {this.loadStatus = LoadStatusEnum.notLoad,
      this.userModel,
      final List<CompanyModel> companyList = const [],
      this.company,
      this.isShimmer = true,
      this.isSendMessage = false,
      this.error = ""})
      : _companyList = companyList;

  @override
  @JsonKey()
  final LoadStatusEnum loadStatus;
  @override
  final UserModel? userModel;
  final List<CompanyModel> _companyList;
  @override
  @JsonKey()
  List<CompanyModel> get companyList {
    if (_companyList is EqualUnmodifiableListView) return _companyList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_companyList);
  }

  @override
  final CompanyModel? company;
  @override
  @JsonKey()
  final bool isShimmer;
  @override
  @JsonKey()
  final bool isSendMessage;
  @override
  @JsonKey()
  final String error;

  @override
  String toString() {
    return 'ChatState(loadStatus: $loadStatus, userModel: $userModel, companyList: $companyList, company: $company, isShimmer: $isShimmer, isSendMessage: $isSendMessage, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChatState &&
            (identical(other.loadStatus, loadStatus) ||
                other.loadStatus == loadStatus) &&
            (identical(other.userModel, userModel) ||
                other.userModel == userModel) &&
            const DeepCollectionEquality()
                .equals(other._companyList, _companyList) &&
            (identical(other.company, company) || other.company == company) &&
            (identical(other.isShimmer, isShimmer) ||
                other.isShimmer == isShimmer) &&
            (identical(other.isSendMessage, isSendMessage) ||
                other.isSendMessage == isSendMessage) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      loadStatus,
      userModel,
      const DeepCollectionEquality().hash(_companyList),
      company,
      isShimmer,
      isSendMessage,
      error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChatStateCopyWith<_$_ChatState> get copyWith =>
      __$$_ChatStateCopyWithImpl<_$_ChatState>(this, _$identity);
}

abstract class _ChatState implements ChatState {
  const factory _ChatState(
      {final LoadStatusEnum loadStatus,
      final UserModel? userModel,
      final List<CompanyModel> companyList,
      final CompanyModel? company,
      final bool isShimmer,
      final bool isSendMessage,
      final String error}) = _$_ChatState;

  @override
  LoadStatusEnum get loadStatus;
  @override
  UserModel? get userModel;
  @override
  List<CompanyModel> get companyList;
  @override
  CompanyModel? get company;
  @override
  bool get isShimmer;
  @override
  bool get isSendMessage;
  @override
  String get error;
  @override
  @JsonKey(ignore: true)
  _$$_ChatStateCopyWith<_$_ChatState> get copyWith =>
      throw _privateConstructorUsedError;
}
