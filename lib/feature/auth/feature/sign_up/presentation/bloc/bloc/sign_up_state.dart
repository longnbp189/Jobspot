part of 'sign_up_bloc.dart';

@freezed
class SignUpState with _$SignUpState {
  const factory SignUpState({
    UserModel? user,
    @Default(false) bool isLoading,
    @Default(LoadStatusEnum.notLoad) LoadStatusEnum loadStatus,
    @Default("") String error,
    @Default("") String email,
    @Default("") String password,
    @Default("") String forgotEmail,
    @Default("") String confirmPassword,
    @Default("") String fullName,
    @Default("") String phone,
    @Default(false) bool sendEmailSuccess,
    bool? signUpSuccess,
  }) = _SignUpState;
}

extension SignUpStateExtension on SignUpState {
  bool isSignUpEmpty() {
    return email.isEmpty ||
        password.isEmpty ||
        fullName.isEmpty ||
        phone.isEmpty ||
        confirmPassword.isEmpty;
  }

  bool isCorrectPhone() {
    return phone.length == 12;
  }

  bool isCorrectPassword() {
    return password.trim() == confirmPassword.trim();
  }
}
