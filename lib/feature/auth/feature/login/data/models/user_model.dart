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
    @Default('') final String token,
  }) = _UserModel;
  factory UserModel.fromJson(Map<String, Object?> json) =>
      _$UserModelFromJson(json);

//   UserEntity toEntity(UserModel mol) {
//     return UserEntity(
//         id: mol.id,
//         username: mol.username,
//         password: mol.password,
//         email: mol.email,
//         displayName: mol.displayName,
//         phoneNumber: mol.phoneNumber,
//         gender: mol.gender,
//         image: mol.image,
//         token: mol.token);
//   }
}
