import 'package:freezed_annotation/freezed_annotation.dart';
part 'cv_info.freezed.dart';
part 'cv_info.g.dart';

@freezed
class CVInfoModel with _$CVInfoModel {
  factory  CVInfoModel({
    @Default('') final String email,
    @Default('') final String id,
    @Default('') final String displayName,
    @Default('') final String phoneNumber,
    @Default('') final String cvLink,
    @Default('') final String introducingLetter,
  }) = _CVInfoModel;
  factory CVInfoModel.fromJson(Map<String, Object?> json) =>
      _$CVInfoModelFromJson(json);
}
