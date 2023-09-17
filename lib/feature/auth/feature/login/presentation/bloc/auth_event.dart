part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.login() = Login;
  const factory AuthEvent.loginWithUsernameAndPassword() =
      LoginWithUsernameAndPasswordRequested;

  const factory AuthEvent.getUser() = GetUserRequested;
  const factory AuthEvent.initUser(UserModel userModel) = InitUserRequested;

  const factory AuthEvent.loginEmailChanged(String email) =
      LoginEmailChangedRequested;

  const factory AuthEvent.forgotEmailChanged(String email) =
      ForgotEmailChangedRequested;

  const factory AuthEvent.forgotPassword() = ForgotPasswordRequested;

  const factory AuthEvent.loginPasswordChanged(String password) =
      LoginPasswordChangedRequested;
  const factory AuthEvent.loginConfirmPasswordChanged(String confirmPassword) =
      LoginConfirmPasswordChangedRequested;
  const factory AuthEvent.loginFullnameChanged(String fullName) =
      LoginFullnameChangedRequested;
  const factory AuthEvent.signUp() = SignUp;
  const factory AuthEvent.logout() = Logout;

  const factory AuthEvent.updateBookmark() = UpdateBookmarkRequest;
}
