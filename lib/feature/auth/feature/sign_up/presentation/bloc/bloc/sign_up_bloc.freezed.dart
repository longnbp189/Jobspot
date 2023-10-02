// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_up_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SignUpEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String password) passwordChanged,
    required TResult Function(String confirmPassword) confirmPasswordChanged,
    required TResult Function(String fullName) fullnameChanged,
    required TResult Function(String phoneNumber) phoneNumberChanged,
    required TResult Function(String email) emailChanged,
    required TResult Function() signUp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String confirmPassword)? confirmPasswordChanged,
    TResult? Function(String fullName)? fullnameChanged,
    TResult? Function(String phoneNumber)? phoneNumberChanged,
    TResult? Function(String email)? emailChanged,
    TResult? Function()? signUp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String password)? passwordChanged,
    TResult Function(String confirmPassword)? confirmPasswordChanged,
    TResult Function(String fullName)? fullnameChanged,
    TResult Function(String phoneNumber)? phoneNumberChanged,
    TResult Function(String email)? emailChanged,
    TResult Function()? signUp,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PasswordChangedRequested value) passwordChanged,
    required TResult Function(ConfirmPasswordChangedRequested value)
        confirmPasswordChanged,
    required TResult Function(FullnameChangedRequested value) fullnameChanged,
    required TResult Function(PhoneNumberChangedRequested value)
        phoneNumberChanged,
    required TResult Function(EmailChangedRequested value) emailChanged,
    required TResult Function(SignUp value) signUp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PasswordChangedRequested value)? passwordChanged,
    TResult? Function(ConfirmPasswordChangedRequested value)?
        confirmPasswordChanged,
    TResult? Function(FullnameChangedRequested value)? fullnameChanged,
    TResult? Function(PhoneNumberChangedRequested value)? phoneNumberChanged,
    TResult? Function(EmailChangedRequested value)? emailChanged,
    TResult? Function(SignUp value)? signUp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PasswordChangedRequested value)? passwordChanged,
    TResult Function(ConfirmPasswordChangedRequested value)?
        confirmPasswordChanged,
    TResult Function(FullnameChangedRequested value)? fullnameChanged,
    TResult Function(PhoneNumberChangedRequested value)? phoneNumberChanged,
    TResult Function(EmailChangedRequested value)? emailChanged,
    TResult Function(SignUp value)? signUp,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpEventCopyWith<$Res> {
  factory $SignUpEventCopyWith(
          SignUpEvent value, $Res Function(SignUpEvent) then) =
      _$SignUpEventCopyWithImpl<$Res, SignUpEvent>;
}

/// @nodoc
class _$SignUpEventCopyWithImpl<$Res, $Val extends SignUpEvent>
    implements $SignUpEventCopyWith<$Res> {
  _$SignUpEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$PasswordChangedRequestedCopyWith<$Res> {
  factory _$$PasswordChangedRequestedCopyWith(_$PasswordChangedRequested value,
          $Res Function(_$PasswordChangedRequested) then) =
      __$$PasswordChangedRequestedCopyWithImpl<$Res>;
  @useResult
  $Res call({String password});
}

/// @nodoc
class __$$PasswordChangedRequestedCopyWithImpl<$Res>
    extends _$SignUpEventCopyWithImpl<$Res, _$PasswordChangedRequested>
    implements _$$PasswordChangedRequestedCopyWith<$Res> {
  __$$PasswordChangedRequestedCopyWithImpl(_$PasswordChangedRequested _value,
      $Res Function(_$PasswordChangedRequested) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = null,
  }) {
    return _then(_$PasswordChangedRequested(
      null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PasswordChangedRequested implements PasswordChangedRequested {
  const _$PasswordChangedRequested(this.password);

  @override
  final String password;

  @override
  String toString() {
    return 'SignUpEvent.passwordChanged(password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PasswordChangedRequested &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, password);

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
    required TResult Function(String password) passwordChanged,
    required TResult Function(String confirmPassword) confirmPasswordChanged,
    required TResult Function(String fullName) fullnameChanged,
    required TResult Function(String phoneNumber) phoneNumberChanged,
    required TResult Function(String email) emailChanged,
    required TResult Function() signUp,
  }) {
    return passwordChanged(password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String confirmPassword)? confirmPasswordChanged,
    TResult? Function(String fullName)? fullnameChanged,
    TResult? Function(String phoneNumber)? phoneNumberChanged,
    TResult? Function(String email)? emailChanged,
    TResult? Function()? signUp,
  }) {
    return passwordChanged?.call(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String password)? passwordChanged,
    TResult Function(String confirmPassword)? confirmPasswordChanged,
    TResult Function(String fullName)? fullnameChanged,
    TResult Function(String phoneNumber)? phoneNumberChanged,
    TResult Function(String email)? emailChanged,
    TResult Function()? signUp,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PasswordChangedRequested value) passwordChanged,
    required TResult Function(ConfirmPasswordChangedRequested value)
        confirmPasswordChanged,
    required TResult Function(FullnameChangedRequested value) fullnameChanged,
    required TResult Function(PhoneNumberChangedRequested value)
        phoneNumberChanged,
    required TResult Function(EmailChangedRequested value) emailChanged,
    required TResult Function(SignUp value) signUp,
  }) {
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PasswordChangedRequested value)? passwordChanged,
    TResult? Function(ConfirmPasswordChangedRequested value)?
        confirmPasswordChanged,
    TResult? Function(FullnameChangedRequested value)? fullnameChanged,
    TResult? Function(PhoneNumberChangedRequested value)? phoneNumberChanged,
    TResult? Function(EmailChangedRequested value)? emailChanged,
    TResult? Function(SignUp value)? signUp,
  }) {
    return passwordChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PasswordChangedRequested value)? passwordChanged,
    TResult Function(ConfirmPasswordChangedRequested value)?
        confirmPasswordChanged,
    TResult Function(FullnameChangedRequested value)? fullnameChanged,
    TResult Function(PhoneNumberChangedRequested value)? phoneNumberChanged,
    TResult Function(EmailChangedRequested value)? emailChanged,
    TResult Function(SignUp value)? signUp,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class PasswordChangedRequested implements SignUpEvent {
  const factory PasswordChangedRequested(final String password) =
      _$PasswordChangedRequested;

  String get password;
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
  $Res call({String confirmPassword});
}

/// @nodoc
class __$$ConfirmPasswordChangedRequestedCopyWithImpl<$Res>
    extends _$SignUpEventCopyWithImpl<$Res, _$ConfirmPasswordChangedRequested>
    implements _$$ConfirmPasswordChangedRequestedCopyWith<$Res> {
  __$$ConfirmPasswordChangedRequestedCopyWithImpl(
      _$ConfirmPasswordChangedRequested _value,
      $Res Function(_$ConfirmPasswordChangedRequested) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? confirmPassword = null,
  }) {
    return _then(_$ConfirmPasswordChangedRequested(
      null == confirmPassword
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ConfirmPasswordChangedRequested
    implements ConfirmPasswordChangedRequested {
  const _$ConfirmPasswordChangedRequested(this.confirmPassword);

  @override
  final String confirmPassword;

  @override
  String toString() {
    return 'SignUpEvent.confirmPasswordChanged(confirmPassword: $confirmPassword)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConfirmPasswordChangedRequested &&
            (identical(other.confirmPassword, confirmPassword) ||
                other.confirmPassword == confirmPassword));
  }

  @override
  int get hashCode => Object.hash(runtimeType, confirmPassword);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConfirmPasswordChangedRequestedCopyWith<_$ConfirmPasswordChangedRequested>
      get copyWith => __$$ConfirmPasswordChangedRequestedCopyWithImpl<
          _$ConfirmPasswordChangedRequested>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String password) passwordChanged,
    required TResult Function(String confirmPassword) confirmPasswordChanged,
    required TResult Function(String fullName) fullnameChanged,
    required TResult Function(String phoneNumber) phoneNumberChanged,
    required TResult Function(String email) emailChanged,
    required TResult Function() signUp,
  }) {
    return confirmPasswordChanged(confirmPassword);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String confirmPassword)? confirmPasswordChanged,
    TResult? Function(String fullName)? fullnameChanged,
    TResult? Function(String phoneNumber)? phoneNumberChanged,
    TResult? Function(String email)? emailChanged,
    TResult? Function()? signUp,
  }) {
    return confirmPasswordChanged?.call(confirmPassword);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String password)? passwordChanged,
    TResult Function(String confirmPassword)? confirmPasswordChanged,
    TResult Function(String fullName)? fullnameChanged,
    TResult Function(String phoneNumber)? phoneNumberChanged,
    TResult Function(String email)? emailChanged,
    TResult Function()? signUp,
    required TResult orElse(),
  }) {
    if (confirmPasswordChanged != null) {
      return confirmPasswordChanged(confirmPassword);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PasswordChangedRequested value) passwordChanged,
    required TResult Function(ConfirmPasswordChangedRequested value)
        confirmPasswordChanged,
    required TResult Function(FullnameChangedRequested value) fullnameChanged,
    required TResult Function(PhoneNumberChangedRequested value)
        phoneNumberChanged,
    required TResult Function(EmailChangedRequested value) emailChanged,
    required TResult Function(SignUp value) signUp,
  }) {
    return confirmPasswordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PasswordChangedRequested value)? passwordChanged,
    TResult? Function(ConfirmPasswordChangedRequested value)?
        confirmPasswordChanged,
    TResult? Function(FullnameChangedRequested value)? fullnameChanged,
    TResult? Function(PhoneNumberChangedRequested value)? phoneNumberChanged,
    TResult? Function(EmailChangedRequested value)? emailChanged,
    TResult? Function(SignUp value)? signUp,
  }) {
    return confirmPasswordChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PasswordChangedRequested value)? passwordChanged,
    TResult Function(ConfirmPasswordChangedRequested value)?
        confirmPasswordChanged,
    TResult Function(FullnameChangedRequested value)? fullnameChanged,
    TResult Function(PhoneNumberChangedRequested value)? phoneNumberChanged,
    TResult Function(EmailChangedRequested value)? emailChanged,
    TResult Function(SignUp value)? signUp,
    required TResult orElse(),
  }) {
    if (confirmPasswordChanged != null) {
      return confirmPasswordChanged(this);
    }
    return orElse();
  }
}

abstract class ConfirmPasswordChangedRequested implements SignUpEvent {
  const factory ConfirmPasswordChangedRequested(final String confirmPassword) =
      _$ConfirmPasswordChangedRequested;

  String get confirmPassword;
  @JsonKey(ignore: true)
  _$$ConfirmPasswordChangedRequestedCopyWith<_$ConfirmPasswordChangedRequested>
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
    extends _$SignUpEventCopyWithImpl<$Res, _$FullnameChangedRequested>
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
    return 'SignUpEvent.fullnameChanged(fullName: $fullName)';
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
    required TResult Function(String password) passwordChanged,
    required TResult Function(String confirmPassword) confirmPasswordChanged,
    required TResult Function(String fullName) fullnameChanged,
    required TResult Function(String phoneNumber) phoneNumberChanged,
    required TResult Function(String email) emailChanged,
    required TResult Function() signUp,
  }) {
    return fullnameChanged(fullName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String confirmPassword)? confirmPasswordChanged,
    TResult? Function(String fullName)? fullnameChanged,
    TResult? Function(String phoneNumber)? phoneNumberChanged,
    TResult? Function(String email)? emailChanged,
    TResult? Function()? signUp,
  }) {
    return fullnameChanged?.call(fullName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String password)? passwordChanged,
    TResult Function(String confirmPassword)? confirmPasswordChanged,
    TResult Function(String fullName)? fullnameChanged,
    TResult Function(String phoneNumber)? phoneNumberChanged,
    TResult Function(String email)? emailChanged,
    TResult Function()? signUp,
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
    required TResult Function(PasswordChangedRequested value) passwordChanged,
    required TResult Function(ConfirmPasswordChangedRequested value)
        confirmPasswordChanged,
    required TResult Function(FullnameChangedRequested value) fullnameChanged,
    required TResult Function(PhoneNumberChangedRequested value)
        phoneNumberChanged,
    required TResult Function(EmailChangedRequested value) emailChanged,
    required TResult Function(SignUp value) signUp,
  }) {
    return fullnameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PasswordChangedRequested value)? passwordChanged,
    TResult? Function(ConfirmPasswordChangedRequested value)?
        confirmPasswordChanged,
    TResult? Function(FullnameChangedRequested value)? fullnameChanged,
    TResult? Function(PhoneNumberChangedRequested value)? phoneNumberChanged,
    TResult? Function(EmailChangedRequested value)? emailChanged,
    TResult? Function(SignUp value)? signUp,
  }) {
    return fullnameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PasswordChangedRequested value)? passwordChanged,
    TResult Function(ConfirmPasswordChangedRequested value)?
        confirmPasswordChanged,
    TResult Function(FullnameChangedRequested value)? fullnameChanged,
    TResult Function(PhoneNumberChangedRequested value)? phoneNumberChanged,
    TResult Function(EmailChangedRequested value)? emailChanged,
    TResult Function(SignUp value)? signUp,
    required TResult orElse(),
  }) {
    if (fullnameChanged != null) {
      return fullnameChanged(this);
    }
    return orElse();
  }
}

abstract class FullnameChangedRequested implements SignUpEvent {
  const factory FullnameChangedRequested(final String fullName) =
      _$FullnameChangedRequested;

  String get fullName;
  @JsonKey(ignore: true)
  _$$FullnameChangedRequestedCopyWith<_$FullnameChangedRequested>
      get copyWith => throw _privateConstructorUsedError;
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
    extends _$SignUpEventCopyWithImpl<$Res, _$PhoneNumberChangedRequested>
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
    return 'SignUpEvent.phoneNumberChanged(phoneNumber: $phoneNumber)';
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
    required TResult Function(String password) passwordChanged,
    required TResult Function(String confirmPassword) confirmPasswordChanged,
    required TResult Function(String fullName) fullnameChanged,
    required TResult Function(String phoneNumber) phoneNumberChanged,
    required TResult Function(String email) emailChanged,
    required TResult Function() signUp,
  }) {
    return phoneNumberChanged(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String confirmPassword)? confirmPasswordChanged,
    TResult? Function(String fullName)? fullnameChanged,
    TResult? Function(String phoneNumber)? phoneNumberChanged,
    TResult? Function(String email)? emailChanged,
    TResult? Function()? signUp,
  }) {
    return phoneNumberChanged?.call(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String password)? passwordChanged,
    TResult Function(String confirmPassword)? confirmPasswordChanged,
    TResult Function(String fullName)? fullnameChanged,
    TResult Function(String phoneNumber)? phoneNumberChanged,
    TResult Function(String email)? emailChanged,
    TResult Function()? signUp,
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
    required TResult Function(PasswordChangedRequested value) passwordChanged,
    required TResult Function(ConfirmPasswordChangedRequested value)
        confirmPasswordChanged,
    required TResult Function(FullnameChangedRequested value) fullnameChanged,
    required TResult Function(PhoneNumberChangedRequested value)
        phoneNumberChanged,
    required TResult Function(EmailChangedRequested value) emailChanged,
    required TResult Function(SignUp value) signUp,
  }) {
    return phoneNumberChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PasswordChangedRequested value)? passwordChanged,
    TResult? Function(ConfirmPasswordChangedRequested value)?
        confirmPasswordChanged,
    TResult? Function(FullnameChangedRequested value)? fullnameChanged,
    TResult? Function(PhoneNumberChangedRequested value)? phoneNumberChanged,
    TResult? Function(EmailChangedRequested value)? emailChanged,
    TResult? Function(SignUp value)? signUp,
  }) {
    return phoneNumberChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PasswordChangedRequested value)? passwordChanged,
    TResult Function(ConfirmPasswordChangedRequested value)?
        confirmPasswordChanged,
    TResult Function(FullnameChangedRequested value)? fullnameChanged,
    TResult Function(PhoneNumberChangedRequested value)? phoneNumberChanged,
    TResult Function(EmailChangedRequested value)? emailChanged,
    TResult Function(SignUp value)? signUp,
    required TResult orElse(),
  }) {
    if (phoneNumberChanged != null) {
      return phoneNumberChanged(this);
    }
    return orElse();
  }
}

abstract class PhoneNumberChangedRequested implements SignUpEvent {
  const factory PhoneNumberChangedRequested(final String phoneNumber) =
      _$PhoneNumberChangedRequested;

  String get phoneNumber;
  @JsonKey(ignore: true)
  _$$PhoneNumberChangedRequestedCopyWith<_$PhoneNumberChangedRequested>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EmailChangedRequestedCopyWith<$Res> {
  factory _$$EmailChangedRequestedCopyWith(_$EmailChangedRequested value,
          $Res Function(_$EmailChangedRequested) then) =
      __$$EmailChangedRequestedCopyWithImpl<$Res>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$EmailChangedRequestedCopyWithImpl<$Res>
    extends _$SignUpEventCopyWithImpl<$Res, _$EmailChangedRequested>
    implements _$$EmailChangedRequestedCopyWith<$Res> {
  __$$EmailChangedRequestedCopyWithImpl(_$EmailChangedRequested _value,
      $Res Function(_$EmailChangedRequested) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$EmailChangedRequested(
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EmailChangedRequested implements EmailChangedRequested {
  const _$EmailChangedRequested(this.email);

  @override
  final String email;

  @override
  String toString() {
    return 'SignUpEvent.emailChanged(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmailChangedRequested &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EmailChangedRequestedCopyWith<_$EmailChangedRequested> get copyWith =>
      __$$EmailChangedRequestedCopyWithImpl<_$EmailChangedRequested>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String password) passwordChanged,
    required TResult Function(String confirmPassword) confirmPasswordChanged,
    required TResult Function(String fullName) fullnameChanged,
    required TResult Function(String phoneNumber) phoneNumberChanged,
    required TResult Function(String email) emailChanged,
    required TResult Function() signUp,
  }) {
    return emailChanged(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String confirmPassword)? confirmPasswordChanged,
    TResult? Function(String fullName)? fullnameChanged,
    TResult? Function(String phoneNumber)? phoneNumberChanged,
    TResult? Function(String email)? emailChanged,
    TResult? Function()? signUp,
  }) {
    return emailChanged?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String password)? passwordChanged,
    TResult Function(String confirmPassword)? confirmPasswordChanged,
    TResult Function(String fullName)? fullnameChanged,
    TResult Function(String phoneNumber)? phoneNumberChanged,
    TResult Function(String email)? emailChanged,
    TResult Function()? signUp,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PasswordChangedRequested value) passwordChanged,
    required TResult Function(ConfirmPasswordChangedRequested value)
        confirmPasswordChanged,
    required TResult Function(FullnameChangedRequested value) fullnameChanged,
    required TResult Function(PhoneNumberChangedRequested value)
        phoneNumberChanged,
    required TResult Function(EmailChangedRequested value) emailChanged,
    required TResult Function(SignUp value) signUp,
  }) {
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PasswordChangedRequested value)? passwordChanged,
    TResult? Function(ConfirmPasswordChangedRequested value)?
        confirmPasswordChanged,
    TResult? Function(FullnameChangedRequested value)? fullnameChanged,
    TResult? Function(PhoneNumberChangedRequested value)? phoneNumberChanged,
    TResult? Function(EmailChangedRequested value)? emailChanged,
    TResult? Function(SignUp value)? signUp,
  }) {
    return emailChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PasswordChangedRequested value)? passwordChanged,
    TResult Function(ConfirmPasswordChangedRequested value)?
        confirmPasswordChanged,
    TResult Function(FullnameChangedRequested value)? fullnameChanged,
    TResult Function(PhoneNumberChangedRequested value)? phoneNumberChanged,
    TResult Function(EmailChangedRequested value)? emailChanged,
    TResult Function(SignUp value)? signUp,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class EmailChangedRequested implements SignUpEvent {
  const factory EmailChangedRequested(final String email) =
      _$EmailChangedRequested;

  String get email;
  @JsonKey(ignore: true)
  _$$EmailChangedRequestedCopyWith<_$EmailChangedRequested> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignUpCopyWith<$Res> {
  factory _$$SignUpCopyWith(_$SignUp value, $Res Function(_$SignUp) then) =
      __$$SignUpCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignUpCopyWithImpl<$Res>
    extends _$SignUpEventCopyWithImpl<$Res, _$SignUp>
    implements _$$SignUpCopyWith<$Res> {
  __$$SignUpCopyWithImpl(_$SignUp _value, $Res Function(_$SignUp) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SignUp implements SignUp {
  const _$SignUp();

  @override
  String toString() {
    return 'SignUpEvent.signUp()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SignUp);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String password) passwordChanged,
    required TResult Function(String confirmPassword) confirmPasswordChanged,
    required TResult Function(String fullName) fullnameChanged,
    required TResult Function(String phoneNumber) phoneNumberChanged,
    required TResult Function(String email) emailChanged,
    required TResult Function() signUp,
  }) {
    return signUp();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String confirmPassword)? confirmPasswordChanged,
    TResult? Function(String fullName)? fullnameChanged,
    TResult? Function(String phoneNumber)? phoneNumberChanged,
    TResult? Function(String email)? emailChanged,
    TResult? Function()? signUp,
  }) {
    return signUp?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String password)? passwordChanged,
    TResult Function(String confirmPassword)? confirmPasswordChanged,
    TResult Function(String fullName)? fullnameChanged,
    TResult Function(String phoneNumber)? phoneNumberChanged,
    TResult Function(String email)? emailChanged,
    TResult Function()? signUp,
    required TResult orElse(),
  }) {
    if (signUp != null) {
      return signUp();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PasswordChangedRequested value) passwordChanged,
    required TResult Function(ConfirmPasswordChangedRequested value)
        confirmPasswordChanged,
    required TResult Function(FullnameChangedRequested value) fullnameChanged,
    required TResult Function(PhoneNumberChangedRequested value)
        phoneNumberChanged,
    required TResult Function(EmailChangedRequested value) emailChanged,
    required TResult Function(SignUp value) signUp,
  }) {
    return signUp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PasswordChangedRequested value)? passwordChanged,
    TResult? Function(ConfirmPasswordChangedRequested value)?
        confirmPasswordChanged,
    TResult? Function(FullnameChangedRequested value)? fullnameChanged,
    TResult? Function(PhoneNumberChangedRequested value)? phoneNumberChanged,
    TResult? Function(EmailChangedRequested value)? emailChanged,
    TResult? Function(SignUp value)? signUp,
  }) {
    return signUp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PasswordChangedRequested value)? passwordChanged,
    TResult Function(ConfirmPasswordChangedRequested value)?
        confirmPasswordChanged,
    TResult Function(FullnameChangedRequested value)? fullnameChanged,
    TResult Function(PhoneNumberChangedRequested value)? phoneNumberChanged,
    TResult Function(EmailChangedRequested value)? emailChanged,
    TResult Function(SignUp value)? signUp,
    required TResult orElse(),
  }) {
    if (signUp != null) {
      return signUp(this);
    }
    return orElse();
  }
}

abstract class SignUp implements SignUpEvent {
  const factory SignUp() = _$SignUp;
}

/// @nodoc
mixin _$SignUpState {
  UserModel? get user => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  LoadStatusEnum get loadStatus => throw _privateConstructorUsedError;
  String get error => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String get forgotEmail => throw _privateConstructorUsedError;
  String get confirmPassword => throw _privateConstructorUsedError;
  String get fullName => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  bool get sendEmailSuccess => throw _privateConstructorUsedError;
  bool? get signUpSuccess => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignUpStateCopyWith<SignUpState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpStateCopyWith<$Res> {
  factory $SignUpStateCopyWith(
          SignUpState value, $Res Function(SignUpState) then) =
      _$SignUpStateCopyWithImpl<$Res, SignUpState>;
  @useResult
  $Res call(
      {UserModel? user,
      bool isLoading,
      LoadStatusEnum loadStatus,
      String error,
      String email,
      String password,
      String forgotEmail,
      String confirmPassword,
      String fullName,
      String phone,
      bool sendEmailSuccess,
      bool? signUpSuccess});

  $UserModelCopyWith<$Res>? get user;
}

/// @nodoc
class _$SignUpStateCopyWithImpl<$Res, $Val extends SignUpState>
    implements $SignUpStateCopyWith<$Res> {
  _$SignUpStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? isLoading = null,
    Object? loadStatus = null,
    Object? error = null,
    Object? email = null,
    Object? password = null,
    Object? forgotEmail = null,
    Object? confirmPassword = null,
    Object? fullName = null,
    Object? phone = null,
    Object? sendEmailSuccess = null,
    Object? signUpSuccess = freezed,
  }) {
    return _then(_value.copyWith(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel?,
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
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      forgotEmail: null == forgotEmail
          ? _value.forgotEmail
          : forgotEmail // ignore: cast_nullable_to_non_nullable
              as String,
      confirmPassword: null == confirmPassword
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      sendEmailSuccess: null == sendEmailSuccess
          ? _value.sendEmailSuccess
          : sendEmailSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      signUpSuccess: freezed == signUpSuccess
          ? _value.signUpSuccess
          : signUpSuccess // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
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
abstract class _$$_SignUpStateCopyWith<$Res>
    implements $SignUpStateCopyWith<$Res> {
  factory _$$_SignUpStateCopyWith(
          _$_SignUpState value, $Res Function(_$_SignUpState) then) =
      __$$_SignUpStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UserModel? user,
      bool isLoading,
      LoadStatusEnum loadStatus,
      String error,
      String email,
      String password,
      String forgotEmail,
      String confirmPassword,
      String fullName,
      String phone,
      bool sendEmailSuccess,
      bool? signUpSuccess});

  @override
  $UserModelCopyWith<$Res>? get user;
}

/// @nodoc
class __$$_SignUpStateCopyWithImpl<$Res>
    extends _$SignUpStateCopyWithImpl<$Res, _$_SignUpState>
    implements _$$_SignUpStateCopyWith<$Res> {
  __$$_SignUpStateCopyWithImpl(
      _$_SignUpState _value, $Res Function(_$_SignUpState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? isLoading = null,
    Object? loadStatus = null,
    Object? error = null,
    Object? email = null,
    Object? password = null,
    Object? forgotEmail = null,
    Object? confirmPassword = null,
    Object? fullName = null,
    Object? phone = null,
    Object? sendEmailSuccess = null,
    Object? signUpSuccess = freezed,
  }) {
    return _then(_$_SignUpState(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel?,
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
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      forgotEmail: null == forgotEmail
          ? _value.forgotEmail
          : forgotEmail // ignore: cast_nullable_to_non_nullable
              as String,
      confirmPassword: null == confirmPassword
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      sendEmailSuccess: null == sendEmailSuccess
          ? _value.sendEmailSuccess
          : sendEmailSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      signUpSuccess: freezed == signUpSuccess
          ? _value.signUpSuccess
          : signUpSuccess // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$_SignUpState implements _SignUpState {
  const _$_SignUpState(
      {this.user,
      this.isLoading = false,
      this.loadStatus = LoadStatusEnum.notLoad,
      this.error = "",
      this.email = "",
      this.password = "",
      this.forgotEmail = "",
      this.confirmPassword = "",
      this.fullName = "",
      this.phone = "",
      this.sendEmailSuccess = false,
      this.signUpSuccess});

  @override
  final UserModel? user;
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
  final String password;
  @override
  @JsonKey()
  final String forgotEmail;
  @override
  @JsonKey()
  final String confirmPassword;
  @override
  @JsonKey()
  final String fullName;
  @override
  @JsonKey()
  final String phone;
  @override
  @JsonKey()
  final bool sendEmailSuccess;
  @override
  final bool? signUpSuccess;

  @override
  String toString() {
    return 'SignUpState(user: $user, isLoading: $isLoading, loadStatus: $loadStatus, error: $error, email: $email, password: $password, forgotEmail: $forgotEmail, confirmPassword: $confirmPassword, fullName: $fullName, phone: $phone, sendEmailSuccess: $sendEmailSuccess, signUpSuccess: $signUpSuccess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SignUpState &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.loadStatus, loadStatus) ||
                other.loadStatus == loadStatus) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.forgotEmail, forgotEmail) ||
                other.forgotEmail == forgotEmail) &&
            (identical(other.confirmPassword, confirmPassword) ||
                other.confirmPassword == confirmPassword) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.sendEmailSuccess, sendEmailSuccess) ||
                other.sendEmailSuccess == sendEmailSuccess) &&
            (identical(other.signUpSuccess, signUpSuccess) ||
                other.signUpSuccess == signUpSuccess));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      user,
      isLoading,
      loadStatus,
      error,
      email,
      password,
      forgotEmail,
      confirmPassword,
      fullName,
      phone,
      sendEmailSuccess,
      signUpSuccess);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SignUpStateCopyWith<_$_SignUpState> get copyWith =>
      __$$_SignUpStateCopyWithImpl<_$_SignUpState>(this, _$identity);
}

abstract class _SignUpState implements SignUpState {
  const factory _SignUpState(
      {final UserModel? user,
      final bool isLoading,
      final LoadStatusEnum loadStatus,
      final String error,
      final String email,
      final String password,
      final String forgotEmail,
      final String confirmPassword,
      final String fullName,
      final String phone,
      final bool sendEmailSuccess,
      final bool? signUpSuccess}) = _$_SignUpState;

  @override
  UserModel? get user;
  @override
  bool get isLoading;
  @override
  LoadStatusEnum get loadStatus;
  @override
  String get error;
  @override
  String get email;
  @override
  String get password;
  @override
  String get forgotEmail;
  @override
  String get confirmPassword;
  @override
  String get fullName;
  @override
  String get phone;
  @override
  bool get sendEmailSuccess;
  @override
  bool? get signUpSuccess;
  @override
  @JsonKey(ignore: true)
  _$$_SignUpStateCopyWith<_$_SignUpState> get copyWith =>
      throw _privateConstructorUsedError;
}
