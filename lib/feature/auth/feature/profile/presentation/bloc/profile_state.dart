part of 'profile_bloc.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState(
      {@Default(false) bool isLoading,
      @Default(LoadStatusEnum.notLoad) LoadStatusEnum loadStatus,
      @Default("") String error,
      @Default("") String email,
      @Default("") String phone,
      @Default("") String fullName,
      @Default("") String imageUrl,
      @Default("") String password,
      @Default("") String confirmPassword,
      @Default("") String newPassword,
      @Default("") String username,
      @Default(false) bool updateSuccess,
      @Default(false) bool changePasswordSuccess,
      UserModel? userModel}) = _ProfileState;
}

extension ProfileStateExtension on ProfileState {
  bool isUpdateEmpty() {
    return phone.isEmpty || fullName.isEmpty;
  }

  bool isPasswordEmpty() {
    return password.isEmpty || confirmPassword.isEmpty || newPassword.isEmpty;
  }

  bool isCorrectPassword() {
    return newPassword.trim() == confirmPassword.trim();
  }
}
