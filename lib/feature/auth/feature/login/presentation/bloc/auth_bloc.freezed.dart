// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() login,
    required TResult Function() loginWithUsernameAndPassword,
    required TResult Function() getUser,
    required TResult Function(UserModel userModel) initUser,
    required TResult Function(String email) loginEmailChanged,
    required TResult Function(String email) forgotEmailChanged,
    required TResult Function() forgotPassword,
    required TResult Function(String password) loginPasswordChanged,
    required TResult Function(String confirmPassword)
        loginConfirmPasswordChanged,
    required TResult Function(String fullName) loginFullnameChanged,
    required TResult Function() signUp,
    required TResult Function() logout,
    required TResult Function() updateBookmark,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? login,
    TResult? Function()? loginWithUsernameAndPassword,
    TResult? Function()? getUser,
    TResult? Function(UserModel userModel)? initUser,
    TResult? Function(String email)? loginEmailChanged,
    TResult? Function(String email)? forgotEmailChanged,
    TResult? Function()? forgotPassword,
    TResult? Function(String password)? loginPasswordChanged,
    TResult? Function(String confirmPassword)? loginConfirmPasswordChanged,
    TResult? Function(String fullName)? loginFullnameChanged,
    TResult? Function()? signUp,
    TResult? Function()? logout,
    TResult? Function()? updateBookmark,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? login,
    TResult Function()? loginWithUsernameAndPassword,
    TResult Function()? getUser,
    TResult Function(UserModel userModel)? initUser,
    TResult Function(String email)? loginEmailChanged,
    TResult Function(String email)? forgotEmailChanged,
    TResult Function()? forgotPassword,
    TResult Function(String password)? loginPasswordChanged,
    TResult Function(String confirmPassword)? loginConfirmPasswordChanged,
    TResult Function(String fullName)? loginFullnameChanged,
    TResult Function()? signUp,
    TResult Function()? logout,
    TResult Function()? updateBookmark,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Login value) login,
    required TResult Function(LoginWithUsernameAndPasswordRequested value)
        loginWithUsernameAndPassword,
    required TResult Function(GetUserRequested value) getUser,
    required TResult Function(InitUserRequested value) initUser,
    required TResult Function(LoginEmailChangedRequested value)
        loginEmailChanged,
    required TResult Function(ForgotEmailChangedRequested value)
        forgotEmailChanged,
    required TResult Function(ForgotPasswordRequested value) forgotPassword,
    required TResult Function(LoginPasswordChangedRequested value)
        loginPasswordChanged,
    required TResult Function(LoginConfirmPasswordChangedRequested value)
        loginConfirmPasswordChanged,
    required TResult Function(LoginFullnameChangedRequested value)
        loginFullnameChanged,
    required TResult Function(SignUp value) signUp,
    required TResult Function(Logout value) logout,
    required TResult Function(UpdateBookmarkRequest value) updateBookmark,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Login value)? login,
    TResult? Function(LoginWithUsernameAndPasswordRequested value)?
        loginWithUsernameAndPassword,
    TResult? Function(GetUserRequested value)? getUser,
    TResult? Function(InitUserRequested value)? initUser,
    TResult? Function(LoginEmailChangedRequested value)? loginEmailChanged,
    TResult? Function(ForgotEmailChangedRequested value)? forgotEmailChanged,
    TResult? Function(ForgotPasswordRequested value)? forgotPassword,
    TResult? Function(LoginPasswordChangedRequested value)?
        loginPasswordChanged,
    TResult? Function(LoginConfirmPasswordChangedRequested value)?
        loginConfirmPasswordChanged,
    TResult? Function(LoginFullnameChangedRequested value)?
        loginFullnameChanged,
    TResult? Function(SignUp value)? signUp,
    TResult? Function(Logout value)? logout,
    TResult? Function(UpdateBookmarkRequest value)? updateBookmark,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Login value)? login,
    TResult Function(LoginWithUsernameAndPasswordRequested value)?
        loginWithUsernameAndPassword,
    TResult Function(GetUserRequested value)? getUser,
    TResult Function(InitUserRequested value)? initUser,
    TResult Function(LoginEmailChangedRequested value)? loginEmailChanged,
    TResult Function(ForgotEmailChangedRequested value)? forgotEmailChanged,
    TResult Function(ForgotPasswordRequested value)? forgotPassword,
    TResult Function(LoginPasswordChangedRequested value)? loginPasswordChanged,
    TResult Function(LoginConfirmPasswordChangedRequested value)?
        loginConfirmPasswordChanged,
    TResult Function(LoginFullnameChangedRequested value)? loginFullnameChanged,
    TResult Function(SignUp value)? signUp,
    TResult Function(Logout value)? logout,
    TResult Function(UpdateBookmarkRequest value)? updateBookmark,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoginCopyWith<$Res> {
  factory _$$LoginCopyWith(_$Login value, $Res Function(_$Login) then) =
      __$$LoginCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoginCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res, _$Login>
    implements _$$LoginCopyWith<$Res> {
  __$$LoginCopyWithImpl(_$Login _value, $Res Function(_$Login) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Login implements Login {
  const _$Login();

  @override
  String toString() {
    return 'AuthEvent.login()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Login);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() login,
    required TResult Function() loginWithUsernameAndPassword,
    required TResult Function() getUser,
    required TResult Function(UserModel userModel) initUser,
    required TResult Function(String email) loginEmailChanged,
    required TResult Function(String email) forgotEmailChanged,
    required TResult Function() forgotPassword,
    required TResult Function(String password) loginPasswordChanged,
    required TResult Function(String confirmPassword)
        loginConfirmPasswordChanged,
    required TResult Function(String fullName) loginFullnameChanged,
    required TResult Function() signUp,
    required TResult Function() logout,
    required TResult Function() updateBookmark,
  }) {
    return login();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? login,
    TResult? Function()? loginWithUsernameAndPassword,
    TResult? Function()? getUser,
    TResult? Function(UserModel userModel)? initUser,
    TResult? Function(String email)? loginEmailChanged,
    TResult? Function(String email)? forgotEmailChanged,
    TResult? Function()? forgotPassword,
    TResult? Function(String password)? loginPasswordChanged,
    TResult? Function(String confirmPassword)? loginConfirmPasswordChanged,
    TResult? Function(String fullName)? loginFullnameChanged,
    TResult? Function()? signUp,
    TResult? Function()? logout,
    TResult? Function()? updateBookmark,
  }) {
    return login?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? login,
    TResult Function()? loginWithUsernameAndPassword,
    TResult Function()? getUser,
    TResult Function(UserModel userModel)? initUser,
    TResult Function(String email)? loginEmailChanged,
    TResult Function(String email)? forgotEmailChanged,
    TResult Function()? forgotPassword,
    TResult Function(String password)? loginPasswordChanged,
    TResult Function(String confirmPassword)? loginConfirmPasswordChanged,
    TResult Function(String fullName)? loginFullnameChanged,
    TResult Function()? signUp,
    TResult Function()? logout,
    TResult Function()? updateBookmark,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Login value) login,
    required TResult Function(LoginWithUsernameAndPasswordRequested value)
        loginWithUsernameAndPassword,
    required TResult Function(GetUserRequested value) getUser,
    required TResult Function(InitUserRequested value) initUser,
    required TResult Function(LoginEmailChangedRequested value)
        loginEmailChanged,
    required TResult Function(ForgotEmailChangedRequested value)
        forgotEmailChanged,
    required TResult Function(ForgotPasswordRequested value) forgotPassword,
    required TResult Function(LoginPasswordChangedRequested value)
        loginPasswordChanged,
    required TResult Function(LoginConfirmPasswordChangedRequested value)
        loginConfirmPasswordChanged,
    required TResult Function(LoginFullnameChangedRequested value)
        loginFullnameChanged,
    required TResult Function(SignUp value) signUp,
    required TResult Function(Logout value) logout,
    required TResult Function(UpdateBookmarkRequest value) updateBookmark,
  }) {
    return login(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Login value)? login,
    TResult? Function(LoginWithUsernameAndPasswordRequested value)?
        loginWithUsernameAndPassword,
    TResult? Function(GetUserRequested value)? getUser,
    TResult? Function(InitUserRequested value)? initUser,
    TResult? Function(LoginEmailChangedRequested value)? loginEmailChanged,
    TResult? Function(ForgotEmailChangedRequested value)? forgotEmailChanged,
    TResult? Function(ForgotPasswordRequested value)? forgotPassword,
    TResult? Function(LoginPasswordChangedRequested value)?
        loginPasswordChanged,
    TResult? Function(LoginConfirmPasswordChangedRequested value)?
        loginConfirmPasswordChanged,
    TResult? Function(LoginFullnameChangedRequested value)?
        loginFullnameChanged,
    TResult? Function(SignUp value)? signUp,
    TResult? Function(Logout value)? logout,
    TResult? Function(UpdateBookmarkRequest value)? updateBookmark,
  }) {
    return login?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Login value)? login,
    TResult Function(LoginWithUsernameAndPasswordRequested value)?
        loginWithUsernameAndPassword,
    TResult Function(GetUserRequested value)? getUser,
    TResult Function(InitUserRequested value)? initUser,
    TResult Function(LoginEmailChangedRequested value)? loginEmailChanged,
    TResult Function(ForgotEmailChangedRequested value)? forgotEmailChanged,
    TResult Function(ForgotPasswordRequested value)? forgotPassword,
    TResult Function(LoginPasswordChangedRequested value)? loginPasswordChanged,
    TResult Function(LoginConfirmPasswordChangedRequested value)?
        loginConfirmPasswordChanged,
    TResult Function(LoginFullnameChangedRequested value)? loginFullnameChanged,
    TResult Function(SignUp value)? signUp,
    TResult Function(Logout value)? logout,
    TResult Function(UpdateBookmarkRequest value)? updateBookmark,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(this);
    }
    return orElse();
  }
}

abstract class Login implements AuthEvent {
  const factory Login() = _$Login;
}

/// @nodoc
abstract class _$$LoginWithUsernameAndPasswordRequestedCopyWith<$Res> {
  factory _$$LoginWithUsernameAndPasswordRequestedCopyWith(
          _$LoginWithUsernameAndPasswordRequested value,
          $Res Function(_$LoginWithUsernameAndPasswordRequested) then) =
      __$$LoginWithUsernameAndPasswordRequestedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoginWithUsernameAndPasswordRequestedCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res,
        _$LoginWithUsernameAndPasswordRequested>
    implements _$$LoginWithUsernameAndPasswordRequestedCopyWith<$Res> {
  __$$LoginWithUsernameAndPasswordRequestedCopyWithImpl(
      _$LoginWithUsernameAndPasswordRequested _value,
      $Res Function(_$LoginWithUsernameAndPasswordRequested) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoginWithUsernameAndPasswordRequested
    implements LoginWithUsernameAndPasswordRequested {
  const _$LoginWithUsernameAndPasswordRequested();

  @override
  String toString() {
    return 'AuthEvent.loginWithUsernameAndPassword()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginWithUsernameAndPasswordRequested);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() login,
    required TResult Function() loginWithUsernameAndPassword,
    required TResult Function() getUser,
    required TResult Function(UserModel userModel) initUser,
    required TResult Function(String email) loginEmailChanged,
    required TResult Function(String email) forgotEmailChanged,
    required TResult Function() forgotPassword,
    required TResult Function(String password) loginPasswordChanged,
    required TResult Function(String confirmPassword)
        loginConfirmPasswordChanged,
    required TResult Function(String fullName) loginFullnameChanged,
    required TResult Function() signUp,
    required TResult Function() logout,
    required TResult Function() updateBookmark,
  }) {
    return loginWithUsernameAndPassword();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? login,
    TResult? Function()? loginWithUsernameAndPassword,
    TResult? Function()? getUser,
    TResult? Function(UserModel userModel)? initUser,
    TResult? Function(String email)? loginEmailChanged,
    TResult? Function(String email)? forgotEmailChanged,
    TResult? Function()? forgotPassword,
    TResult? Function(String password)? loginPasswordChanged,
    TResult? Function(String confirmPassword)? loginConfirmPasswordChanged,
    TResult? Function(String fullName)? loginFullnameChanged,
    TResult? Function()? signUp,
    TResult? Function()? logout,
    TResult? Function()? updateBookmark,
  }) {
    return loginWithUsernameAndPassword?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? login,
    TResult Function()? loginWithUsernameAndPassword,
    TResult Function()? getUser,
    TResult Function(UserModel userModel)? initUser,
    TResult Function(String email)? loginEmailChanged,
    TResult Function(String email)? forgotEmailChanged,
    TResult Function()? forgotPassword,
    TResult Function(String password)? loginPasswordChanged,
    TResult Function(String confirmPassword)? loginConfirmPasswordChanged,
    TResult Function(String fullName)? loginFullnameChanged,
    TResult Function()? signUp,
    TResult Function()? logout,
    TResult Function()? updateBookmark,
    required TResult orElse(),
  }) {
    if (loginWithUsernameAndPassword != null) {
      return loginWithUsernameAndPassword();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Login value) login,
    required TResult Function(LoginWithUsernameAndPasswordRequested value)
        loginWithUsernameAndPassword,
    required TResult Function(GetUserRequested value) getUser,
    required TResult Function(InitUserRequested value) initUser,
    required TResult Function(LoginEmailChangedRequested value)
        loginEmailChanged,
    required TResult Function(ForgotEmailChangedRequested value)
        forgotEmailChanged,
    required TResult Function(ForgotPasswordRequested value) forgotPassword,
    required TResult Function(LoginPasswordChangedRequested value)
        loginPasswordChanged,
    required TResult Function(LoginConfirmPasswordChangedRequested value)
        loginConfirmPasswordChanged,
    required TResult Function(LoginFullnameChangedRequested value)
        loginFullnameChanged,
    required TResult Function(SignUp value) signUp,
    required TResult Function(Logout value) logout,
    required TResult Function(UpdateBookmarkRequest value) updateBookmark,
  }) {
    return loginWithUsernameAndPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Login value)? login,
    TResult? Function(LoginWithUsernameAndPasswordRequested value)?
        loginWithUsernameAndPassword,
    TResult? Function(GetUserRequested value)? getUser,
    TResult? Function(InitUserRequested value)? initUser,
    TResult? Function(LoginEmailChangedRequested value)? loginEmailChanged,
    TResult? Function(ForgotEmailChangedRequested value)? forgotEmailChanged,
    TResult? Function(ForgotPasswordRequested value)? forgotPassword,
    TResult? Function(LoginPasswordChangedRequested value)?
        loginPasswordChanged,
    TResult? Function(LoginConfirmPasswordChangedRequested value)?
        loginConfirmPasswordChanged,
    TResult? Function(LoginFullnameChangedRequested value)?
        loginFullnameChanged,
    TResult? Function(SignUp value)? signUp,
    TResult? Function(Logout value)? logout,
    TResult? Function(UpdateBookmarkRequest value)? updateBookmark,
  }) {
    return loginWithUsernameAndPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Login value)? login,
    TResult Function(LoginWithUsernameAndPasswordRequested value)?
        loginWithUsernameAndPassword,
    TResult Function(GetUserRequested value)? getUser,
    TResult Function(InitUserRequested value)? initUser,
    TResult Function(LoginEmailChangedRequested value)? loginEmailChanged,
    TResult Function(ForgotEmailChangedRequested value)? forgotEmailChanged,
    TResult Function(ForgotPasswordRequested value)? forgotPassword,
    TResult Function(LoginPasswordChangedRequested value)? loginPasswordChanged,
    TResult Function(LoginConfirmPasswordChangedRequested value)?
        loginConfirmPasswordChanged,
    TResult Function(LoginFullnameChangedRequested value)? loginFullnameChanged,
    TResult Function(SignUp value)? signUp,
    TResult Function(Logout value)? logout,
    TResult Function(UpdateBookmarkRequest value)? updateBookmark,
    required TResult orElse(),
  }) {
    if (loginWithUsernameAndPassword != null) {
      return loginWithUsernameAndPassword(this);
    }
    return orElse();
  }
}

abstract class LoginWithUsernameAndPasswordRequested implements AuthEvent {
  const factory LoginWithUsernameAndPasswordRequested() =
      _$LoginWithUsernameAndPasswordRequested;
}

/// @nodoc
abstract class _$$GetUserRequestedCopyWith<$Res> {
  factory _$$GetUserRequestedCopyWith(
          _$GetUserRequested value, $Res Function(_$GetUserRequested) then) =
      __$$GetUserRequestedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetUserRequestedCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$GetUserRequested>
    implements _$$GetUserRequestedCopyWith<$Res> {
  __$$GetUserRequestedCopyWithImpl(
      _$GetUserRequested _value, $Res Function(_$GetUserRequested) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetUserRequested implements GetUserRequested {
  const _$GetUserRequested();

  @override
  String toString() {
    return 'AuthEvent.getUser()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetUserRequested);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() login,
    required TResult Function() loginWithUsernameAndPassword,
    required TResult Function() getUser,
    required TResult Function(UserModel userModel) initUser,
    required TResult Function(String email) loginEmailChanged,
    required TResult Function(String email) forgotEmailChanged,
    required TResult Function() forgotPassword,
    required TResult Function(String password) loginPasswordChanged,
    required TResult Function(String confirmPassword)
        loginConfirmPasswordChanged,
    required TResult Function(String fullName) loginFullnameChanged,
    required TResult Function() signUp,
    required TResult Function() logout,
    required TResult Function() updateBookmark,
  }) {
    return getUser();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? login,
    TResult? Function()? loginWithUsernameAndPassword,
    TResult? Function()? getUser,
    TResult? Function(UserModel userModel)? initUser,
    TResult? Function(String email)? loginEmailChanged,
    TResult? Function(String email)? forgotEmailChanged,
    TResult? Function()? forgotPassword,
    TResult? Function(String password)? loginPasswordChanged,
    TResult? Function(String confirmPassword)? loginConfirmPasswordChanged,
    TResult? Function(String fullName)? loginFullnameChanged,
    TResult? Function()? signUp,
    TResult? Function()? logout,
    TResult? Function()? updateBookmark,
  }) {
    return getUser?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? login,
    TResult Function()? loginWithUsernameAndPassword,
    TResult Function()? getUser,
    TResult Function(UserModel userModel)? initUser,
    TResult Function(String email)? loginEmailChanged,
    TResult Function(String email)? forgotEmailChanged,
    TResult Function()? forgotPassword,
    TResult Function(String password)? loginPasswordChanged,
    TResult Function(String confirmPassword)? loginConfirmPasswordChanged,
    TResult Function(String fullName)? loginFullnameChanged,
    TResult Function()? signUp,
    TResult Function()? logout,
    TResult Function()? updateBookmark,
    required TResult orElse(),
  }) {
    if (getUser != null) {
      return getUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Login value) login,
    required TResult Function(LoginWithUsernameAndPasswordRequested value)
        loginWithUsernameAndPassword,
    required TResult Function(GetUserRequested value) getUser,
    required TResult Function(InitUserRequested value) initUser,
    required TResult Function(LoginEmailChangedRequested value)
        loginEmailChanged,
    required TResult Function(ForgotEmailChangedRequested value)
        forgotEmailChanged,
    required TResult Function(ForgotPasswordRequested value) forgotPassword,
    required TResult Function(LoginPasswordChangedRequested value)
        loginPasswordChanged,
    required TResult Function(LoginConfirmPasswordChangedRequested value)
        loginConfirmPasswordChanged,
    required TResult Function(LoginFullnameChangedRequested value)
        loginFullnameChanged,
    required TResult Function(SignUp value) signUp,
    required TResult Function(Logout value) logout,
    required TResult Function(UpdateBookmarkRequest value) updateBookmark,
  }) {
    return getUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Login value)? login,
    TResult? Function(LoginWithUsernameAndPasswordRequested value)?
        loginWithUsernameAndPassword,
    TResult? Function(GetUserRequested value)? getUser,
    TResult? Function(InitUserRequested value)? initUser,
    TResult? Function(LoginEmailChangedRequested value)? loginEmailChanged,
    TResult? Function(ForgotEmailChangedRequested value)? forgotEmailChanged,
    TResult? Function(ForgotPasswordRequested value)? forgotPassword,
    TResult? Function(LoginPasswordChangedRequested value)?
        loginPasswordChanged,
    TResult? Function(LoginConfirmPasswordChangedRequested value)?
        loginConfirmPasswordChanged,
    TResult? Function(LoginFullnameChangedRequested value)?
        loginFullnameChanged,
    TResult? Function(SignUp value)? signUp,
    TResult? Function(Logout value)? logout,
    TResult? Function(UpdateBookmarkRequest value)? updateBookmark,
  }) {
    return getUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Login value)? login,
    TResult Function(LoginWithUsernameAndPasswordRequested value)?
        loginWithUsernameAndPassword,
    TResult Function(GetUserRequested value)? getUser,
    TResult Function(InitUserRequested value)? initUser,
    TResult Function(LoginEmailChangedRequested value)? loginEmailChanged,
    TResult Function(ForgotEmailChangedRequested value)? forgotEmailChanged,
    TResult Function(ForgotPasswordRequested value)? forgotPassword,
    TResult Function(LoginPasswordChangedRequested value)? loginPasswordChanged,
    TResult Function(LoginConfirmPasswordChangedRequested value)?
        loginConfirmPasswordChanged,
    TResult Function(LoginFullnameChangedRequested value)? loginFullnameChanged,
    TResult Function(SignUp value)? signUp,
    TResult Function(Logout value)? logout,
    TResult Function(UpdateBookmarkRequest value)? updateBookmark,
    required TResult orElse(),
  }) {
    if (getUser != null) {
      return getUser(this);
    }
    return orElse();
  }
}

abstract class GetUserRequested implements AuthEvent {
  const factory GetUserRequested() = _$GetUserRequested;
}

/// @nodoc
abstract class _$$InitUserRequestedCopyWith<$Res> {
  factory _$$InitUserRequestedCopyWith(
          _$InitUserRequested value, $Res Function(_$InitUserRequested) then) =
      __$$InitUserRequestedCopyWithImpl<$Res>;
  @useResult
  $Res call({UserModel userModel});

  $UserModelCopyWith<$Res> get userModel;
}

/// @nodoc
class __$$InitUserRequestedCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$InitUserRequested>
    implements _$$InitUserRequestedCopyWith<$Res> {
  __$$InitUserRequestedCopyWithImpl(
      _$InitUserRequested _value, $Res Function(_$InitUserRequested) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userModel = null,
  }) {
    return _then(_$InitUserRequested(
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

class _$InitUserRequested implements InitUserRequested {
  const _$InitUserRequested(this.userModel);

  @override
  final UserModel userModel;

  @override
  String toString() {
    return 'AuthEvent.initUser(userModel: $userModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitUserRequested &&
            (identical(other.userModel, userModel) ||
                other.userModel == userModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitUserRequestedCopyWith<_$InitUserRequested> get copyWith =>
      __$$InitUserRequestedCopyWithImpl<_$InitUserRequested>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() login,
    required TResult Function() loginWithUsernameAndPassword,
    required TResult Function() getUser,
    required TResult Function(UserModel userModel) initUser,
    required TResult Function(String email) loginEmailChanged,
    required TResult Function(String email) forgotEmailChanged,
    required TResult Function() forgotPassword,
    required TResult Function(String password) loginPasswordChanged,
    required TResult Function(String confirmPassword)
        loginConfirmPasswordChanged,
    required TResult Function(String fullName) loginFullnameChanged,
    required TResult Function() signUp,
    required TResult Function() logout,
    required TResult Function() updateBookmark,
  }) {
    return initUser(userModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? login,
    TResult? Function()? loginWithUsernameAndPassword,
    TResult? Function()? getUser,
    TResult? Function(UserModel userModel)? initUser,
    TResult? Function(String email)? loginEmailChanged,
    TResult? Function(String email)? forgotEmailChanged,
    TResult? Function()? forgotPassword,
    TResult? Function(String password)? loginPasswordChanged,
    TResult? Function(String confirmPassword)? loginConfirmPasswordChanged,
    TResult? Function(String fullName)? loginFullnameChanged,
    TResult? Function()? signUp,
    TResult? Function()? logout,
    TResult? Function()? updateBookmark,
  }) {
    return initUser?.call(userModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? login,
    TResult Function()? loginWithUsernameAndPassword,
    TResult Function()? getUser,
    TResult Function(UserModel userModel)? initUser,
    TResult Function(String email)? loginEmailChanged,
    TResult Function(String email)? forgotEmailChanged,
    TResult Function()? forgotPassword,
    TResult Function(String password)? loginPasswordChanged,
    TResult Function(String confirmPassword)? loginConfirmPasswordChanged,
    TResult Function(String fullName)? loginFullnameChanged,
    TResult Function()? signUp,
    TResult Function()? logout,
    TResult Function()? updateBookmark,
    required TResult orElse(),
  }) {
    if (initUser != null) {
      return initUser(userModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Login value) login,
    required TResult Function(LoginWithUsernameAndPasswordRequested value)
        loginWithUsernameAndPassword,
    required TResult Function(GetUserRequested value) getUser,
    required TResult Function(InitUserRequested value) initUser,
    required TResult Function(LoginEmailChangedRequested value)
        loginEmailChanged,
    required TResult Function(ForgotEmailChangedRequested value)
        forgotEmailChanged,
    required TResult Function(ForgotPasswordRequested value) forgotPassword,
    required TResult Function(LoginPasswordChangedRequested value)
        loginPasswordChanged,
    required TResult Function(LoginConfirmPasswordChangedRequested value)
        loginConfirmPasswordChanged,
    required TResult Function(LoginFullnameChangedRequested value)
        loginFullnameChanged,
    required TResult Function(SignUp value) signUp,
    required TResult Function(Logout value) logout,
    required TResult Function(UpdateBookmarkRequest value) updateBookmark,
  }) {
    return initUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Login value)? login,
    TResult? Function(LoginWithUsernameAndPasswordRequested value)?
        loginWithUsernameAndPassword,
    TResult? Function(GetUserRequested value)? getUser,
    TResult? Function(InitUserRequested value)? initUser,
    TResult? Function(LoginEmailChangedRequested value)? loginEmailChanged,
    TResult? Function(ForgotEmailChangedRequested value)? forgotEmailChanged,
    TResult? Function(ForgotPasswordRequested value)? forgotPassword,
    TResult? Function(LoginPasswordChangedRequested value)?
        loginPasswordChanged,
    TResult? Function(LoginConfirmPasswordChangedRequested value)?
        loginConfirmPasswordChanged,
    TResult? Function(LoginFullnameChangedRequested value)?
        loginFullnameChanged,
    TResult? Function(SignUp value)? signUp,
    TResult? Function(Logout value)? logout,
    TResult? Function(UpdateBookmarkRequest value)? updateBookmark,
  }) {
    return initUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Login value)? login,
    TResult Function(LoginWithUsernameAndPasswordRequested value)?
        loginWithUsernameAndPassword,
    TResult Function(GetUserRequested value)? getUser,
    TResult Function(InitUserRequested value)? initUser,
    TResult Function(LoginEmailChangedRequested value)? loginEmailChanged,
    TResult Function(ForgotEmailChangedRequested value)? forgotEmailChanged,
    TResult Function(ForgotPasswordRequested value)? forgotPassword,
    TResult Function(LoginPasswordChangedRequested value)? loginPasswordChanged,
    TResult Function(LoginConfirmPasswordChangedRequested value)?
        loginConfirmPasswordChanged,
    TResult Function(LoginFullnameChangedRequested value)? loginFullnameChanged,
    TResult Function(SignUp value)? signUp,
    TResult Function(Logout value)? logout,
    TResult Function(UpdateBookmarkRequest value)? updateBookmark,
    required TResult orElse(),
  }) {
    if (initUser != null) {
      return initUser(this);
    }
    return orElse();
  }
}

abstract class InitUserRequested implements AuthEvent {
  const factory InitUserRequested(final UserModel userModel) =
      _$InitUserRequested;

  UserModel get userModel;
  @JsonKey(ignore: true)
  _$$InitUserRequestedCopyWith<_$InitUserRequested> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoginEmailChangedRequestedCopyWith<$Res> {
  factory _$$LoginEmailChangedRequestedCopyWith(
          _$LoginEmailChangedRequested value,
          $Res Function(_$LoginEmailChangedRequested) then) =
      __$$LoginEmailChangedRequestedCopyWithImpl<$Res>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$LoginEmailChangedRequestedCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$LoginEmailChangedRequested>
    implements _$$LoginEmailChangedRequestedCopyWith<$Res> {
  __$$LoginEmailChangedRequestedCopyWithImpl(
      _$LoginEmailChangedRequested _value,
      $Res Function(_$LoginEmailChangedRequested) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$LoginEmailChangedRequested(
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoginEmailChangedRequested implements LoginEmailChangedRequested {
  const _$LoginEmailChangedRequested(this.email);

  @override
  final String email;

  @override
  String toString() {
    return 'AuthEvent.loginEmailChanged(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginEmailChangedRequested &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginEmailChangedRequestedCopyWith<_$LoginEmailChangedRequested>
      get copyWith => __$$LoginEmailChangedRequestedCopyWithImpl<
          _$LoginEmailChangedRequested>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() login,
    required TResult Function() loginWithUsernameAndPassword,
    required TResult Function() getUser,
    required TResult Function(UserModel userModel) initUser,
    required TResult Function(String email) loginEmailChanged,
    required TResult Function(String email) forgotEmailChanged,
    required TResult Function() forgotPassword,
    required TResult Function(String password) loginPasswordChanged,
    required TResult Function(String confirmPassword)
        loginConfirmPasswordChanged,
    required TResult Function(String fullName) loginFullnameChanged,
    required TResult Function() signUp,
    required TResult Function() logout,
    required TResult Function() updateBookmark,
  }) {
    return loginEmailChanged(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? login,
    TResult? Function()? loginWithUsernameAndPassword,
    TResult? Function()? getUser,
    TResult? Function(UserModel userModel)? initUser,
    TResult? Function(String email)? loginEmailChanged,
    TResult? Function(String email)? forgotEmailChanged,
    TResult? Function()? forgotPassword,
    TResult? Function(String password)? loginPasswordChanged,
    TResult? Function(String confirmPassword)? loginConfirmPasswordChanged,
    TResult? Function(String fullName)? loginFullnameChanged,
    TResult? Function()? signUp,
    TResult? Function()? logout,
    TResult? Function()? updateBookmark,
  }) {
    return loginEmailChanged?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? login,
    TResult Function()? loginWithUsernameAndPassword,
    TResult Function()? getUser,
    TResult Function(UserModel userModel)? initUser,
    TResult Function(String email)? loginEmailChanged,
    TResult Function(String email)? forgotEmailChanged,
    TResult Function()? forgotPassword,
    TResult Function(String password)? loginPasswordChanged,
    TResult Function(String confirmPassword)? loginConfirmPasswordChanged,
    TResult Function(String fullName)? loginFullnameChanged,
    TResult Function()? signUp,
    TResult Function()? logout,
    TResult Function()? updateBookmark,
    required TResult orElse(),
  }) {
    if (loginEmailChanged != null) {
      return loginEmailChanged(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Login value) login,
    required TResult Function(LoginWithUsernameAndPasswordRequested value)
        loginWithUsernameAndPassword,
    required TResult Function(GetUserRequested value) getUser,
    required TResult Function(InitUserRequested value) initUser,
    required TResult Function(LoginEmailChangedRequested value)
        loginEmailChanged,
    required TResult Function(ForgotEmailChangedRequested value)
        forgotEmailChanged,
    required TResult Function(ForgotPasswordRequested value) forgotPassword,
    required TResult Function(LoginPasswordChangedRequested value)
        loginPasswordChanged,
    required TResult Function(LoginConfirmPasswordChangedRequested value)
        loginConfirmPasswordChanged,
    required TResult Function(LoginFullnameChangedRequested value)
        loginFullnameChanged,
    required TResult Function(SignUp value) signUp,
    required TResult Function(Logout value) logout,
    required TResult Function(UpdateBookmarkRequest value) updateBookmark,
  }) {
    return loginEmailChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Login value)? login,
    TResult? Function(LoginWithUsernameAndPasswordRequested value)?
        loginWithUsernameAndPassword,
    TResult? Function(GetUserRequested value)? getUser,
    TResult? Function(InitUserRequested value)? initUser,
    TResult? Function(LoginEmailChangedRequested value)? loginEmailChanged,
    TResult? Function(ForgotEmailChangedRequested value)? forgotEmailChanged,
    TResult? Function(ForgotPasswordRequested value)? forgotPassword,
    TResult? Function(LoginPasswordChangedRequested value)?
        loginPasswordChanged,
    TResult? Function(LoginConfirmPasswordChangedRequested value)?
        loginConfirmPasswordChanged,
    TResult? Function(LoginFullnameChangedRequested value)?
        loginFullnameChanged,
    TResult? Function(SignUp value)? signUp,
    TResult? Function(Logout value)? logout,
    TResult? Function(UpdateBookmarkRequest value)? updateBookmark,
  }) {
    return loginEmailChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Login value)? login,
    TResult Function(LoginWithUsernameAndPasswordRequested value)?
        loginWithUsernameAndPassword,
    TResult Function(GetUserRequested value)? getUser,
    TResult Function(InitUserRequested value)? initUser,
    TResult Function(LoginEmailChangedRequested value)? loginEmailChanged,
    TResult Function(ForgotEmailChangedRequested value)? forgotEmailChanged,
    TResult Function(ForgotPasswordRequested value)? forgotPassword,
    TResult Function(LoginPasswordChangedRequested value)? loginPasswordChanged,
    TResult Function(LoginConfirmPasswordChangedRequested value)?
        loginConfirmPasswordChanged,
    TResult Function(LoginFullnameChangedRequested value)? loginFullnameChanged,
    TResult Function(SignUp value)? signUp,
    TResult Function(Logout value)? logout,
    TResult Function(UpdateBookmarkRequest value)? updateBookmark,
    required TResult orElse(),
  }) {
    if (loginEmailChanged != null) {
      return loginEmailChanged(this);
    }
    return orElse();
  }
}

abstract class LoginEmailChangedRequested implements AuthEvent {
  const factory LoginEmailChangedRequested(final String email) =
      _$LoginEmailChangedRequested;

  String get email;
  @JsonKey(ignore: true)
  _$$LoginEmailChangedRequestedCopyWith<_$LoginEmailChangedRequested>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ForgotEmailChangedRequestedCopyWith<$Res> {
  factory _$$ForgotEmailChangedRequestedCopyWith(
          _$ForgotEmailChangedRequested value,
          $Res Function(_$ForgotEmailChangedRequested) then) =
      __$$ForgotEmailChangedRequestedCopyWithImpl<$Res>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$ForgotEmailChangedRequestedCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$ForgotEmailChangedRequested>
    implements _$$ForgotEmailChangedRequestedCopyWith<$Res> {
  __$$ForgotEmailChangedRequestedCopyWithImpl(
      _$ForgotEmailChangedRequested _value,
      $Res Function(_$ForgotEmailChangedRequested) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$ForgotEmailChangedRequested(
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ForgotEmailChangedRequested implements ForgotEmailChangedRequested {
  const _$ForgotEmailChangedRequested(this.email);

  @override
  final String email;

  @override
  String toString() {
    return 'AuthEvent.forgotEmailChanged(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForgotEmailChangedRequested &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ForgotEmailChangedRequestedCopyWith<_$ForgotEmailChangedRequested>
      get copyWith => __$$ForgotEmailChangedRequestedCopyWithImpl<
          _$ForgotEmailChangedRequested>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() login,
    required TResult Function() loginWithUsernameAndPassword,
    required TResult Function() getUser,
    required TResult Function(UserModel userModel) initUser,
    required TResult Function(String email) loginEmailChanged,
    required TResult Function(String email) forgotEmailChanged,
    required TResult Function() forgotPassword,
    required TResult Function(String password) loginPasswordChanged,
    required TResult Function(String confirmPassword)
        loginConfirmPasswordChanged,
    required TResult Function(String fullName) loginFullnameChanged,
    required TResult Function() signUp,
    required TResult Function() logout,
    required TResult Function() updateBookmark,
  }) {
    return forgotEmailChanged(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? login,
    TResult? Function()? loginWithUsernameAndPassword,
    TResult? Function()? getUser,
    TResult? Function(UserModel userModel)? initUser,
    TResult? Function(String email)? loginEmailChanged,
    TResult? Function(String email)? forgotEmailChanged,
    TResult? Function()? forgotPassword,
    TResult? Function(String password)? loginPasswordChanged,
    TResult? Function(String confirmPassword)? loginConfirmPasswordChanged,
    TResult? Function(String fullName)? loginFullnameChanged,
    TResult? Function()? signUp,
    TResult? Function()? logout,
    TResult? Function()? updateBookmark,
  }) {
    return forgotEmailChanged?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? login,
    TResult Function()? loginWithUsernameAndPassword,
    TResult Function()? getUser,
    TResult Function(UserModel userModel)? initUser,
    TResult Function(String email)? loginEmailChanged,
    TResult Function(String email)? forgotEmailChanged,
    TResult Function()? forgotPassword,
    TResult Function(String password)? loginPasswordChanged,
    TResult Function(String confirmPassword)? loginConfirmPasswordChanged,
    TResult Function(String fullName)? loginFullnameChanged,
    TResult Function()? signUp,
    TResult Function()? logout,
    TResult Function()? updateBookmark,
    required TResult orElse(),
  }) {
    if (forgotEmailChanged != null) {
      return forgotEmailChanged(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Login value) login,
    required TResult Function(LoginWithUsernameAndPasswordRequested value)
        loginWithUsernameAndPassword,
    required TResult Function(GetUserRequested value) getUser,
    required TResult Function(InitUserRequested value) initUser,
    required TResult Function(LoginEmailChangedRequested value)
        loginEmailChanged,
    required TResult Function(ForgotEmailChangedRequested value)
        forgotEmailChanged,
    required TResult Function(ForgotPasswordRequested value) forgotPassword,
    required TResult Function(LoginPasswordChangedRequested value)
        loginPasswordChanged,
    required TResult Function(LoginConfirmPasswordChangedRequested value)
        loginConfirmPasswordChanged,
    required TResult Function(LoginFullnameChangedRequested value)
        loginFullnameChanged,
    required TResult Function(SignUp value) signUp,
    required TResult Function(Logout value) logout,
    required TResult Function(UpdateBookmarkRequest value) updateBookmark,
  }) {
    return forgotEmailChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Login value)? login,
    TResult? Function(LoginWithUsernameAndPasswordRequested value)?
        loginWithUsernameAndPassword,
    TResult? Function(GetUserRequested value)? getUser,
    TResult? Function(InitUserRequested value)? initUser,
    TResult? Function(LoginEmailChangedRequested value)? loginEmailChanged,
    TResult? Function(ForgotEmailChangedRequested value)? forgotEmailChanged,
    TResult? Function(ForgotPasswordRequested value)? forgotPassword,
    TResult? Function(LoginPasswordChangedRequested value)?
        loginPasswordChanged,
    TResult? Function(LoginConfirmPasswordChangedRequested value)?
        loginConfirmPasswordChanged,
    TResult? Function(LoginFullnameChangedRequested value)?
        loginFullnameChanged,
    TResult? Function(SignUp value)? signUp,
    TResult? Function(Logout value)? logout,
    TResult? Function(UpdateBookmarkRequest value)? updateBookmark,
  }) {
    return forgotEmailChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Login value)? login,
    TResult Function(LoginWithUsernameAndPasswordRequested value)?
        loginWithUsernameAndPassword,
    TResult Function(GetUserRequested value)? getUser,
    TResult Function(InitUserRequested value)? initUser,
    TResult Function(LoginEmailChangedRequested value)? loginEmailChanged,
    TResult Function(ForgotEmailChangedRequested value)? forgotEmailChanged,
    TResult Function(ForgotPasswordRequested value)? forgotPassword,
    TResult Function(LoginPasswordChangedRequested value)? loginPasswordChanged,
    TResult Function(LoginConfirmPasswordChangedRequested value)?
        loginConfirmPasswordChanged,
    TResult Function(LoginFullnameChangedRequested value)? loginFullnameChanged,
    TResult Function(SignUp value)? signUp,
    TResult Function(Logout value)? logout,
    TResult Function(UpdateBookmarkRequest value)? updateBookmark,
    required TResult orElse(),
  }) {
    if (forgotEmailChanged != null) {
      return forgotEmailChanged(this);
    }
    return orElse();
  }
}

abstract class ForgotEmailChangedRequested implements AuthEvent {
  const factory ForgotEmailChangedRequested(final String email) =
      _$ForgotEmailChangedRequested;

  String get email;
  @JsonKey(ignore: true)
  _$$ForgotEmailChangedRequestedCopyWith<_$ForgotEmailChangedRequested>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ForgotPasswordRequestedCopyWith<$Res> {
  factory _$$ForgotPasswordRequestedCopyWith(_$ForgotPasswordRequested value,
          $Res Function(_$ForgotPasswordRequested) then) =
      __$$ForgotPasswordRequestedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ForgotPasswordRequestedCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$ForgotPasswordRequested>
    implements _$$ForgotPasswordRequestedCopyWith<$Res> {
  __$$ForgotPasswordRequestedCopyWithImpl(_$ForgotPasswordRequested _value,
      $Res Function(_$ForgotPasswordRequested) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ForgotPasswordRequested implements ForgotPasswordRequested {
  const _$ForgotPasswordRequested();

  @override
  String toString() {
    return 'AuthEvent.forgotPassword()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForgotPasswordRequested);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() login,
    required TResult Function() loginWithUsernameAndPassword,
    required TResult Function() getUser,
    required TResult Function(UserModel userModel) initUser,
    required TResult Function(String email) loginEmailChanged,
    required TResult Function(String email) forgotEmailChanged,
    required TResult Function() forgotPassword,
    required TResult Function(String password) loginPasswordChanged,
    required TResult Function(String confirmPassword)
        loginConfirmPasswordChanged,
    required TResult Function(String fullName) loginFullnameChanged,
    required TResult Function() signUp,
    required TResult Function() logout,
    required TResult Function() updateBookmark,
  }) {
    return forgotPassword();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? login,
    TResult? Function()? loginWithUsernameAndPassword,
    TResult? Function()? getUser,
    TResult? Function(UserModel userModel)? initUser,
    TResult? Function(String email)? loginEmailChanged,
    TResult? Function(String email)? forgotEmailChanged,
    TResult? Function()? forgotPassword,
    TResult? Function(String password)? loginPasswordChanged,
    TResult? Function(String confirmPassword)? loginConfirmPasswordChanged,
    TResult? Function(String fullName)? loginFullnameChanged,
    TResult? Function()? signUp,
    TResult? Function()? logout,
    TResult? Function()? updateBookmark,
  }) {
    return forgotPassword?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? login,
    TResult Function()? loginWithUsernameAndPassword,
    TResult Function()? getUser,
    TResult Function(UserModel userModel)? initUser,
    TResult Function(String email)? loginEmailChanged,
    TResult Function(String email)? forgotEmailChanged,
    TResult Function()? forgotPassword,
    TResult Function(String password)? loginPasswordChanged,
    TResult Function(String confirmPassword)? loginConfirmPasswordChanged,
    TResult Function(String fullName)? loginFullnameChanged,
    TResult Function()? signUp,
    TResult Function()? logout,
    TResult Function()? updateBookmark,
    required TResult orElse(),
  }) {
    if (forgotPassword != null) {
      return forgotPassword();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Login value) login,
    required TResult Function(LoginWithUsernameAndPasswordRequested value)
        loginWithUsernameAndPassword,
    required TResult Function(GetUserRequested value) getUser,
    required TResult Function(InitUserRequested value) initUser,
    required TResult Function(LoginEmailChangedRequested value)
        loginEmailChanged,
    required TResult Function(ForgotEmailChangedRequested value)
        forgotEmailChanged,
    required TResult Function(ForgotPasswordRequested value) forgotPassword,
    required TResult Function(LoginPasswordChangedRequested value)
        loginPasswordChanged,
    required TResult Function(LoginConfirmPasswordChangedRequested value)
        loginConfirmPasswordChanged,
    required TResult Function(LoginFullnameChangedRequested value)
        loginFullnameChanged,
    required TResult Function(SignUp value) signUp,
    required TResult Function(Logout value) logout,
    required TResult Function(UpdateBookmarkRequest value) updateBookmark,
  }) {
    return forgotPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Login value)? login,
    TResult? Function(LoginWithUsernameAndPasswordRequested value)?
        loginWithUsernameAndPassword,
    TResult? Function(GetUserRequested value)? getUser,
    TResult? Function(InitUserRequested value)? initUser,
    TResult? Function(LoginEmailChangedRequested value)? loginEmailChanged,
    TResult? Function(ForgotEmailChangedRequested value)? forgotEmailChanged,
    TResult? Function(ForgotPasswordRequested value)? forgotPassword,
    TResult? Function(LoginPasswordChangedRequested value)?
        loginPasswordChanged,
    TResult? Function(LoginConfirmPasswordChangedRequested value)?
        loginConfirmPasswordChanged,
    TResult? Function(LoginFullnameChangedRequested value)?
        loginFullnameChanged,
    TResult? Function(SignUp value)? signUp,
    TResult? Function(Logout value)? logout,
    TResult? Function(UpdateBookmarkRequest value)? updateBookmark,
  }) {
    return forgotPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Login value)? login,
    TResult Function(LoginWithUsernameAndPasswordRequested value)?
        loginWithUsernameAndPassword,
    TResult Function(GetUserRequested value)? getUser,
    TResult Function(InitUserRequested value)? initUser,
    TResult Function(LoginEmailChangedRequested value)? loginEmailChanged,
    TResult Function(ForgotEmailChangedRequested value)? forgotEmailChanged,
    TResult Function(ForgotPasswordRequested value)? forgotPassword,
    TResult Function(LoginPasswordChangedRequested value)? loginPasswordChanged,
    TResult Function(LoginConfirmPasswordChangedRequested value)?
        loginConfirmPasswordChanged,
    TResult Function(LoginFullnameChangedRequested value)? loginFullnameChanged,
    TResult Function(SignUp value)? signUp,
    TResult Function(Logout value)? logout,
    TResult Function(UpdateBookmarkRequest value)? updateBookmark,
    required TResult orElse(),
  }) {
    if (forgotPassword != null) {
      return forgotPassword(this);
    }
    return orElse();
  }
}

abstract class ForgotPasswordRequested implements AuthEvent {
  const factory ForgotPasswordRequested() = _$ForgotPasswordRequested;
}

/// @nodoc
abstract class _$$LoginPasswordChangedRequestedCopyWith<$Res> {
  factory _$$LoginPasswordChangedRequestedCopyWith(
          _$LoginPasswordChangedRequested value,
          $Res Function(_$LoginPasswordChangedRequested) then) =
      __$$LoginPasswordChangedRequestedCopyWithImpl<$Res>;
  @useResult
  $Res call({String password});
}

/// @nodoc
class __$$LoginPasswordChangedRequestedCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$LoginPasswordChangedRequested>
    implements _$$LoginPasswordChangedRequestedCopyWith<$Res> {
  __$$LoginPasswordChangedRequestedCopyWithImpl(
      _$LoginPasswordChangedRequested _value,
      $Res Function(_$LoginPasswordChangedRequested) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = null,
  }) {
    return _then(_$LoginPasswordChangedRequested(
      null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoginPasswordChangedRequested implements LoginPasswordChangedRequested {
  const _$LoginPasswordChangedRequested(this.password);

  @override
  final String password;

  @override
  String toString() {
    return 'AuthEvent.loginPasswordChanged(password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginPasswordChangedRequested &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginPasswordChangedRequestedCopyWith<_$LoginPasswordChangedRequested>
      get copyWith => __$$LoginPasswordChangedRequestedCopyWithImpl<
          _$LoginPasswordChangedRequested>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() login,
    required TResult Function() loginWithUsernameAndPassword,
    required TResult Function() getUser,
    required TResult Function(UserModel userModel) initUser,
    required TResult Function(String email) loginEmailChanged,
    required TResult Function(String email) forgotEmailChanged,
    required TResult Function() forgotPassword,
    required TResult Function(String password) loginPasswordChanged,
    required TResult Function(String confirmPassword)
        loginConfirmPasswordChanged,
    required TResult Function(String fullName) loginFullnameChanged,
    required TResult Function() signUp,
    required TResult Function() logout,
    required TResult Function() updateBookmark,
  }) {
    return loginPasswordChanged(password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? login,
    TResult? Function()? loginWithUsernameAndPassword,
    TResult? Function()? getUser,
    TResult? Function(UserModel userModel)? initUser,
    TResult? Function(String email)? loginEmailChanged,
    TResult? Function(String email)? forgotEmailChanged,
    TResult? Function()? forgotPassword,
    TResult? Function(String password)? loginPasswordChanged,
    TResult? Function(String confirmPassword)? loginConfirmPasswordChanged,
    TResult? Function(String fullName)? loginFullnameChanged,
    TResult? Function()? signUp,
    TResult? Function()? logout,
    TResult? Function()? updateBookmark,
  }) {
    return loginPasswordChanged?.call(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? login,
    TResult Function()? loginWithUsernameAndPassword,
    TResult Function()? getUser,
    TResult Function(UserModel userModel)? initUser,
    TResult Function(String email)? loginEmailChanged,
    TResult Function(String email)? forgotEmailChanged,
    TResult Function()? forgotPassword,
    TResult Function(String password)? loginPasswordChanged,
    TResult Function(String confirmPassword)? loginConfirmPasswordChanged,
    TResult Function(String fullName)? loginFullnameChanged,
    TResult Function()? signUp,
    TResult Function()? logout,
    TResult Function()? updateBookmark,
    required TResult orElse(),
  }) {
    if (loginPasswordChanged != null) {
      return loginPasswordChanged(password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Login value) login,
    required TResult Function(LoginWithUsernameAndPasswordRequested value)
        loginWithUsernameAndPassword,
    required TResult Function(GetUserRequested value) getUser,
    required TResult Function(InitUserRequested value) initUser,
    required TResult Function(LoginEmailChangedRequested value)
        loginEmailChanged,
    required TResult Function(ForgotEmailChangedRequested value)
        forgotEmailChanged,
    required TResult Function(ForgotPasswordRequested value) forgotPassword,
    required TResult Function(LoginPasswordChangedRequested value)
        loginPasswordChanged,
    required TResult Function(LoginConfirmPasswordChangedRequested value)
        loginConfirmPasswordChanged,
    required TResult Function(LoginFullnameChangedRequested value)
        loginFullnameChanged,
    required TResult Function(SignUp value) signUp,
    required TResult Function(Logout value) logout,
    required TResult Function(UpdateBookmarkRequest value) updateBookmark,
  }) {
    return loginPasswordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Login value)? login,
    TResult? Function(LoginWithUsernameAndPasswordRequested value)?
        loginWithUsernameAndPassword,
    TResult? Function(GetUserRequested value)? getUser,
    TResult? Function(InitUserRequested value)? initUser,
    TResult? Function(LoginEmailChangedRequested value)? loginEmailChanged,
    TResult? Function(ForgotEmailChangedRequested value)? forgotEmailChanged,
    TResult? Function(ForgotPasswordRequested value)? forgotPassword,
    TResult? Function(LoginPasswordChangedRequested value)?
        loginPasswordChanged,
    TResult? Function(LoginConfirmPasswordChangedRequested value)?
        loginConfirmPasswordChanged,
    TResult? Function(LoginFullnameChangedRequested value)?
        loginFullnameChanged,
    TResult? Function(SignUp value)? signUp,
    TResult? Function(Logout value)? logout,
    TResult? Function(UpdateBookmarkRequest value)? updateBookmark,
  }) {
    return loginPasswordChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Login value)? login,
    TResult Function(LoginWithUsernameAndPasswordRequested value)?
        loginWithUsernameAndPassword,
    TResult Function(GetUserRequested value)? getUser,
    TResult Function(InitUserRequested value)? initUser,
    TResult Function(LoginEmailChangedRequested value)? loginEmailChanged,
    TResult Function(ForgotEmailChangedRequested value)? forgotEmailChanged,
    TResult Function(ForgotPasswordRequested value)? forgotPassword,
    TResult Function(LoginPasswordChangedRequested value)? loginPasswordChanged,
    TResult Function(LoginConfirmPasswordChangedRequested value)?
        loginConfirmPasswordChanged,
    TResult Function(LoginFullnameChangedRequested value)? loginFullnameChanged,
    TResult Function(SignUp value)? signUp,
    TResult Function(Logout value)? logout,
    TResult Function(UpdateBookmarkRequest value)? updateBookmark,
    required TResult orElse(),
  }) {
    if (loginPasswordChanged != null) {
      return loginPasswordChanged(this);
    }
    return orElse();
  }
}

abstract class LoginPasswordChangedRequested implements AuthEvent {
  const factory LoginPasswordChangedRequested(final String password) =
      _$LoginPasswordChangedRequested;

  String get password;
  @JsonKey(ignore: true)
  _$$LoginPasswordChangedRequestedCopyWith<_$LoginPasswordChangedRequested>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoginConfirmPasswordChangedRequestedCopyWith<$Res> {
  factory _$$LoginConfirmPasswordChangedRequestedCopyWith(
          _$LoginConfirmPasswordChangedRequested value,
          $Res Function(_$LoginConfirmPasswordChangedRequested) then) =
      __$$LoginConfirmPasswordChangedRequestedCopyWithImpl<$Res>;
  @useResult
  $Res call({String confirmPassword});
}

/// @nodoc
class __$$LoginConfirmPasswordChangedRequestedCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res,
        _$LoginConfirmPasswordChangedRequested>
    implements _$$LoginConfirmPasswordChangedRequestedCopyWith<$Res> {
  __$$LoginConfirmPasswordChangedRequestedCopyWithImpl(
      _$LoginConfirmPasswordChangedRequested _value,
      $Res Function(_$LoginConfirmPasswordChangedRequested) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? confirmPassword = null,
  }) {
    return _then(_$LoginConfirmPasswordChangedRequested(
      null == confirmPassword
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoginConfirmPasswordChangedRequested
    implements LoginConfirmPasswordChangedRequested {
  const _$LoginConfirmPasswordChangedRequested(this.confirmPassword);

  @override
  final String confirmPassword;

  @override
  String toString() {
    return 'AuthEvent.loginConfirmPasswordChanged(confirmPassword: $confirmPassword)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginConfirmPasswordChangedRequested &&
            (identical(other.confirmPassword, confirmPassword) ||
                other.confirmPassword == confirmPassword));
  }

  @override
  int get hashCode => Object.hash(runtimeType, confirmPassword);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginConfirmPasswordChangedRequestedCopyWith<
          _$LoginConfirmPasswordChangedRequested>
      get copyWith => __$$LoginConfirmPasswordChangedRequestedCopyWithImpl<
          _$LoginConfirmPasswordChangedRequested>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() login,
    required TResult Function() loginWithUsernameAndPassword,
    required TResult Function() getUser,
    required TResult Function(UserModel userModel) initUser,
    required TResult Function(String email) loginEmailChanged,
    required TResult Function(String email) forgotEmailChanged,
    required TResult Function() forgotPassword,
    required TResult Function(String password) loginPasswordChanged,
    required TResult Function(String confirmPassword)
        loginConfirmPasswordChanged,
    required TResult Function(String fullName) loginFullnameChanged,
    required TResult Function() signUp,
    required TResult Function() logout,
    required TResult Function() updateBookmark,
  }) {
    return loginConfirmPasswordChanged(confirmPassword);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? login,
    TResult? Function()? loginWithUsernameAndPassword,
    TResult? Function()? getUser,
    TResult? Function(UserModel userModel)? initUser,
    TResult? Function(String email)? loginEmailChanged,
    TResult? Function(String email)? forgotEmailChanged,
    TResult? Function()? forgotPassword,
    TResult? Function(String password)? loginPasswordChanged,
    TResult? Function(String confirmPassword)? loginConfirmPasswordChanged,
    TResult? Function(String fullName)? loginFullnameChanged,
    TResult? Function()? signUp,
    TResult? Function()? logout,
    TResult? Function()? updateBookmark,
  }) {
    return loginConfirmPasswordChanged?.call(confirmPassword);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? login,
    TResult Function()? loginWithUsernameAndPassword,
    TResult Function()? getUser,
    TResult Function(UserModel userModel)? initUser,
    TResult Function(String email)? loginEmailChanged,
    TResult Function(String email)? forgotEmailChanged,
    TResult Function()? forgotPassword,
    TResult Function(String password)? loginPasswordChanged,
    TResult Function(String confirmPassword)? loginConfirmPasswordChanged,
    TResult Function(String fullName)? loginFullnameChanged,
    TResult Function()? signUp,
    TResult Function()? logout,
    TResult Function()? updateBookmark,
    required TResult orElse(),
  }) {
    if (loginConfirmPasswordChanged != null) {
      return loginConfirmPasswordChanged(confirmPassword);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Login value) login,
    required TResult Function(LoginWithUsernameAndPasswordRequested value)
        loginWithUsernameAndPassword,
    required TResult Function(GetUserRequested value) getUser,
    required TResult Function(InitUserRequested value) initUser,
    required TResult Function(LoginEmailChangedRequested value)
        loginEmailChanged,
    required TResult Function(ForgotEmailChangedRequested value)
        forgotEmailChanged,
    required TResult Function(ForgotPasswordRequested value) forgotPassword,
    required TResult Function(LoginPasswordChangedRequested value)
        loginPasswordChanged,
    required TResult Function(LoginConfirmPasswordChangedRequested value)
        loginConfirmPasswordChanged,
    required TResult Function(LoginFullnameChangedRequested value)
        loginFullnameChanged,
    required TResult Function(SignUp value) signUp,
    required TResult Function(Logout value) logout,
    required TResult Function(UpdateBookmarkRequest value) updateBookmark,
  }) {
    return loginConfirmPasswordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Login value)? login,
    TResult? Function(LoginWithUsernameAndPasswordRequested value)?
        loginWithUsernameAndPassword,
    TResult? Function(GetUserRequested value)? getUser,
    TResult? Function(InitUserRequested value)? initUser,
    TResult? Function(LoginEmailChangedRequested value)? loginEmailChanged,
    TResult? Function(ForgotEmailChangedRequested value)? forgotEmailChanged,
    TResult? Function(ForgotPasswordRequested value)? forgotPassword,
    TResult? Function(LoginPasswordChangedRequested value)?
        loginPasswordChanged,
    TResult? Function(LoginConfirmPasswordChangedRequested value)?
        loginConfirmPasswordChanged,
    TResult? Function(LoginFullnameChangedRequested value)?
        loginFullnameChanged,
    TResult? Function(SignUp value)? signUp,
    TResult? Function(Logout value)? logout,
    TResult? Function(UpdateBookmarkRequest value)? updateBookmark,
  }) {
    return loginConfirmPasswordChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Login value)? login,
    TResult Function(LoginWithUsernameAndPasswordRequested value)?
        loginWithUsernameAndPassword,
    TResult Function(GetUserRequested value)? getUser,
    TResult Function(InitUserRequested value)? initUser,
    TResult Function(LoginEmailChangedRequested value)? loginEmailChanged,
    TResult Function(ForgotEmailChangedRequested value)? forgotEmailChanged,
    TResult Function(ForgotPasswordRequested value)? forgotPassword,
    TResult Function(LoginPasswordChangedRequested value)? loginPasswordChanged,
    TResult Function(LoginConfirmPasswordChangedRequested value)?
        loginConfirmPasswordChanged,
    TResult Function(LoginFullnameChangedRequested value)? loginFullnameChanged,
    TResult Function(SignUp value)? signUp,
    TResult Function(Logout value)? logout,
    TResult Function(UpdateBookmarkRequest value)? updateBookmark,
    required TResult orElse(),
  }) {
    if (loginConfirmPasswordChanged != null) {
      return loginConfirmPasswordChanged(this);
    }
    return orElse();
  }
}

abstract class LoginConfirmPasswordChangedRequested implements AuthEvent {
  const factory LoginConfirmPasswordChangedRequested(
      final String confirmPassword) = _$LoginConfirmPasswordChangedRequested;

  String get confirmPassword;
  @JsonKey(ignore: true)
  _$$LoginConfirmPasswordChangedRequestedCopyWith<
          _$LoginConfirmPasswordChangedRequested>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoginFullnameChangedRequestedCopyWith<$Res> {
  factory _$$LoginFullnameChangedRequestedCopyWith(
          _$LoginFullnameChangedRequested value,
          $Res Function(_$LoginFullnameChangedRequested) then) =
      __$$LoginFullnameChangedRequestedCopyWithImpl<$Res>;
  @useResult
  $Res call({String fullName});
}

/// @nodoc
class __$$LoginFullnameChangedRequestedCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$LoginFullnameChangedRequested>
    implements _$$LoginFullnameChangedRequestedCopyWith<$Res> {
  __$$LoginFullnameChangedRequestedCopyWithImpl(
      _$LoginFullnameChangedRequested _value,
      $Res Function(_$LoginFullnameChangedRequested) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullName = null,
  }) {
    return _then(_$LoginFullnameChangedRequested(
      null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoginFullnameChangedRequested implements LoginFullnameChangedRequested {
  const _$LoginFullnameChangedRequested(this.fullName);

  @override
  final String fullName;

  @override
  String toString() {
    return 'AuthEvent.loginFullnameChanged(fullName: $fullName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginFullnameChangedRequested &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, fullName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginFullnameChangedRequestedCopyWith<_$LoginFullnameChangedRequested>
      get copyWith => __$$LoginFullnameChangedRequestedCopyWithImpl<
          _$LoginFullnameChangedRequested>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() login,
    required TResult Function() loginWithUsernameAndPassword,
    required TResult Function() getUser,
    required TResult Function(UserModel userModel) initUser,
    required TResult Function(String email) loginEmailChanged,
    required TResult Function(String email) forgotEmailChanged,
    required TResult Function() forgotPassword,
    required TResult Function(String password) loginPasswordChanged,
    required TResult Function(String confirmPassword)
        loginConfirmPasswordChanged,
    required TResult Function(String fullName) loginFullnameChanged,
    required TResult Function() signUp,
    required TResult Function() logout,
    required TResult Function() updateBookmark,
  }) {
    return loginFullnameChanged(fullName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? login,
    TResult? Function()? loginWithUsernameAndPassword,
    TResult? Function()? getUser,
    TResult? Function(UserModel userModel)? initUser,
    TResult? Function(String email)? loginEmailChanged,
    TResult? Function(String email)? forgotEmailChanged,
    TResult? Function()? forgotPassword,
    TResult? Function(String password)? loginPasswordChanged,
    TResult? Function(String confirmPassword)? loginConfirmPasswordChanged,
    TResult? Function(String fullName)? loginFullnameChanged,
    TResult? Function()? signUp,
    TResult? Function()? logout,
    TResult? Function()? updateBookmark,
  }) {
    return loginFullnameChanged?.call(fullName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? login,
    TResult Function()? loginWithUsernameAndPassword,
    TResult Function()? getUser,
    TResult Function(UserModel userModel)? initUser,
    TResult Function(String email)? loginEmailChanged,
    TResult Function(String email)? forgotEmailChanged,
    TResult Function()? forgotPassword,
    TResult Function(String password)? loginPasswordChanged,
    TResult Function(String confirmPassword)? loginConfirmPasswordChanged,
    TResult Function(String fullName)? loginFullnameChanged,
    TResult Function()? signUp,
    TResult Function()? logout,
    TResult Function()? updateBookmark,
    required TResult orElse(),
  }) {
    if (loginFullnameChanged != null) {
      return loginFullnameChanged(fullName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Login value) login,
    required TResult Function(LoginWithUsernameAndPasswordRequested value)
        loginWithUsernameAndPassword,
    required TResult Function(GetUserRequested value) getUser,
    required TResult Function(InitUserRequested value) initUser,
    required TResult Function(LoginEmailChangedRequested value)
        loginEmailChanged,
    required TResult Function(ForgotEmailChangedRequested value)
        forgotEmailChanged,
    required TResult Function(ForgotPasswordRequested value) forgotPassword,
    required TResult Function(LoginPasswordChangedRequested value)
        loginPasswordChanged,
    required TResult Function(LoginConfirmPasswordChangedRequested value)
        loginConfirmPasswordChanged,
    required TResult Function(LoginFullnameChangedRequested value)
        loginFullnameChanged,
    required TResult Function(SignUp value) signUp,
    required TResult Function(Logout value) logout,
    required TResult Function(UpdateBookmarkRequest value) updateBookmark,
  }) {
    return loginFullnameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Login value)? login,
    TResult? Function(LoginWithUsernameAndPasswordRequested value)?
        loginWithUsernameAndPassword,
    TResult? Function(GetUserRequested value)? getUser,
    TResult? Function(InitUserRequested value)? initUser,
    TResult? Function(LoginEmailChangedRequested value)? loginEmailChanged,
    TResult? Function(ForgotEmailChangedRequested value)? forgotEmailChanged,
    TResult? Function(ForgotPasswordRequested value)? forgotPassword,
    TResult? Function(LoginPasswordChangedRequested value)?
        loginPasswordChanged,
    TResult? Function(LoginConfirmPasswordChangedRequested value)?
        loginConfirmPasswordChanged,
    TResult? Function(LoginFullnameChangedRequested value)?
        loginFullnameChanged,
    TResult? Function(SignUp value)? signUp,
    TResult? Function(Logout value)? logout,
    TResult? Function(UpdateBookmarkRequest value)? updateBookmark,
  }) {
    return loginFullnameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Login value)? login,
    TResult Function(LoginWithUsernameAndPasswordRequested value)?
        loginWithUsernameAndPassword,
    TResult Function(GetUserRequested value)? getUser,
    TResult Function(InitUserRequested value)? initUser,
    TResult Function(LoginEmailChangedRequested value)? loginEmailChanged,
    TResult Function(ForgotEmailChangedRequested value)? forgotEmailChanged,
    TResult Function(ForgotPasswordRequested value)? forgotPassword,
    TResult Function(LoginPasswordChangedRequested value)? loginPasswordChanged,
    TResult Function(LoginConfirmPasswordChangedRequested value)?
        loginConfirmPasswordChanged,
    TResult Function(LoginFullnameChangedRequested value)? loginFullnameChanged,
    TResult Function(SignUp value)? signUp,
    TResult Function(Logout value)? logout,
    TResult Function(UpdateBookmarkRequest value)? updateBookmark,
    required TResult orElse(),
  }) {
    if (loginFullnameChanged != null) {
      return loginFullnameChanged(this);
    }
    return orElse();
  }
}

abstract class LoginFullnameChangedRequested implements AuthEvent {
  const factory LoginFullnameChangedRequested(final String fullName) =
      _$LoginFullnameChangedRequested;

  String get fullName;
  @JsonKey(ignore: true)
  _$$LoginFullnameChangedRequestedCopyWith<_$LoginFullnameChangedRequested>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignUpCopyWith<$Res> {
  factory _$$SignUpCopyWith(_$SignUp value, $Res Function(_$SignUp) then) =
      __$$SignUpCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignUpCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$SignUp>
    implements _$$SignUpCopyWith<$Res> {
  __$$SignUpCopyWithImpl(_$SignUp _value, $Res Function(_$SignUp) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SignUp implements SignUp {
  const _$SignUp();

  @override
  String toString() {
    return 'AuthEvent.signUp()';
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
    required TResult Function() login,
    required TResult Function() loginWithUsernameAndPassword,
    required TResult Function() getUser,
    required TResult Function(UserModel userModel) initUser,
    required TResult Function(String email) loginEmailChanged,
    required TResult Function(String email) forgotEmailChanged,
    required TResult Function() forgotPassword,
    required TResult Function(String password) loginPasswordChanged,
    required TResult Function(String confirmPassword)
        loginConfirmPasswordChanged,
    required TResult Function(String fullName) loginFullnameChanged,
    required TResult Function() signUp,
    required TResult Function() logout,
    required TResult Function() updateBookmark,
  }) {
    return signUp();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? login,
    TResult? Function()? loginWithUsernameAndPassword,
    TResult? Function()? getUser,
    TResult? Function(UserModel userModel)? initUser,
    TResult? Function(String email)? loginEmailChanged,
    TResult? Function(String email)? forgotEmailChanged,
    TResult? Function()? forgotPassword,
    TResult? Function(String password)? loginPasswordChanged,
    TResult? Function(String confirmPassword)? loginConfirmPasswordChanged,
    TResult? Function(String fullName)? loginFullnameChanged,
    TResult? Function()? signUp,
    TResult? Function()? logout,
    TResult? Function()? updateBookmark,
  }) {
    return signUp?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? login,
    TResult Function()? loginWithUsernameAndPassword,
    TResult Function()? getUser,
    TResult Function(UserModel userModel)? initUser,
    TResult Function(String email)? loginEmailChanged,
    TResult Function(String email)? forgotEmailChanged,
    TResult Function()? forgotPassword,
    TResult Function(String password)? loginPasswordChanged,
    TResult Function(String confirmPassword)? loginConfirmPasswordChanged,
    TResult Function(String fullName)? loginFullnameChanged,
    TResult Function()? signUp,
    TResult Function()? logout,
    TResult Function()? updateBookmark,
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
    required TResult Function(Login value) login,
    required TResult Function(LoginWithUsernameAndPasswordRequested value)
        loginWithUsernameAndPassword,
    required TResult Function(GetUserRequested value) getUser,
    required TResult Function(InitUserRequested value) initUser,
    required TResult Function(LoginEmailChangedRequested value)
        loginEmailChanged,
    required TResult Function(ForgotEmailChangedRequested value)
        forgotEmailChanged,
    required TResult Function(ForgotPasswordRequested value) forgotPassword,
    required TResult Function(LoginPasswordChangedRequested value)
        loginPasswordChanged,
    required TResult Function(LoginConfirmPasswordChangedRequested value)
        loginConfirmPasswordChanged,
    required TResult Function(LoginFullnameChangedRequested value)
        loginFullnameChanged,
    required TResult Function(SignUp value) signUp,
    required TResult Function(Logout value) logout,
    required TResult Function(UpdateBookmarkRequest value) updateBookmark,
  }) {
    return signUp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Login value)? login,
    TResult? Function(LoginWithUsernameAndPasswordRequested value)?
        loginWithUsernameAndPassword,
    TResult? Function(GetUserRequested value)? getUser,
    TResult? Function(InitUserRequested value)? initUser,
    TResult? Function(LoginEmailChangedRequested value)? loginEmailChanged,
    TResult? Function(ForgotEmailChangedRequested value)? forgotEmailChanged,
    TResult? Function(ForgotPasswordRequested value)? forgotPassword,
    TResult? Function(LoginPasswordChangedRequested value)?
        loginPasswordChanged,
    TResult? Function(LoginConfirmPasswordChangedRequested value)?
        loginConfirmPasswordChanged,
    TResult? Function(LoginFullnameChangedRequested value)?
        loginFullnameChanged,
    TResult? Function(SignUp value)? signUp,
    TResult? Function(Logout value)? logout,
    TResult? Function(UpdateBookmarkRequest value)? updateBookmark,
  }) {
    return signUp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Login value)? login,
    TResult Function(LoginWithUsernameAndPasswordRequested value)?
        loginWithUsernameAndPassword,
    TResult Function(GetUserRequested value)? getUser,
    TResult Function(InitUserRequested value)? initUser,
    TResult Function(LoginEmailChangedRequested value)? loginEmailChanged,
    TResult Function(ForgotEmailChangedRequested value)? forgotEmailChanged,
    TResult Function(ForgotPasswordRequested value)? forgotPassword,
    TResult Function(LoginPasswordChangedRequested value)? loginPasswordChanged,
    TResult Function(LoginConfirmPasswordChangedRequested value)?
        loginConfirmPasswordChanged,
    TResult Function(LoginFullnameChangedRequested value)? loginFullnameChanged,
    TResult Function(SignUp value)? signUp,
    TResult Function(Logout value)? logout,
    TResult Function(UpdateBookmarkRequest value)? updateBookmark,
    required TResult orElse(),
  }) {
    if (signUp != null) {
      return signUp(this);
    }
    return orElse();
  }
}

abstract class SignUp implements AuthEvent {
  const factory SignUp() = _$SignUp;
}

/// @nodoc
abstract class _$$LogoutCopyWith<$Res> {
  factory _$$LogoutCopyWith(_$Logout value, $Res Function(_$Logout) then) =
      __$$LogoutCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LogoutCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$Logout>
    implements _$$LogoutCopyWith<$Res> {
  __$$LogoutCopyWithImpl(_$Logout _value, $Res Function(_$Logout) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Logout implements Logout {
  const _$Logout();

  @override
  String toString() {
    return 'AuthEvent.logout()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Logout);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() login,
    required TResult Function() loginWithUsernameAndPassword,
    required TResult Function() getUser,
    required TResult Function(UserModel userModel) initUser,
    required TResult Function(String email) loginEmailChanged,
    required TResult Function(String email) forgotEmailChanged,
    required TResult Function() forgotPassword,
    required TResult Function(String password) loginPasswordChanged,
    required TResult Function(String confirmPassword)
        loginConfirmPasswordChanged,
    required TResult Function(String fullName) loginFullnameChanged,
    required TResult Function() signUp,
    required TResult Function() logout,
    required TResult Function() updateBookmark,
  }) {
    return logout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? login,
    TResult? Function()? loginWithUsernameAndPassword,
    TResult? Function()? getUser,
    TResult? Function(UserModel userModel)? initUser,
    TResult? Function(String email)? loginEmailChanged,
    TResult? Function(String email)? forgotEmailChanged,
    TResult? Function()? forgotPassword,
    TResult? Function(String password)? loginPasswordChanged,
    TResult? Function(String confirmPassword)? loginConfirmPasswordChanged,
    TResult? Function(String fullName)? loginFullnameChanged,
    TResult? Function()? signUp,
    TResult? Function()? logout,
    TResult? Function()? updateBookmark,
  }) {
    return logout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? login,
    TResult Function()? loginWithUsernameAndPassword,
    TResult Function()? getUser,
    TResult Function(UserModel userModel)? initUser,
    TResult Function(String email)? loginEmailChanged,
    TResult Function(String email)? forgotEmailChanged,
    TResult Function()? forgotPassword,
    TResult Function(String password)? loginPasswordChanged,
    TResult Function(String confirmPassword)? loginConfirmPasswordChanged,
    TResult Function(String fullName)? loginFullnameChanged,
    TResult Function()? signUp,
    TResult Function()? logout,
    TResult Function()? updateBookmark,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Login value) login,
    required TResult Function(LoginWithUsernameAndPasswordRequested value)
        loginWithUsernameAndPassword,
    required TResult Function(GetUserRequested value) getUser,
    required TResult Function(InitUserRequested value) initUser,
    required TResult Function(LoginEmailChangedRequested value)
        loginEmailChanged,
    required TResult Function(ForgotEmailChangedRequested value)
        forgotEmailChanged,
    required TResult Function(ForgotPasswordRequested value) forgotPassword,
    required TResult Function(LoginPasswordChangedRequested value)
        loginPasswordChanged,
    required TResult Function(LoginConfirmPasswordChangedRequested value)
        loginConfirmPasswordChanged,
    required TResult Function(LoginFullnameChangedRequested value)
        loginFullnameChanged,
    required TResult Function(SignUp value) signUp,
    required TResult Function(Logout value) logout,
    required TResult Function(UpdateBookmarkRequest value) updateBookmark,
  }) {
    return logout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Login value)? login,
    TResult? Function(LoginWithUsernameAndPasswordRequested value)?
        loginWithUsernameAndPassword,
    TResult? Function(GetUserRequested value)? getUser,
    TResult? Function(InitUserRequested value)? initUser,
    TResult? Function(LoginEmailChangedRequested value)? loginEmailChanged,
    TResult? Function(ForgotEmailChangedRequested value)? forgotEmailChanged,
    TResult? Function(ForgotPasswordRequested value)? forgotPassword,
    TResult? Function(LoginPasswordChangedRequested value)?
        loginPasswordChanged,
    TResult? Function(LoginConfirmPasswordChangedRequested value)?
        loginConfirmPasswordChanged,
    TResult? Function(LoginFullnameChangedRequested value)?
        loginFullnameChanged,
    TResult? Function(SignUp value)? signUp,
    TResult? Function(Logout value)? logout,
    TResult? Function(UpdateBookmarkRequest value)? updateBookmark,
  }) {
    return logout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Login value)? login,
    TResult Function(LoginWithUsernameAndPasswordRequested value)?
        loginWithUsernameAndPassword,
    TResult Function(GetUserRequested value)? getUser,
    TResult Function(InitUserRequested value)? initUser,
    TResult Function(LoginEmailChangedRequested value)? loginEmailChanged,
    TResult Function(ForgotEmailChangedRequested value)? forgotEmailChanged,
    TResult Function(ForgotPasswordRequested value)? forgotPassword,
    TResult Function(LoginPasswordChangedRequested value)? loginPasswordChanged,
    TResult Function(LoginConfirmPasswordChangedRequested value)?
        loginConfirmPasswordChanged,
    TResult Function(LoginFullnameChangedRequested value)? loginFullnameChanged,
    TResult Function(SignUp value)? signUp,
    TResult Function(Logout value)? logout,
    TResult Function(UpdateBookmarkRequest value)? updateBookmark,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout(this);
    }
    return orElse();
  }
}

abstract class Logout implements AuthEvent {
  const factory Logout() = _$Logout;
}

/// @nodoc
abstract class _$$UpdateBookmarkRequestCopyWith<$Res> {
  factory _$$UpdateBookmarkRequestCopyWith(_$UpdateBookmarkRequest value,
          $Res Function(_$UpdateBookmarkRequest) then) =
      __$$UpdateBookmarkRequestCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UpdateBookmarkRequestCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$UpdateBookmarkRequest>
    implements _$$UpdateBookmarkRequestCopyWith<$Res> {
  __$$UpdateBookmarkRequestCopyWithImpl(_$UpdateBookmarkRequest _value,
      $Res Function(_$UpdateBookmarkRequest) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UpdateBookmarkRequest implements UpdateBookmarkRequest {
  const _$UpdateBookmarkRequest();

  @override
  String toString() {
    return 'AuthEvent.updateBookmark()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UpdateBookmarkRequest);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() login,
    required TResult Function() loginWithUsernameAndPassword,
    required TResult Function() getUser,
    required TResult Function(UserModel userModel) initUser,
    required TResult Function(String email) loginEmailChanged,
    required TResult Function(String email) forgotEmailChanged,
    required TResult Function() forgotPassword,
    required TResult Function(String password) loginPasswordChanged,
    required TResult Function(String confirmPassword)
        loginConfirmPasswordChanged,
    required TResult Function(String fullName) loginFullnameChanged,
    required TResult Function() signUp,
    required TResult Function() logout,
    required TResult Function() updateBookmark,
  }) {
    return updateBookmark();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? login,
    TResult? Function()? loginWithUsernameAndPassword,
    TResult? Function()? getUser,
    TResult? Function(UserModel userModel)? initUser,
    TResult? Function(String email)? loginEmailChanged,
    TResult? Function(String email)? forgotEmailChanged,
    TResult? Function()? forgotPassword,
    TResult? Function(String password)? loginPasswordChanged,
    TResult? Function(String confirmPassword)? loginConfirmPasswordChanged,
    TResult? Function(String fullName)? loginFullnameChanged,
    TResult? Function()? signUp,
    TResult? Function()? logout,
    TResult? Function()? updateBookmark,
  }) {
    return updateBookmark?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? login,
    TResult Function()? loginWithUsernameAndPassword,
    TResult Function()? getUser,
    TResult Function(UserModel userModel)? initUser,
    TResult Function(String email)? loginEmailChanged,
    TResult Function(String email)? forgotEmailChanged,
    TResult Function()? forgotPassword,
    TResult Function(String password)? loginPasswordChanged,
    TResult Function(String confirmPassword)? loginConfirmPasswordChanged,
    TResult Function(String fullName)? loginFullnameChanged,
    TResult Function()? signUp,
    TResult Function()? logout,
    TResult Function()? updateBookmark,
    required TResult orElse(),
  }) {
    if (updateBookmark != null) {
      return updateBookmark();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Login value) login,
    required TResult Function(LoginWithUsernameAndPasswordRequested value)
        loginWithUsernameAndPassword,
    required TResult Function(GetUserRequested value) getUser,
    required TResult Function(InitUserRequested value) initUser,
    required TResult Function(LoginEmailChangedRequested value)
        loginEmailChanged,
    required TResult Function(ForgotEmailChangedRequested value)
        forgotEmailChanged,
    required TResult Function(ForgotPasswordRequested value) forgotPassword,
    required TResult Function(LoginPasswordChangedRequested value)
        loginPasswordChanged,
    required TResult Function(LoginConfirmPasswordChangedRequested value)
        loginConfirmPasswordChanged,
    required TResult Function(LoginFullnameChangedRequested value)
        loginFullnameChanged,
    required TResult Function(SignUp value) signUp,
    required TResult Function(Logout value) logout,
    required TResult Function(UpdateBookmarkRequest value) updateBookmark,
  }) {
    return updateBookmark(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Login value)? login,
    TResult? Function(LoginWithUsernameAndPasswordRequested value)?
        loginWithUsernameAndPassword,
    TResult? Function(GetUserRequested value)? getUser,
    TResult? Function(InitUserRequested value)? initUser,
    TResult? Function(LoginEmailChangedRequested value)? loginEmailChanged,
    TResult? Function(ForgotEmailChangedRequested value)? forgotEmailChanged,
    TResult? Function(ForgotPasswordRequested value)? forgotPassword,
    TResult? Function(LoginPasswordChangedRequested value)?
        loginPasswordChanged,
    TResult? Function(LoginConfirmPasswordChangedRequested value)?
        loginConfirmPasswordChanged,
    TResult? Function(LoginFullnameChangedRequested value)?
        loginFullnameChanged,
    TResult? Function(SignUp value)? signUp,
    TResult? Function(Logout value)? logout,
    TResult? Function(UpdateBookmarkRequest value)? updateBookmark,
  }) {
    return updateBookmark?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Login value)? login,
    TResult Function(LoginWithUsernameAndPasswordRequested value)?
        loginWithUsernameAndPassword,
    TResult Function(GetUserRequested value)? getUser,
    TResult Function(InitUserRequested value)? initUser,
    TResult Function(LoginEmailChangedRequested value)? loginEmailChanged,
    TResult Function(ForgotEmailChangedRequested value)? forgotEmailChanged,
    TResult Function(ForgotPasswordRequested value)? forgotPassword,
    TResult Function(LoginPasswordChangedRequested value)? loginPasswordChanged,
    TResult Function(LoginConfirmPasswordChangedRequested value)?
        loginConfirmPasswordChanged,
    TResult Function(LoginFullnameChangedRequested value)? loginFullnameChanged,
    TResult Function(SignUp value)? signUp,
    TResult Function(Logout value)? logout,
    TResult Function(UpdateBookmarkRequest value)? updateBookmark,
    required TResult orElse(),
  }) {
    if (updateBookmark != null) {
      return updateBookmark(this);
    }
    return orElse();
  }
}

abstract class UpdateBookmarkRequest implements AuthEvent {
  const factory UpdateBookmarkRequest() = _$UpdateBookmarkRequest;
}

/// @nodoc
mixin _$AuthState {
  UserModel? get user => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  String get error => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String get forgotEmail => throw _privateConstructorUsedError;
  String get confirmPassword => throw _privateConstructorUsedError;
  String get fullName => throw _privateConstructorUsedError;
  bool get sendEmailSuccess => throw _privateConstructorUsedError;
  bool? get signUpSuccess => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthStateCopyWith<AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
  @useResult
  $Res call(
      {UserModel? user,
      bool isLoading,
      String error,
      String email,
      String password,
      String forgotEmail,
      String confirmPassword,
      String fullName,
      bool sendEmailSuccess,
      bool? signUpSuccess});

  $UserModelCopyWith<$Res>? get user;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? isLoading = null,
    Object? error = null,
    Object? email = null,
    Object? password = null,
    Object? forgotEmail = null,
    Object? confirmPassword = null,
    Object? fullName = null,
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
abstract class _$$_AuthStateCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory _$$_AuthStateCopyWith(
          _$_AuthState value, $Res Function(_$_AuthState) then) =
      __$$_AuthStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UserModel? user,
      bool isLoading,
      String error,
      String email,
      String password,
      String forgotEmail,
      String confirmPassword,
      String fullName,
      bool sendEmailSuccess,
      bool? signUpSuccess});

  @override
  $UserModelCopyWith<$Res>? get user;
}

/// @nodoc
class __$$_AuthStateCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_AuthState>
    implements _$$_AuthStateCopyWith<$Res> {
  __$$_AuthStateCopyWithImpl(
      _$_AuthState _value, $Res Function(_$_AuthState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? isLoading = null,
    Object? error = null,
    Object? email = null,
    Object? password = null,
    Object? forgotEmail = null,
    Object? confirmPassword = null,
    Object? fullName = null,
    Object? sendEmailSuccess = null,
    Object? signUpSuccess = freezed,
  }) {
    return _then(_$_AuthState(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
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

class _$_AuthState implements _AuthState {
  _$_AuthState(
      {this.user,
      this.isLoading = false,
      this.error = "",
      this.email = "",
      this.password = "",
      this.forgotEmail = "",
      this.confirmPassword = "",
      this.fullName = "",
      this.sendEmailSuccess = false,
      this.signUpSuccess});

  @override
  final UserModel? user;
  @override
  @JsonKey()
  final bool isLoading;
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
  final bool sendEmailSuccess;
  @override
  final bool? signUpSuccess;

  @override
  String toString() {
    return 'AuthState(user: $user, isLoading: $isLoading, error: $error, email: $email, password: $password, forgotEmail: $forgotEmail, confirmPassword: $confirmPassword, fullName: $fullName, sendEmailSuccess: $sendEmailSuccess, signUpSuccess: $signUpSuccess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthState &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
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
      error,
      email,
      password,
      forgotEmail,
      confirmPassword,
      fullName,
      sendEmailSuccess,
      signUpSuccess);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthStateCopyWith<_$_AuthState> get copyWith =>
      __$$_AuthStateCopyWithImpl<_$_AuthState>(this, _$identity);
}

abstract class _AuthState implements AuthState {
  factory _AuthState(
      {final UserModel? user,
      final bool isLoading,
      final String error,
      final String email,
      final String password,
      final String forgotEmail,
      final String confirmPassword,
      final String fullName,
      final bool sendEmailSuccess,
      final bool? signUpSuccess}) = _$_AuthState;

  @override
  UserModel? get user;
  @override
  bool get isLoading;
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
  bool get sendEmailSuccess;
  @override
  bool? get signUpSuccess;
  @override
  @JsonKey(ignore: true)
  _$$_AuthStateCopyWith<_$_AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}
