// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProfileEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) phoneNumberChanged,
    required TResult Function(String fullName) fullnameChanged,
    required TResult Function(String text) passwordChanged,
    required TResult Function(String text) confirmPasswordChanged,
    required TResult Function(String text) newPasswordChanged,
    required TResult Function(String username) changePassword,
    required TResult Function(String image) imageChanged,
    required TResult Function() loading,
    required TResult Function() updateUser,
    required TResult Function(UserModel userModel) getUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phoneNumber)? phoneNumberChanged,
    TResult? Function(String fullName)? fullnameChanged,
    TResult? Function(String text)? passwordChanged,
    TResult? Function(String text)? confirmPasswordChanged,
    TResult? Function(String text)? newPasswordChanged,
    TResult? Function(String username)? changePassword,
    TResult? Function(String image)? imageChanged,
    TResult? Function()? loading,
    TResult? Function()? updateUser,
    TResult? Function(UserModel userModel)? getUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? phoneNumberChanged,
    TResult Function(String fullName)? fullnameChanged,
    TResult Function(String text)? passwordChanged,
    TResult Function(String text)? confirmPasswordChanged,
    TResult Function(String text)? newPasswordChanged,
    TResult Function(String username)? changePassword,
    TResult Function(String image)? imageChanged,
    TResult Function()? loading,
    TResult Function()? updateUser,
    TResult Function(UserModel userModel)? getUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PhoneNumberChangedRequested value)
        phoneNumberChanged,
    required TResult Function(FullnameChangedRequested value) fullnameChanged,
    required TResult Function(PasswordChangedRequested value) passwordChanged,
    required TResult Function(ConfirmPasswordChangedRequested value)
        confirmPasswordChanged,
    required TResult Function(NewPasswordChangedRequested value)
        newPasswordChanged,
    required TResult Function(ChangePasswordRequest value) changePassword,
    required TResult Function(ImageChangedRequested value) imageChanged,
    required TResult Function(LoadingRequested value) loading,
    required TResult Function(UpdateUserRequest value) updateUser,
    required TResult Function(GetUserRequest value) getUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PhoneNumberChangedRequested value)? phoneNumberChanged,
    TResult? Function(FullnameChangedRequested value)? fullnameChanged,
    TResult? Function(PasswordChangedRequested value)? passwordChanged,
    TResult? Function(ConfirmPasswordChangedRequested value)?
        confirmPasswordChanged,
    TResult? Function(NewPasswordChangedRequested value)? newPasswordChanged,
    TResult? Function(ChangePasswordRequest value)? changePassword,
    TResult? Function(ImageChangedRequested value)? imageChanged,
    TResult? Function(LoadingRequested value)? loading,
    TResult? Function(UpdateUserRequest value)? updateUser,
    TResult? Function(GetUserRequest value)? getUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PhoneNumberChangedRequested value)? phoneNumberChanged,
    TResult Function(FullnameChangedRequested value)? fullnameChanged,
    TResult Function(PasswordChangedRequested value)? passwordChanged,
    TResult Function(ConfirmPasswordChangedRequested value)?
        confirmPasswordChanged,
    TResult Function(NewPasswordChangedRequested value)? newPasswordChanged,
    TResult Function(ChangePasswordRequest value)? changePassword,
    TResult Function(ImageChangedRequested value)? imageChanged,
    TResult Function(LoadingRequested value)? loading,
    TResult Function(UpdateUserRequest value)? updateUser,
    TResult Function(GetUserRequest value)? getUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileEventCopyWith<$Res> {
  factory $ProfileEventCopyWith(
          ProfileEvent value, $Res Function(ProfileEvent) then) =
      _$ProfileEventCopyWithImpl<$Res, ProfileEvent>;
}

/// @nodoc
class _$ProfileEventCopyWithImpl<$Res, $Val extends ProfileEvent>
    implements $ProfileEventCopyWith<$Res> {
  _$ProfileEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$PhoneNumberChangedRequestedCopyWith<$Res> {
  factory _$$PhoneNumberChangedRequestedCopyWith(
          _$PhoneNumberChangedRequested value,
          $Res Function(_$PhoneNumberChangedRequested) then) =
      __$$PhoneNumberChangedRequestedCopyWithImpl<$Res>;
  @useResult
  $Res call({String phoneNumber});
}

/// @nodoc
class __$$PhoneNumberChangedRequestedCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$PhoneNumberChangedRequested>
    implements _$$PhoneNumberChangedRequestedCopyWith<$Res> {
  __$$PhoneNumberChangedRequestedCopyWithImpl(
      _$PhoneNumberChangedRequested _value,
      $Res Function(_$PhoneNumberChangedRequested) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
  }) {
    return _then(_$PhoneNumberChangedRequested(
      null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PhoneNumberChangedRequested implements PhoneNumberChangedRequested {
  const _$PhoneNumberChangedRequested(this.phoneNumber);

  @override
  final String phoneNumber;

  @override
  String toString() {
    return 'ProfileEvent.phoneNumberChanged(phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PhoneNumberChangedRequested &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phoneNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PhoneNumberChangedRequestedCopyWith<_$PhoneNumberChangedRequested>
      get copyWith => __$$PhoneNumberChangedRequestedCopyWithImpl<
          _$PhoneNumberChangedRequested>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) phoneNumberChanged,
    required TResult Function(String fullName) fullnameChanged,
    required TResult Function(String text) passwordChanged,
    required TResult Function(String text) confirmPasswordChanged,
    required TResult Function(String text) newPasswordChanged,
    required TResult Function(String username) changePassword,
    required TResult Function(String image) imageChanged,
    required TResult Function() loading,
    required TResult Function() updateUser,
    required TResult Function(UserModel userModel) getUser,
  }) {
    return phoneNumberChanged(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phoneNumber)? phoneNumberChanged,
    TResult? Function(String fullName)? fullnameChanged,
    TResult? Function(String text)? passwordChanged,
    TResult? Function(String text)? confirmPasswordChanged,
    TResult? Function(String text)? newPasswordChanged,
    TResult? Function(String username)? changePassword,
    TResult? Function(String image)? imageChanged,
    TResult? Function()? loading,
    TResult? Function()? updateUser,
    TResult? Function(UserModel userModel)? getUser,
  }) {
    return phoneNumberChanged?.call(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? phoneNumberChanged,
    TResult Function(String fullName)? fullnameChanged,
    TResult Function(String text)? passwordChanged,
    TResult Function(String text)? confirmPasswordChanged,
    TResult Function(String text)? newPasswordChanged,
    TResult Function(String username)? changePassword,
    TResult Function(String image)? imageChanged,
    TResult Function()? loading,
    TResult Function()? updateUser,
    TResult Function(UserModel userModel)? getUser,
    required TResult orElse(),
  }) {
    if (phoneNumberChanged != null) {
      return phoneNumberChanged(phoneNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PhoneNumberChangedRequested value)
        phoneNumberChanged,
    required TResult Function(FullnameChangedRequested value) fullnameChanged,
    required TResult Function(PasswordChangedRequested value) passwordChanged,
    required TResult Function(ConfirmPasswordChangedRequested value)
        confirmPasswordChanged,
    required TResult Function(NewPasswordChangedRequested value)
        newPasswordChanged,
    required TResult Function(ChangePasswordRequest value) changePassword,
    required TResult Function(ImageChangedRequested value) imageChanged,
    required TResult Function(LoadingRequested value) loading,
    required TResult Function(UpdateUserRequest value) updateUser,
    required TResult Function(GetUserRequest value) getUser,
  }) {
    return phoneNumberChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PhoneNumberChangedRequested value)? phoneNumberChanged,
    TResult? Function(FullnameChangedRequested value)? fullnameChanged,
    TResult? Function(PasswordChangedRequested value)? passwordChanged,
    TResult? Function(ConfirmPasswordChangedRequested value)?
        confirmPasswordChanged,
    TResult? Function(NewPasswordChangedRequested value)? newPasswordChanged,
    TResult? Function(ChangePasswordRequest value)? changePassword,
    TResult? Function(ImageChangedRequested value)? imageChanged,
    TResult? Function(LoadingRequested value)? loading,
    TResult? Function(UpdateUserRequest value)? updateUser,
    TResult? Function(GetUserRequest value)? getUser,
  }) {
    return phoneNumberChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PhoneNumberChangedRequested value)? phoneNumberChanged,
    TResult Function(FullnameChangedRequested value)? fullnameChanged,
    TResult Function(PasswordChangedRequested value)? passwordChanged,
    TResult Function(ConfirmPasswordChangedRequested value)?
        confirmPasswordChanged,
    TResult Function(NewPasswordChangedRequested value)? newPasswordChanged,
    TResult Function(ChangePasswordRequest value)? changePassword,
    TResult Function(ImageChangedRequested value)? imageChanged,
    TResult Function(LoadingRequested value)? loading,
    TResult Function(UpdateUserRequest value)? updateUser,
    TResult Function(GetUserRequest value)? getUser,
    required TResult orElse(),
  }) {
    if (phoneNumberChanged != null) {
      return phoneNumberChanged(this);
    }
    return orElse();
  }
}

abstract class PhoneNumberChangedRequested implements ProfileEvent {
  const factory PhoneNumberChangedRequested(final String phoneNumber) =
      _$PhoneNumberChangedRequested;

  String get phoneNumber;
  @JsonKey(ignore: true)
  _$$PhoneNumberChangedRequestedCopyWith<_$PhoneNumberChangedRequested>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FullnameChangedRequestedCopyWith<$Res> {
  factory _$$FullnameChangedRequestedCopyWith(_$FullnameChangedRequested value,
          $Res Function(_$FullnameChangedRequested) then) =
      __$$FullnameChangedRequestedCopyWithImpl<$Res>;
  @useResult
  $Res call({String fullName});
}

/// @nodoc
class __$$FullnameChangedRequestedCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$FullnameChangedRequested>
    implements _$$FullnameChangedRequestedCopyWith<$Res> {
  __$$FullnameChangedRequestedCopyWithImpl(_$FullnameChangedRequested _value,
      $Res Function(_$FullnameChangedRequested) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullName = null,
  }) {
    return _then(_$FullnameChangedRequested(
      null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FullnameChangedRequested implements FullnameChangedRequested {
  const _$FullnameChangedRequested(this.fullName);

  @override
  final String fullName;

  @override
  String toString() {
    return 'ProfileEvent.fullnameChanged(fullName: $fullName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FullnameChangedRequested &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, fullName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FullnameChangedRequestedCopyWith<_$FullnameChangedRequested>
      get copyWith =>
          __$$FullnameChangedRequestedCopyWithImpl<_$FullnameChangedRequested>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) phoneNumberChanged,
    required TResult Function(String fullName) fullnameChanged,
    required TResult Function(String text) passwordChanged,
    required TResult Function(String text) confirmPasswordChanged,
    required TResult Function(String text) newPasswordChanged,
    required TResult Function(String username) changePassword,
    required TResult Function(String image) imageChanged,
    required TResult Function() loading,
    required TResult Function() updateUser,
    required TResult Function(UserModel userModel) getUser,
  }) {
    return fullnameChanged(fullName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phoneNumber)? phoneNumberChanged,
    TResult? Function(String fullName)? fullnameChanged,
    TResult? Function(String text)? passwordChanged,
    TResult? Function(String text)? confirmPasswordChanged,
    TResult? Function(String text)? newPasswordChanged,
    TResult? Function(String username)? changePassword,
    TResult? Function(String image)? imageChanged,
    TResult? Function()? loading,
    TResult? Function()? updateUser,
    TResult? Function(UserModel userModel)? getUser,
  }) {
    return fullnameChanged?.call(fullName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? phoneNumberChanged,
    TResult Function(String fullName)? fullnameChanged,
    TResult Function(String text)? passwordChanged,
    TResult Function(String text)? confirmPasswordChanged,
    TResult Function(String text)? newPasswordChanged,
    TResult Function(String username)? changePassword,
    TResult Function(String image)? imageChanged,
    TResult Function()? loading,
    TResult Function()? updateUser,
    TResult Function(UserModel userModel)? getUser,
    required TResult orElse(),
  }) {
    if (fullnameChanged != null) {
      return fullnameChanged(fullName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PhoneNumberChangedRequested value)
        phoneNumberChanged,
    required TResult Function(FullnameChangedRequested value) fullnameChanged,
    required TResult Function(PasswordChangedRequested value) passwordChanged,
    required TResult Function(ConfirmPasswordChangedRequested value)
        confirmPasswordChanged,
    required TResult Function(NewPasswordChangedRequested value)
        newPasswordChanged,
    required TResult Function(ChangePasswordRequest value) changePassword,
    required TResult Function(ImageChangedRequested value) imageChanged,
    required TResult Function(LoadingRequested value) loading,
    required TResult Function(UpdateUserRequest value) updateUser,
    required TResult Function(GetUserRequest value) getUser,
  }) {
    return fullnameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PhoneNumberChangedRequested value)? phoneNumberChanged,
    TResult? Function(FullnameChangedRequested value)? fullnameChanged,
    TResult? Function(PasswordChangedRequested value)? passwordChanged,
    TResult? Function(ConfirmPasswordChangedRequested value)?
        confirmPasswordChanged,
    TResult? Function(NewPasswordChangedRequested value)? newPasswordChanged,
    TResult? Function(ChangePasswordRequest value)? changePassword,
    TResult? Function(ImageChangedRequested value)? imageChanged,
    TResult? Function(LoadingRequested value)? loading,
    TResult? Function(UpdateUserRequest value)? updateUser,
    TResult? Function(GetUserRequest value)? getUser,
  }) {
    return fullnameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PhoneNumberChangedRequested value)? phoneNumberChanged,
    TResult Function(FullnameChangedRequested value)? fullnameChanged,
    TResult Function(PasswordChangedRequested value)? passwordChanged,
    TResult Function(ConfirmPasswordChangedRequested value)?
        confirmPasswordChanged,
    TResult Function(NewPasswordChangedRequested value)? newPasswordChanged,
    TResult Function(ChangePasswordRequest value)? changePassword,
    TResult Function(ImageChangedRequested value)? imageChanged,
    TResult Function(LoadingRequested value)? loading,
    TResult Function(UpdateUserRequest value)? updateUser,
    TResult Function(GetUserRequest value)? getUser,
    required TResult orElse(),
  }) {
    if (fullnameChanged != null) {
      return fullnameChanged(this);
    }
    return orElse();
  }
}

abstract class FullnameChangedRequested implements ProfileEvent {
  const factory FullnameChangedRequested(final String fullName) =
      _$FullnameChangedRequested;

  String get fullName;
  @JsonKey(ignore: true)
  _$$FullnameChangedRequestedCopyWith<_$FullnameChangedRequested>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PasswordChangedRequestedCopyWith<$Res> {
  factory _$$PasswordChangedRequestedCopyWith(_$PasswordChangedRequested value,
          $Res Function(_$PasswordChangedRequested) then) =
      __$$PasswordChangedRequestedCopyWithImpl<$Res>;
  @useResult
  $Res call({String text});
}

/// @nodoc
class __$$PasswordChangedRequestedCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$PasswordChangedRequested>
    implements _$$PasswordChangedRequestedCopyWith<$Res> {
  __$$PasswordChangedRequestedCopyWithImpl(_$PasswordChangedRequested _value,
      $Res Function(_$PasswordChangedRequested) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
  }) {
    return _then(_$PasswordChangedRequested(
      null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PasswordChangedRequested implements PasswordChangedRequested {
  const _$PasswordChangedRequested(this.text);

  @override
  final String text;

  @override
  String toString() {
    return 'ProfileEvent.passwordChanged(text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PasswordChangedRequested &&
            (identical(other.text, text) || other.text == text));
  }

  @override
  int get hashCode => Object.hash(runtimeType, text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PasswordChangedRequestedCopyWith<_$PasswordChangedRequested>
      get copyWith =>
          __$$PasswordChangedRequestedCopyWithImpl<_$PasswordChangedRequested>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) phoneNumberChanged,
    required TResult Function(String fullName) fullnameChanged,
    required TResult Function(String text) passwordChanged,
    required TResult Function(String text) confirmPasswordChanged,
    required TResult Function(String text) newPasswordChanged,
    required TResult Function(String username) changePassword,
    required TResult Function(String image) imageChanged,
    required TResult Function() loading,
    required TResult Function() updateUser,
    required TResult Function(UserModel userModel) getUser,
  }) {
    return passwordChanged(text);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phoneNumber)? phoneNumberChanged,
    TResult? Function(String fullName)? fullnameChanged,
    TResult? Function(String text)? passwordChanged,
    TResult? Function(String text)? confirmPasswordChanged,
    TResult? Function(String text)? newPasswordChanged,
    TResult? Function(String username)? changePassword,
    TResult? Function(String image)? imageChanged,
    TResult? Function()? loading,
    TResult? Function()? updateUser,
    TResult? Function(UserModel userModel)? getUser,
  }) {
    return passwordChanged?.call(text);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? phoneNumberChanged,
    TResult Function(String fullName)? fullnameChanged,
    TResult Function(String text)? passwordChanged,
    TResult Function(String text)? confirmPasswordChanged,
    TResult Function(String text)? newPasswordChanged,
    TResult Function(String username)? changePassword,
    TResult Function(String image)? imageChanged,
    TResult Function()? loading,
    TResult Function()? updateUser,
    TResult Function(UserModel userModel)? getUser,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(text);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PhoneNumberChangedRequested value)
        phoneNumberChanged,
    required TResult Function(FullnameChangedRequested value) fullnameChanged,
    required TResult Function(PasswordChangedRequested value) passwordChanged,
    required TResult Function(ConfirmPasswordChangedRequested value)
        confirmPasswordChanged,
    required TResult Function(NewPasswordChangedRequested value)
        newPasswordChanged,
    required TResult Function(ChangePasswordRequest value) changePassword,
    required TResult Function(ImageChangedRequested value) imageChanged,
    required TResult Function(LoadingRequested value) loading,
    required TResult Function(UpdateUserRequest value) updateUser,
    required TResult Function(GetUserRequest value) getUser,
  }) {
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PhoneNumberChangedRequested value)? phoneNumberChanged,
    TResult? Function(FullnameChangedRequested value)? fullnameChanged,
    TResult? Function(PasswordChangedRequested value)? passwordChanged,
    TResult? Function(ConfirmPasswordChangedRequested value)?
        confirmPasswordChanged,
    TResult? Function(NewPasswordChangedRequested value)? newPasswordChanged,
    TResult? Function(ChangePasswordRequest value)? changePassword,
    TResult? Function(ImageChangedRequested value)? imageChanged,
    TResult? Function(LoadingRequested value)? loading,
    TResult? Function(UpdateUserRequest value)? updateUser,
    TResult? Function(GetUserRequest value)? getUser,
  }) {
    return passwordChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PhoneNumberChangedRequested value)? phoneNumberChanged,
    TResult Function(FullnameChangedRequested value)? fullnameChanged,
    TResult Function(PasswordChangedRequested value)? passwordChanged,
    TResult Function(ConfirmPasswordChangedRequested value)?
        confirmPasswordChanged,
    TResult Function(NewPasswordChangedRequested value)? newPasswordChanged,
    TResult Function(ChangePasswordRequest value)? changePassword,
    TResult Function(ImageChangedRequested value)? imageChanged,
    TResult Function(LoadingRequested value)? loading,
    TResult Function(UpdateUserRequest value)? updateUser,
    TResult Function(GetUserRequest value)? getUser,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class PasswordChangedRequested implements ProfileEvent {
  const factory PasswordChangedRequested(final String text) =
      _$PasswordChangedRequested;

  String get text;
  @JsonKey(ignore: true)
  _$$PasswordChangedRequestedCopyWith<_$PasswordChangedRequested>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ConfirmPasswordChangedRequestedCopyWith<$Res> {
  factory _$$ConfirmPasswordChangedRequestedCopyWith(
          _$ConfirmPasswordChangedRequested value,
          $Res Function(_$ConfirmPasswordChangedRequested) then) =
      __$$ConfirmPasswordChangedRequestedCopyWithImpl<$Res>;
  @useResult
  $Res call({String text});
}

/// @nodoc
class __$$ConfirmPasswordChangedRequestedCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$ConfirmPasswordChangedRequested>
    implements _$$ConfirmPasswordChangedRequestedCopyWith<$Res> {
  __$$ConfirmPasswordChangedRequestedCopyWithImpl(
      _$ConfirmPasswordChangedRequested _value,
      $Res Function(_$ConfirmPasswordChangedRequested) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
  }) {
    return _then(_$ConfirmPasswordChangedRequested(
      null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ConfirmPasswordChangedRequested
    implements ConfirmPasswordChangedRequested {
  const _$ConfirmPasswordChangedRequested(this.text);

  @override
  final String text;

  @override
  String toString() {
    return 'ProfileEvent.confirmPasswordChanged(text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConfirmPasswordChangedRequested &&
            (identical(other.text, text) || other.text == text));
  }

  @override
  int get hashCode => Object.hash(runtimeType, text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConfirmPasswordChangedRequestedCopyWith<_$ConfirmPasswordChangedRequested>
      get copyWith => __$$ConfirmPasswordChangedRequestedCopyWithImpl<
          _$ConfirmPasswordChangedRequested>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) phoneNumberChanged,
    required TResult Function(String fullName) fullnameChanged,
    required TResult Function(String text) passwordChanged,
    required TResult Function(String text) confirmPasswordChanged,
    required TResult Function(String text) newPasswordChanged,
    required TResult Function(String username) changePassword,
    required TResult Function(String image) imageChanged,
    required TResult Function() loading,
    required TResult Function() updateUser,
    required TResult Function(UserModel userModel) getUser,
  }) {
    return confirmPasswordChanged(text);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phoneNumber)? phoneNumberChanged,
    TResult? Function(String fullName)? fullnameChanged,
    TResult? Function(String text)? passwordChanged,
    TResult? Function(String text)? confirmPasswordChanged,
    TResult? Function(String text)? newPasswordChanged,
    TResult? Function(String username)? changePassword,
    TResult? Function(String image)? imageChanged,
    TResult? Function()? loading,
    TResult? Function()? updateUser,
    TResult? Function(UserModel userModel)? getUser,
  }) {
    return confirmPasswordChanged?.call(text);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? phoneNumberChanged,
    TResult Function(String fullName)? fullnameChanged,
    TResult Function(String text)? passwordChanged,
    TResult Function(String text)? confirmPasswordChanged,
    TResult Function(String text)? newPasswordChanged,
    TResult Function(String username)? changePassword,
    TResult Function(String image)? imageChanged,
    TResult Function()? loading,
    TResult Function()? updateUser,
    TResult Function(UserModel userModel)? getUser,
    required TResult orElse(),
  }) {
    if (confirmPasswordChanged != null) {
      return confirmPasswordChanged(text);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PhoneNumberChangedRequested value)
        phoneNumberChanged,
    required TResult Function(FullnameChangedRequested value) fullnameChanged,
    required TResult Function(PasswordChangedRequested value) passwordChanged,
    required TResult Function(ConfirmPasswordChangedRequested value)
        confirmPasswordChanged,
    required TResult Function(NewPasswordChangedRequested value)
        newPasswordChanged,
    required TResult Function(ChangePasswordRequest value) changePassword,
    required TResult Function(ImageChangedRequested value) imageChanged,
    required TResult Function(LoadingRequested value) loading,
    required TResult Function(UpdateUserRequest value) updateUser,
    required TResult Function(GetUserRequest value) getUser,
  }) {
    return confirmPasswordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PhoneNumberChangedRequested value)? phoneNumberChanged,
    TResult? Function(FullnameChangedRequested value)? fullnameChanged,
    TResult? Function(PasswordChangedRequested value)? passwordChanged,
    TResult? Function(ConfirmPasswordChangedRequested value)?
        confirmPasswordChanged,
    TResult? Function(NewPasswordChangedRequested value)? newPasswordChanged,
    TResult? Function(ChangePasswordRequest value)? changePassword,
    TResult? Function(ImageChangedRequested value)? imageChanged,
    TResult? Function(LoadingRequested value)? loading,
    TResult? Function(UpdateUserRequest value)? updateUser,
    TResult? Function(GetUserRequest value)? getUser,
  }) {
    return confirmPasswordChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PhoneNumberChangedRequested value)? phoneNumberChanged,
    TResult Function(FullnameChangedRequested value)? fullnameChanged,
    TResult Function(PasswordChangedRequested value)? passwordChanged,
    TResult Function(ConfirmPasswordChangedRequested value)?
        confirmPasswordChanged,
    TResult Function(NewPasswordChangedRequested value)? newPasswordChanged,
    TResult Function(ChangePasswordRequest value)? changePassword,
    TResult Function(ImageChangedRequested value)? imageChanged,
    TResult Function(LoadingRequested value)? loading,
    TResult Function(UpdateUserRequest value)? updateUser,
    TResult Function(GetUserRequest value)? getUser,
    required TResult orElse(),
  }) {
    if (confirmPasswordChanged != null) {
      return confirmPasswordChanged(this);
    }
    return orElse();
  }
}

abstract class ConfirmPasswordChangedRequested implements ProfileEvent {
  const factory ConfirmPasswordChangedRequested(final String text) =
      _$ConfirmPasswordChangedRequested;

  String get text;
  @JsonKey(ignore: true)
  _$$ConfirmPasswordChangedRequestedCopyWith<_$ConfirmPasswordChangedRequested>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NewPasswordChangedRequestedCopyWith<$Res> {
  factory _$$NewPasswordChangedRequestedCopyWith(
          _$NewPasswordChangedRequested value,
          $Res Function(_$NewPasswordChangedRequested) then) =
      __$$NewPasswordChangedRequestedCopyWithImpl<$Res>;
  @useResult
  $Res call({String text});
}

/// @nodoc
class __$$NewPasswordChangedRequestedCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$NewPasswordChangedRequested>
    implements _$$NewPasswordChangedRequestedCopyWith<$Res> {
  __$$NewPasswordChangedRequestedCopyWithImpl(
      _$NewPasswordChangedRequested _value,
      $Res Function(_$NewPasswordChangedRequested) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
  }) {
    return _then(_$NewPasswordChangedRequested(
      null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NewPasswordChangedRequested implements NewPasswordChangedRequested {
  const _$NewPasswordChangedRequested(this.text);

  @override
  final String text;

  @override
  String toString() {
    return 'ProfileEvent.newPasswordChanged(text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewPasswordChangedRequested &&
            (identical(other.text, text) || other.text == text));
  }

  @override
  int get hashCode => Object.hash(runtimeType, text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NewPasswordChangedRequestedCopyWith<_$NewPasswordChangedRequested>
      get copyWith => __$$NewPasswordChangedRequestedCopyWithImpl<
          _$NewPasswordChangedRequested>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) phoneNumberChanged,
    required TResult Function(String fullName) fullnameChanged,
    required TResult Function(String text) passwordChanged,
    required TResult Function(String text) confirmPasswordChanged,
    required TResult Function(String text) newPasswordChanged,
    required TResult Function(String username) changePassword,
    required TResult Function(String image) imageChanged,
    required TResult Function() loading,
    required TResult Function() updateUser,
    required TResult Function(UserModel userModel) getUser,
  }) {
    return newPasswordChanged(text);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phoneNumber)? phoneNumberChanged,
    TResult? Function(String fullName)? fullnameChanged,
    TResult? Function(String text)? passwordChanged,
    TResult? Function(String text)? confirmPasswordChanged,
    TResult? Function(String text)? newPasswordChanged,
    TResult? Function(String username)? changePassword,
    TResult? Function(String image)? imageChanged,
    TResult? Function()? loading,
    TResult? Function()? updateUser,
    TResult? Function(UserModel userModel)? getUser,
  }) {
    return newPasswordChanged?.call(text);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? phoneNumberChanged,
    TResult Function(String fullName)? fullnameChanged,
    TResult Function(String text)? passwordChanged,
    TResult Function(String text)? confirmPasswordChanged,
    TResult Function(String text)? newPasswordChanged,
    TResult Function(String username)? changePassword,
    TResult Function(String image)? imageChanged,
    TResult Function()? loading,
    TResult Function()? updateUser,
    TResult Function(UserModel userModel)? getUser,
    required TResult orElse(),
  }) {
    if (newPasswordChanged != null) {
      return newPasswordChanged(text);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PhoneNumberChangedRequested value)
        phoneNumberChanged,
    required TResult Function(FullnameChangedRequested value) fullnameChanged,
    required TResult Function(PasswordChangedRequested value) passwordChanged,
    required TResult Function(ConfirmPasswordChangedRequested value)
        confirmPasswordChanged,
    required TResult Function(NewPasswordChangedRequested value)
        newPasswordChanged,
    required TResult Function(ChangePasswordRequest value) changePassword,
    required TResult Function(ImageChangedRequested value) imageChanged,
    required TResult Function(LoadingRequested value) loading,
    required TResult Function(UpdateUserRequest value) updateUser,
    required TResult Function(GetUserRequest value) getUser,
  }) {
    return newPasswordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PhoneNumberChangedRequested value)? phoneNumberChanged,
    TResult? Function(FullnameChangedRequested value)? fullnameChanged,
    TResult? Function(PasswordChangedRequested value)? passwordChanged,
    TResult? Function(ConfirmPasswordChangedRequested value)?
        confirmPasswordChanged,
    TResult? Function(NewPasswordChangedRequested value)? newPasswordChanged,
    TResult? Function(ChangePasswordRequest value)? changePassword,
    TResult? Function(ImageChangedRequested value)? imageChanged,
    TResult? Function(LoadingRequested value)? loading,
    TResult? Function(UpdateUserRequest value)? updateUser,
    TResult? Function(GetUserRequest value)? getUser,
  }) {
    return newPasswordChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PhoneNumberChangedRequested value)? phoneNumberChanged,
    TResult Function(FullnameChangedRequested value)? fullnameChanged,
    TResult Function(PasswordChangedRequested value)? passwordChanged,
    TResult Function(ConfirmPasswordChangedRequested value)?
        confirmPasswordChanged,
    TResult Function(NewPasswordChangedRequested value)? newPasswordChanged,
    TResult Function(ChangePasswordRequest value)? changePassword,
    TResult Function(ImageChangedRequested value)? imageChanged,
    TResult Function(LoadingRequested value)? loading,
    TResult Function(UpdateUserRequest value)? updateUser,
    TResult Function(GetUserRequest value)? getUser,
    required TResult orElse(),
  }) {
    if (newPasswordChanged != null) {
      return newPasswordChanged(this);
    }
    return orElse();
  }
}

abstract class NewPasswordChangedRequested implements ProfileEvent {
  const factory NewPasswordChangedRequested(final String text) =
      _$NewPasswordChangedRequested;

  String get text;
  @JsonKey(ignore: true)
  _$$NewPasswordChangedRequestedCopyWith<_$NewPasswordChangedRequested>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangePasswordRequestCopyWith<$Res> {
  factory _$$ChangePasswordRequestCopyWith(_$ChangePasswordRequest value,
          $Res Function(_$ChangePasswordRequest) then) =
      __$$ChangePasswordRequestCopyWithImpl<$Res>;
  @useResult
  $Res call({String username});
}

/// @nodoc
class __$$ChangePasswordRequestCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$ChangePasswordRequest>
    implements _$$ChangePasswordRequestCopyWith<$Res> {
  __$$ChangePasswordRequestCopyWithImpl(_$ChangePasswordRequest _value,
      $Res Function(_$ChangePasswordRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
  }) {
    return _then(_$ChangePasswordRequest(
      null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ChangePasswordRequest implements ChangePasswordRequest {
  const _$ChangePasswordRequest(this.username);

  @override
  final String username;

  @override
  String toString() {
    return 'ProfileEvent.changePassword(username: $username)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangePasswordRequest &&
            (identical(other.username, username) ||
                other.username == username));
  }

  @override
  int get hashCode => Object.hash(runtimeType, username);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangePasswordRequestCopyWith<_$ChangePasswordRequest> get copyWith =>
      __$$ChangePasswordRequestCopyWithImpl<_$ChangePasswordRequest>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) phoneNumberChanged,
    required TResult Function(String fullName) fullnameChanged,
    required TResult Function(String text) passwordChanged,
    required TResult Function(String text) confirmPasswordChanged,
    required TResult Function(String text) newPasswordChanged,
    required TResult Function(String username) changePassword,
    required TResult Function(String image) imageChanged,
    required TResult Function() loading,
    required TResult Function() updateUser,
    required TResult Function(UserModel userModel) getUser,
  }) {
    return changePassword(username);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phoneNumber)? phoneNumberChanged,
    TResult? Function(String fullName)? fullnameChanged,
    TResult? Function(String text)? passwordChanged,
    TResult? Function(String text)? confirmPasswordChanged,
    TResult? Function(String text)? newPasswordChanged,
    TResult? Function(String username)? changePassword,
    TResult? Function(String image)? imageChanged,
    TResult? Function()? loading,
    TResult? Function()? updateUser,
    TResult? Function(UserModel userModel)? getUser,
  }) {
    return changePassword?.call(username);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? phoneNumberChanged,
    TResult Function(String fullName)? fullnameChanged,
    TResult Function(String text)? passwordChanged,
    TResult Function(String text)? confirmPasswordChanged,
    TResult Function(String text)? newPasswordChanged,
    TResult Function(String username)? changePassword,
    TResult Function(String image)? imageChanged,
    TResult Function()? loading,
    TResult Function()? updateUser,
    TResult Function(UserModel userModel)? getUser,
    required TResult orElse(),
  }) {
    if (changePassword != null) {
      return changePassword(username);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PhoneNumberChangedRequested value)
        phoneNumberChanged,
    required TResult Function(FullnameChangedRequested value) fullnameChanged,
    required TResult Function(PasswordChangedRequested value) passwordChanged,
    required TResult Function(ConfirmPasswordChangedRequested value)
        confirmPasswordChanged,
    required TResult Function(NewPasswordChangedRequested value)
        newPasswordChanged,
    required TResult Function(ChangePasswordRequest value) changePassword,
    required TResult Function(ImageChangedRequested value) imageChanged,
    required TResult Function(LoadingRequested value) loading,
    required TResult Function(UpdateUserRequest value) updateUser,
    required TResult Function(GetUserRequest value) getUser,
  }) {
    return changePassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PhoneNumberChangedRequested value)? phoneNumberChanged,
    TResult? Function(FullnameChangedRequested value)? fullnameChanged,
    TResult? Function(PasswordChangedRequested value)? passwordChanged,
    TResult? Function(ConfirmPasswordChangedRequested value)?
        confirmPasswordChanged,
    TResult? Function(NewPasswordChangedRequested value)? newPasswordChanged,
    TResult? Function(ChangePasswordRequest value)? changePassword,
    TResult? Function(ImageChangedRequested value)? imageChanged,
    TResult? Function(LoadingRequested value)? loading,
    TResult? Function(UpdateUserRequest value)? updateUser,
    TResult? Function(GetUserRequest value)? getUser,
  }) {
    return changePassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PhoneNumberChangedRequested value)? phoneNumberChanged,
    TResult Function(FullnameChangedRequested value)? fullnameChanged,
    TResult Function(PasswordChangedRequested value)? passwordChanged,
    TResult Function(ConfirmPasswordChangedRequested value)?
        confirmPasswordChanged,
    TResult Function(NewPasswordChangedRequested value)? newPasswordChanged,
    TResult Function(ChangePasswordRequest value)? changePassword,
    TResult Function(ImageChangedRequested value)? imageChanged,
    TResult Function(LoadingRequested value)? loading,
    TResult Function(UpdateUserRequest value)? updateUser,
    TResult Function(GetUserRequest value)? getUser,
    required TResult orElse(),
  }) {
    if (changePassword != null) {
      return changePassword(this);
    }
    return orElse();
  }
}

abstract class ChangePasswordRequest implements ProfileEvent {
  const factory ChangePasswordRequest(final String username) =
      _$ChangePasswordRequest;

  String get username;
  @JsonKey(ignore: true)
  _$$ChangePasswordRequestCopyWith<_$ChangePasswordRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ImageChangedRequestedCopyWith<$Res> {
  factory _$$ImageChangedRequestedCopyWith(_$ImageChangedRequested value,
          $Res Function(_$ImageChangedRequested) then) =
      __$$ImageChangedRequestedCopyWithImpl<$Res>;
  @useResult
  $Res call({String image});
}

/// @nodoc
class __$$ImageChangedRequestedCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$ImageChangedRequested>
    implements _$$ImageChangedRequestedCopyWith<$Res> {
  __$$ImageChangedRequestedCopyWithImpl(_$ImageChangedRequested _value,
      $Res Function(_$ImageChangedRequested) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = null,
  }) {
    return _then(_$ImageChangedRequested(
      null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ImageChangedRequested implements ImageChangedRequested {
  const _$ImageChangedRequested(this.image);

  @override
  final String image;

  @override
  String toString() {
    return 'ProfileEvent.imageChanged(image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageChangedRequested &&
            (identical(other.image, image) || other.image == image));
  }

  @override
  int get hashCode => Object.hash(runtimeType, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageChangedRequestedCopyWith<_$ImageChangedRequested> get copyWith =>
      __$$ImageChangedRequestedCopyWithImpl<_$ImageChangedRequested>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) phoneNumberChanged,
    required TResult Function(String fullName) fullnameChanged,
    required TResult Function(String text) passwordChanged,
    required TResult Function(String text) confirmPasswordChanged,
    required TResult Function(String text) newPasswordChanged,
    required TResult Function(String username) changePassword,
    required TResult Function(String image) imageChanged,
    required TResult Function() loading,
    required TResult Function() updateUser,
    required TResult Function(UserModel userModel) getUser,
  }) {
    return imageChanged(image);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phoneNumber)? phoneNumberChanged,
    TResult? Function(String fullName)? fullnameChanged,
    TResult? Function(String text)? passwordChanged,
    TResult? Function(String text)? confirmPasswordChanged,
    TResult? Function(String text)? newPasswordChanged,
    TResult? Function(String username)? changePassword,
    TResult? Function(String image)? imageChanged,
    TResult? Function()? loading,
    TResult? Function()? updateUser,
    TResult? Function(UserModel userModel)? getUser,
  }) {
    return imageChanged?.call(image);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? phoneNumberChanged,
    TResult Function(String fullName)? fullnameChanged,
    TResult Function(String text)? passwordChanged,
    TResult Function(String text)? confirmPasswordChanged,
    TResult Function(String text)? newPasswordChanged,
    TResult Function(String username)? changePassword,
    TResult Function(String image)? imageChanged,
    TResult Function()? loading,
    TResult Function()? updateUser,
    TResult Function(UserModel userModel)? getUser,
    required TResult orElse(),
  }) {
    if (imageChanged != null) {
      return imageChanged(image);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PhoneNumberChangedRequested value)
        phoneNumberChanged,
    required TResult Function(FullnameChangedRequested value) fullnameChanged,
    required TResult Function(PasswordChangedRequested value) passwordChanged,
    required TResult Function(ConfirmPasswordChangedRequested value)
        confirmPasswordChanged,
    required TResult Function(NewPasswordChangedRequested value)
        newPasswordChanged,
    required TResult Function(ChangePasswordRequest value) changePassword,
    required TResult Function(ImageChangedRequested value) imageChanged,
    required TResult Function(LoadingRequested value) loading,
    required TResult Function(UpdateUserRequest value) updateUser,
    required TResult Function(GetUserRequest value) getUser,
  }) {
    return imageChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PhoneNumberChangedRequested value)? phoneNumberChanged,
    TResult? Function(FullnameChangedRequested value)? fullnameChanged,
    TResult? Function(PasswordChangedRequested value)? passwordChanged,
    TResult? Function(ConfirmPasswordChangedRequested value)?
        confirmPasswordChanged,
    TResult? Function(NewPasswordChangedRequested value)? newPasswordChanged,
    TResult? Function(ChangePasswordRequest value)? changePassword,
    TResult? Function(ImageChangedRequested value)? imageChanged,
    TResult? Function(LoadingRequested value)? loading,
    TResult? Function(UpdateUserRequest value)? updateUser,
    TResult? Function(GetUserRequest value)? getUser,
  }) {
    return imageChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PhoneNumberChangedRequested value)? phoneNumberChanged,
    TResult Function(FullnameChangedRequested value)? fullnameChanged,
    TResult Function(PasswordChangedRequested value)? passwordChanged,
    TResult Function(ConfirmPasswordChangedRequested value)?
        confirmPasswordChanged,
    TResult Function(NewPasswordChangedRequested value)? newPasswordChanged,
    TResult Function(ChangePasswordRequest value)? changePassword,
    TResult Function(ImageChangedRequested value)? imageChanged,
    TResult Function(LoadingRequested value)? loading,
    TResult Function(UpdateUserRequest value)? updateUser,
    TResult Function(GetUserRequest value)? getUser,
    required TResult orElse(),
  }) {
    if (imageChanged != null) {
      return imageChanged(this);
    }
    return orElse();
  }
}

abstract class ImageChangedRequested implements ProfileEvent {
  const factory ImageChangedRequested(final String image) =
      _$ImageChangedRequested;

  String get image;
  @JsonKey(ignore: true)
  _$$ImageChangedRequestedCopyWith<_$ImageChangedRequested> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadingRequestedCopyWith<$Res> {
  factory _$$LoadingRequestedCopyWith(
          _$LoadingRequested value, $Res Function(_$LoadingRequested) then) =
      __$$LoadingRequestedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingRequestedCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$LoadingRequested>
    implements _$$LoadingRequestedCopyWith<$Res> {
  __$$LoadingRequestedCopyWithImpl(
      _$LoadingRequested _value, $Res Function(_$LoadingRequested) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingRequested implements LoadingRequested {
  const _$LoadingRequested();

  @override
  String toString() {
    return 'ProfileEvent.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingRequested);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) phoneNumberChanged,
    required TResult Function(String fullName) fullnameChanged,
    required TResult Function(String text) passwordChanged,
    required TResult Function(String text) confirmPasswordChanged,
    required TResult Function(String text) newPasswordChanged,
    required TResult Function(String username) changePassword,
    required TResult Function(String image) imageChanged,
    required TResult Function() loading,
    required TResult Function() updateUser,
    required TResult Function(UserModel userModel) getUser,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phoneNumber)? phoneNumberChanged,
    TResult? Function(String fullName)? fullnameChanged,
    TResult? Function(String text)? passwordChanged,
    TResult? Function(String text)? confirmPasswordChanged,
    TResult? Function(String text)? newPasswordChanged,
    TResult? Function(String username)? changePassword,
    TResult? Function(String image)? imageChanged,
    TResult? Function()? loading,
    TResult? Function()? updateUser,
    TResult? Function(UserModel userModel)? getUser,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? phoneNumberChanged,
    TResult Function(String fullName)? fullnameChanged,
    TResult Function(String text)? passwordChanged,
    TResult Function(String text)? confirmPasswordChanged,
    TResult Function(String text)? newPasswordChanged,
    TResult Function(String username)? changePassword,
    TResult Function(String image)? imageChanged,
    TResult Function()? loading,
    TResult Function()? updateUser,
    TResult Function(UserModel userModel)? getUser,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PhoneNumberChangedRequested value)
        phoneNumberChanged,
    required TResult Function(FullnameChangedRequested value) fullnameChanged,
    required TResult Function(PasswordChangedRequested value) passwordChanged,
    required TResult Function(ConfirmPasswordChangedRequested value)
        confirmPasswordChanged,
    required TResult Function(NewPasswordChangedRequested value)
        newPasswordChanged,
    required TResult Function(ChangePasswordRequest value) changePassword,
    required TResult Function(ImageChangedRequested value) imageChanged,
    required TResult Function(LoadingRequested value) loading,
    required TResult Function(UpdateUserRequest value) updateUser,
    required TResult Function(GetUserRequest value) getUser,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PhoneNumberChangedRequested value)? phoneNumberChanged,
    TResult? Function(FullnameChangedRequested value)? fullnameChanged,
    TResult? Function(PasswordChangedRequested value)? passwordChanged,
    TResult? Function(ConfirmPasswordChangedRequested value)?
        confirmPasswordChanged,
    TResult? Function(NewPasswordChangedRequested value)? newPasswordChanged,
    TResult? Function(ChangePasswordRequest value)? changePassword,
    TResult? Function(ImageChangedRequested value)? imageChanged,
    TResult? Function(LoadingRequested value)? loading,
    TResult? Function(UpdateUserRequest value)? updateUser,
    TResult? Function(GetUserRequest value)? getUser,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PhoneNumberChangedRequested value)? phoneNumberChanged,
    TResult Function(FullnameChangedRequested value)? fullnameChanged,
    TResult Function(PasswordChangedRequested value)? passwordChanged,
    TResult Function(ConfirmPasswordChangedRequested value)?
        confirmPasswordChanged,
    TResult Function(NewPasswordChangedRequested value)? newPasswordChanged,
    TResult Function(ChangePasswordRequest value)? changePassword,
    TResult Function(ImageChangedRequested value)? imageChanged,
    TResult Function(LoadingRequested value)? loading,
    TResult Function(UpdateUserRequest value)? updateUser,
    TResult Function(GetUserRequest value)? getUser,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingRequested implements ProfileEvent {
  const factory LoadingRequested() = _$LoadingRequested;
}

/// @nodoc
abstract class _$$UpdateUserRequestCopyWith<$Res> {
  factory _$$UpdateUserRequestCopyWith(
          _$UpdateUserRequest value, $Res Function(_$UpdateUserRequest) then) =
      __$$UpdateUserRequestCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UpdateUserRequestCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$UpdateUserRequest>
    implements _$$UpdateUserRequestCopyWith<$Res> {
  __$$UpdateUserRequestCopyWithImpl(
      _$UpdateUserRequest _value, $Res Function(_$UpdateUserRequest) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UpdateUserRequest implements UpdateUserRequest {
  const _$UpdateUserRequest();

  @override
  String toString() {
    return 'ProfileEvent.updateUser()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UpdateUserRequest);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) phoneNumberChanged,
    required TResult Function(String fullName) fullnameChanged,
    required TResult Function(String text) passwordChanged,
    required TResult Function(String text) confirmPasswordChanged,
    required TResult Function(String text) newPasswordChanged,
    required TResult Function(String username) changePassword,
    required TResult Function(String image) imageChanged,
    required TResult Function() loading,
    required TResult Function() updateUser,
    required TResult Function(UserModel userModel) getUser,
  }) {
    return updateUser();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phoneNumber)? phoneNumberChanged,
    TResult? Function(String fullName)? fullnameChanged,
    TResult? Function(String text)? passwordChanged,
    TResult? Function(String text)? confirmPasswordChanged,
    TResult? Function(String text)? newPasswordChanged,
    TResult? Function(String username)? changePassword,
    TResult? Function(String image)? imageChanged,
    TResult? Function()? loading,
    TResult? Function()? updateUser,
    TResult? Function(UserModel userModel)? getUser,
  }) {
    return updateUser?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? phoneNumberChanged,
    TResult Function(String fullName)? fullnameChanged,
    TResult Function(String text)? passwordChanged,
    TResult Function(String text)? confirmPasswordChanged,
    TResult Function(String text)? newPasswordChanged,
    TResult Function(String username)? changePassword,
    TResult Function(String image)? imageChanged,
    TResult Function()? loading,
    TResult Function()? updateUser,
    TResult Function(UserModel userModel)? getUser,
    required TResult orElse(),
  }) {
    if (updateUser != null) {
      return updateUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PhoneNumberChangedRequested value)
        phoneNumberChanged,
    required TResult Function(FullnameChangedRequested value) fullnameChanged,
    required TResult Function(PasswordChangedRequested value) passwordChanged,
    required TResult Function(ConfirmPasswordChangedRequested value)
        confirmPasswordChanged,
    required TResult Function(NewPasswordChangedRequested value)
        newPasswordChanged,
    required TResult Function(ChangePasswordRequest value) changePassword,
    required TResult Function(ImageChangedRequested value) imageChanged,
    required TResult Function(LoadingRequested value) loading,
    required TResult Function(UpdateUserRequest value) updateUser,
    required TResult Function(GetUserRequest value) getUser,
  }) {
    return updateUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PhoneNumberChangedRequested value)? phoneNumberChanged,
    TResult? Function(FullnameChangedRequested value)? fullnameChanged,
    TResult? Function(PasswordChangedRequested value)? passwordChanged,
    TResult? Function(ConfirmPasswordChangedRequested value)?
        confirmPasswordChanged,
    TResult? Function(NewPasswordChangedRequested value)? newPasswordChanged,
    TResult? Function(ChangePasswordRequest value)? changePassword,
    TResult? Function(ImageChangedRequested value)? imageChanged,
    TResult? Function(LoadingRequested value)? loading,
    TResult? Function(UpdateUserRequest value)? updateUser,
    TResult? Function(GetUserRequest value)? getUser,
  }) {
    return updateUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PhoneNumberChangedRequested value)? phoneNumberChanged,
    TResult Function(FullnameChangedRequested value)? fullnameChanged,
    TResult Function(PasswordChangedRequested value)? passwordChanged,
    TResult Function(ConfirmPasswordChangedRequested value)?
        confirmPasswordChanged,
    TResult Function(NewPasswordChangedRequested value)? newPasswordChanged,
    TResult Function(ChangePasswordRequest value)? changePassword,
    TResult Function(ImageChangedRequested value)? imageChanged,
    TResult Function(LoadingRequested value)? loading,
    TResult Function(UpdateUserRequest value)? updateUser,
    TResult Function(GetUserRequest value)? getUser,
    required TResult orElse(),
  }) {
    if (updateUser != null) {
      return updateUser(this);
    }
    return orElse();
  }
}

abstract class UpdateUserRequest implements ProfileEvent {
  const factory UpdateUserRequest() = _$UpdateUserRequest;
}

/// @nodoc
abstract class _$$GetUserRequestCopyWith<$Res> {
  factory _$$GetUserRequestCopyWith(
          _$GetUserRequest value, $Res Function(_$GetUserRequest) then) =
      __$$GetUserRequestCopyWithImpl<$Res>;
  @useResult
  $Res call({UserModel userModel});

  $UserModelCopyWith<$Res> get userModel;
}

/// @nodoc
class __$$GetUserRequestCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$GetUserRequest>
    implements _$$GetUserRequestCopyWith<$Res> {
  __$$GetUserRequestCopyWithImpl(
      _$GetUserRequest _value, $Res Function(_$GetUserRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userModel = null,
  }) {
    return _then(_$GetUserRequest(
      null == userModel
          ? _value.userModel
          : userModel // ignore: cast_nullable_to_non_nullable
              as UserModel,
    ));
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

class _$GetUserRequest implements GetUserRequest {
  const _$GetUserRequest(this.userModel);

  @override
  final UserModel userModel;

  @override
  String toString() {
    return 'ProfileEvent.getUser(userModel: $userModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetUserRequest &&
            (identical(other.userModel, userModel) ||
                other.userModel == userModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetUserRequestCopyWith<_$GetUserRequest> get copyWith =>
      __$$GetUserRequestCopyWithImpl<_$GetUserRequest>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) phoneNumberChanged,
    required TResult Function(String fullName) fullnameChanged,
    required TResult Function(String text) passwordChanged,
    required TResult Function(String text) confirmPasswordChanged,
    required TResult Function(String text) newPasswordChanged,
    required TResult Function(String username) changePassword,
    required TResult Function(String image) imageChanged,
    required TResult Function() loading,
    required TResult Function() updateUser,
    required TResult Function(UserModel userModel) getUser,
  }) {
    return getUser(userModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phoneNumber)? phoneNumberChanged,
    TResult? Function(String fullName)? fullnameChanged,
    TResult? Function(String text)? passwordChanged,
    TResult? Function(String text)? confirmPasswordChanged,
    TResult? Function(String text)? newPasswordChanged,
    TResult? Function(String username)? changePassword,
    TResult? Function(String image)? imageChanged,
    TResult? Function()? loading,
    TResult? Function()? updateUser,
    TResult? Function(UserModel userModel)? getUser,
  }) {
    return getUser?.call(userModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? phoneNumberChanged,
    TResult Function(String fullName)? fullnameChanged,
    TResult Function(String text)? passwordChanged,
    TResult Function(String text)? confirmPasswordChanged,
    TResult Function(String text)? newPasswordChanged,
    TResult Function(String username)? changePassword,
    TResult Function(String image)? imageChanged,
    TResult Function()? loading,
    TResult Function()? updateUser,
    TResult Function(UserModel userModel)? getUser,
    required TResult orElse(),
  }) {
    if (getUser != null) {
      return getUser(userModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PhoneNumberChangedRequested value)
        phoneNumberChanged,
    required TResult Function(FullnameChangedRequested value) fullnameChanged,
    required TResult Function(PasswordChangedRequested value) passwordChanged,
    required TResult Function(ConfirmPasswordChangedRequested value)
        confirmPasswordChanged,
    required TResult Function(NewPasswordChangedRequested value)
        newPasswordChanged,
    required TResult Function(ChangePasswordRequest value) changePassword,
    required TResult Function(ImageChangedRequested value) imageChanged,
    required TResult Function(LoadingRequested value) loading,
    required TResult Function(UpdateUserRequest value) updateUser,
    required TResult Function(GetUserRequest value) getUser,
  }) {
    return getUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PhoneNumberChangedRequested value)? phoneNumberChanged,
    TResult? Function(FullnameChangedRequested value)? fullnameChanged,
    TResult? Function(PasswordChangedRequested value)? passwordChanged,
    TResult? Function(ConfirmPasswordChangedRequested value)?
        confirmPasswordChanged,
    TResult? Function(NewPasswordChangedRequested value)? newPasswordChanged,
    TResult? Function(ChangePasswordRequest value)? changePassword,
    TResult? Function(ImageChangedRequested value)? imageChanged,
    TResult? Function(LoadingRequested value)? loading,
    TResult? Function(UpdateUserRequest value)? updateUser,
    TResult? Function(GetUserRequest value)? getUser,
  }) {
    return getUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PhoneNumberChangedRequested value)? phoneNumberChanged,
    TResult Function(FullnameChangedRequested value)? fullnameChanged,
    TResult Function(PasswordChangedRequested value)? passwordChanged,
    TResult Function(ConfirmPasswordChangedRequested value)?
        confirmPasswordChanged,
    TResult Function(NewPasswordChangedRequested value)? newPasswordChanged,
    TResult Function(ChangePasswordRequest value)? changePassword,
    TResult Function(ImageChangedRequested value)? imageChanged,
    TResult Function(LoadingRequested value)? loading,
    TResult Function(UpdateUserRequest value)? updateUser,
    TResult Function(GetUserRequest value)? getUser,
    required TResult orElse(),
  }) {
    if (getUser != null) {
      return getUser(this);
    }
    return orElse();
  }
}

abstract class GetUserRequest implements ProfileEvent {
  const factory GetUserRequest(final UserModel userModel) = _$GetUserRequest;

  UserModel get userModel;
  @JsonKey(ignore: true)
  _$$GetUserRequestCopyWith<_$GetUserRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ProfileState {
  bool get isLoading => throw _privateConstructorUsedError;
  LoadStatusEnum get loadStatus => throw _privateConstructorUsedError;
  String get error => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  String get fullName => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String get confirmPassword => throw _privateConstructorUsedError;
  String get newPassword => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  bool get updateSuccess => throw _privateConstructorUsedError;
  bool get changePasswordSuccess => throw _privateConstructorUsedError;
  UserModel? get userModel => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProfileStateCopyWith<ProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileStateCopyWith<$Res> {
  factory $ProfileStateCopyWith(
          ProfileState value, $Res Function(ProfileState) then) =
      _$ProfileStateCopyWithImpl<$Res, ProfileState>;
  @useResult
  $Res call(
      {bool isLoading,
      LoadStatusEnum loadStatus,
      String error,
      String email,
      String phone,
      String fullName,
      String imageUrl,
      String password,
      String confirmPassword,
      String newPassword,
      String username,
      bool updateSuccess,
      bool changePasswordSuccess,
      UserModel? userModel});

  $UserModelCopyWith<$Res>? get userModel;
}

/// @nodoc
class _$ProfileStateCopyWithImpl<$Res, $Val extends ProfileState>
    implements $ProfileStateCopyWith<$Res> {
  _$ProfileStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? loadStatus = null,
    Object? error = null,
    Object? email = null,
    Object? phone = null,
    Object? fullName = null,
    Object? imageUrl = null,
    Object? password = null,
    Object? confirmPassword = null,
    Object? newPassword = null,
    Object? username = null,
    Object? updateSuccess = null,
    Object? changePasswordSuccess = null,
    Object? userModel = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      loadStatus: null == loadStatus
          ? _value.loadStatus
          : loadStatus // ignore: cast_nullable_to_non_nullable
              as LoadStatusEnum,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      confirmPassword: null == confirmPassword
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as String,
      newPassword: null == newPassword
          ? _value.newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      updateSuccess: null == updateSuccess
          ? _value.updateSuccess
          : updateSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      changePasswordSuccess: null == changePasswordSuccess
          ? _value.changePasswordSuccess
          : changePasswordSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      userModel: freezed == userModel
          ? _value.userModel
          : userModel // ignore: cast_nullable_to_non_nullable
              as UserModel?,
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
}

/// @nodoc
abstract class _$$_ProfileStateCopyWith<$Res>
    implements $ProfileStateCopyWith<$Res> {
  factory _$$_ProfileStateCopyWith(
          _$_ProfileState value, $Res Function(_$_ProfileState) then) =
      __$$_ProfileStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      LoadStatusEnum loadStatus,
      String error,
      String email,
      String phone,
      String fullName,
      String imageUrl,
      String password,
      String confirmPassword,
      String newPassword,
      String username,
      bool updateSuccess,
      bool changePasswordSuccess,
      UserModel? userModel});

  @override
  $UserModelCopyWith<$Res>? get userModel;
}

/// @nodoc
class __$$_ProfileStateCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$_ProfileState>
    implements _$$_ProfileStateCopyWith<$Res> {
  __$$_ProfileStateCopyWithImpl(
      _$_ProfileState _value, $Res Function(_$_ProfileState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? loadStatus = null,
    Object? error = null,
    Object? email = null,
    Object? phone = null,
    Object? fullName = null,
    Object? imageUrl = null,
    Object? password = null,
    Object? confirmPassword = null,
    Object? newPassword = null,
    Object? username = null,
    Object? updateSuccess = null,
    Object? changePasswordSuccess = null,
    Object? userModel = freezed,
  }) {
    return _then(_$_ProfileState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      loadStatus: null == loadStatus
          ? _value.loadStatus
          : loadStatus // ignore: cast_nullable_to_non_nullable
              as LoadStatusEnum,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      confirmPassword: null == confirmPassword
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as String,
      newPassword: null == newPassword
          ? _value.newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      updateSuccess: null == updateSuccess
          ? _value.updateSuccess
          : updateSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      changePasswordSuccess: null == changePasswordSuccess
          ? _value.changePasswordSuccess
          : changePasswordSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      userModel: freezed == userModel
          ? _value.userModel
          : userModel // ignore: cast_nullable_to_non_nullable
              as UserModel?,
    ));
  }
}

/// @nodoc

class _$_ProfileState implements _ProfileState {
  const _$_ProfileState(
      {this.isLoading = false,
      this.loadStatus = LoadStatusEnum.notLoad,
      this.error = "",
      this.email = "",
      this.phone = "",
      this.fullName = "",
      this.imageUrl = "",
      this.password = "",
      this.confirmPassword = "",
      this.newPassword = "",
      this.username = "",
      this.updateSuccess = false,
      this.changePasswordSuccess = false,
      this.userModel});

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final LoadStatusEnum loadStatus;
  @override
  @JsonKey()
  final String error;
  @override
  @JsonKey()
  final String email;
  @override
  @JsonKey()
  final String phone;
  @override
  @JsonKey()
  final String fullName;
  @override
  @JsonKey()
  final String imageUrl;
  @override
  @JsonKey()
  final String password;
  @override
  @JsonKey()
  final String confirmPassword;
  @override
  @JsonKey()
  final String newPassword;
  @override
  @JsonKey()
  final String username;
  @override
  @JsonKey()
  final bool updateSuccess;
  @override
  @JsonKey()
  final bool changePasswordSuccess;
  @override
  final UserModel? userModel;

  @override
  String toString() {
    return 'ProfileState(isLoading: $isLoading, loadStatus: $loadStatus, error: $error, email: $email, phone: $phone, fullName: $fullName, imageUrl: $imageUrl, password: $password, confirmPassword: $confirmPassword, newPassword: $newPassword, username: $username, updateSuccess: $updateSuccess, changePasswordSuccess: $changePasswordSuccess, userModel: $userModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProfileState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.loadStatus, loadStatus) ||
                other.loadStatus == loadStatus) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.confirmPassword, confirmPassword) ||
                other.confirmPassword == confirmPassword) &&
            (identical(other.newPassword, newPassword) ||
                other.newPassword == newPassword) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.updateSuccess, updateSuccess) ||
                other.updateSuccess == updateSuccess) &&
            (identical(other.changePasswordSuccess, changePasswordSuccess) ||
                other.changePasswordSuccess == changePasswordSuccess) &&
            (identical(other.userModel, userModel) ||
                other.userModel == userModel));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      loadStatus,
      error,
      email,
      phone,
      fullName,
      imageUrl,
      password,
      confirmPassword,
      newPassword,
      username,
      updateSuccess,
      changePasswordSuccess,
      userModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProfileStateCopyWith<_$_ProfileState> get copyWith =>
      __$$_ProfileStateCopyWithImpl<_$_ProfileState>(this, _$identity);
}

abstract class _ProfileState implements ProfileState {
  const factory _ProfileState(
      {final bool isLoading,
      final LoadStatusEnum loadStatus,
      final String error,
      final String email,
      final String phone,
      final String fullName,
      final String imageUrl,
      final String password,
      final String confirmPassword,
      final String newPassword,
      final String username,
      final bool updateSuccess,
      final bool changePasswordSuccess,
      final UserModel? userModel}) = _$_ProfileState;

  @override
  bool get isLoading;
  @override
  LoadStatusEnum get loadStatus;
  @override
  String get error;
  @override
  String get email;
  @override
  String get phone;
  @override
  String get fullName;
  @override
  String get imageUrl;
  @override
  String get password;
  @override
  String get confirmPassword;
  @override
  String get newPassword;
  @override
  String get username;
  @override
  bool get updateSuccess;
  @override
  bool get changePasswordSuccess;
  @override
  UserModel? get userModel;
  @override
  @JsonKey(ignore: true)
  _$$_ProfileStateCopyWith<_$_ProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}
