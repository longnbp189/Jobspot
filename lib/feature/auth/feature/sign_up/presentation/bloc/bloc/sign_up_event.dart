part of 'sign_up_bloc.dart';

@freezed
class SignUpEvent with _$SignUpEvent {
  const factory SignUpEvent.passwordChanged(String password) =
      PasswordChangedRequested;
  const factory SignUpEvent.confirmPasswordChanged(String confirmPassword) =
      ConfirmPasswordChangedRequested;
  const factory SignUpEvent.fullnameChanged(String fullName) =
      FullnameChangedRequested;
        const factory SignUpEvent.phoneNumberChanged(String phoneNumber) =
      PhoneNumberChangedRequested;
  const factory SignUpEvent.emailChanged(String email) = EmailChangedRequested;
  const factory SignUpEvent.signUp() = SignUp;
}
