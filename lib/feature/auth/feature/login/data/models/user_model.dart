import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  // const UserModel._();

  factory UserModel({
    @Default('') final String id,
    @Default('') final String username,
    @Default('') final String password,
    @Default('') final String email,
    @Default('') final String displayName,
    @Default('') final String phoneNumber,
    @Default('') final String gender,
    @Default('') final String image,
    @Default('') final String introducingLetter,
    @Default([]) final List<String> followerIds,
    @Default([]) final List<String> bookmarkIds,
    @Default([]) final List<String> jobIds,
    @Default([]) final List<String> companyIdsMessage,
    @Default('') final String token,
    @Default(false) final bool isPassword,
  }) = _UserModel;
  factory UserModel.fromJson(Map<String, Object?> json) =>
      _$UserModelFromJson(json);
}
