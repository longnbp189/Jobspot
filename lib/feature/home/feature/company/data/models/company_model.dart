import 'package:freezed_annotation/freezed_annotation.dart';
part 'company_model.freezed.dart';
part 'company_model.g.dart';

@freezed
class CompanyModel with _$CompanyModel {
  // const UserModel._();

  factory CompanyModel({
    @Default('') final String id,
    @Default('') final String username,
    @Default('') final String password,
    @Default('') final String email,
    @Default('') final String displayName,
    @Default('') final String type,
    @Default('') final String link,
    @Default(0) final int follower,
    @Default(0) final int employee,
    @Default('') final String image,
    @Default('') final String address,
    @Default('') final String aboutCompany,
    @Default([]) final List<String> followerIds,
  }) = _CompanyModel;
  factory CompanyModel.fromJson(Map<String, Object?> json) =>
      _$CompanyModelFromJson(json);
}
