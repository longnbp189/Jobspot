part of 'profile_bloc.dart';

@freezed
class ProfileEvent with _$ProfileEvent {
  const factory ProfileEvent.phoneNumberChanged(String phoneNumber) =
      PhoneNumberChangedRequested;
  const factory ProfileEvent.fullnameChanged(String fullName) =
      FullnameChangedRequested;
  const factory ProfileEvent.imageChanged(String image) = ImageChangedRequested;
  const factory ProfileEvent.updateUser() = UpdateUserRequest;
  const factory ProfileEvent.getUser(UserModel userModel) = GetUserRequest;
}
