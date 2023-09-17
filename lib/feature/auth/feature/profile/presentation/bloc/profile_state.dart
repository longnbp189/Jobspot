part of 'profile_bloc.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState(
      {@Default(false) bool isLoading,
      @Default("") String error,
      @Default("") String email,
      @Default("") String phone,
      @Default("") String fullName,
      @Default("") String imageUrl,
      @Default(false) bool updateSuccess,
      UserModel? userModel}) = _ProfileState;
}

extension ProfileStateExtension on ProfileState {
  bool isUpdateEmpty() {
    return phone.isEmpty || fullName.isEmpty;
  }
}
