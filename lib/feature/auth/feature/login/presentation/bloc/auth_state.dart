part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  // AuthState._();
  factory AuthState({
    UserModel? user,
    @Default(false) bool isLoading,
    @Default("") String error,
    @Default("") String email,
    @Default("") String password,
    @Default("") String forgotEmail,
    @Default("") String confirmPassword,
    @Default("") String fullName,
    @Default(false) bool sendEmailSuccess,
    bool? signUpSuccess,
  }) = _AuthState;

  // bool get isEmpty => username.isEmpty || password.isEmpty;
}

extension AuthStateExtension on AuthState {
  bool isEmpty() {
    return email.isEmpty || password.isEmpty;
  }

  bool isForgotEmailEmpty() {
    return forgotEmail.isEmpty;
  }

  bool isSignUpEmpty() {
    return email.isEmpty ||
        password.isEmpty ||
        fullName.isEmpty ||
        confirmPassword.isEmpty;
  }

  bool isCorrectPassword() {
    return password.trim() == confirmPassword.trim();
  }
}
