import 'package:freezed_annotation/freezed_annotation.dart';
part 'notification_model.freezed.dart';
part 'notification_model.g.dart';

@freezed
class NotificationModel with _$NotificationModel {
  // const UserModel._();

  factory NotificationModel({
    @Default('') final String id,
    @Default('') final String body,
    @Default('') final String title,
    @Default('') final String type,
    @Default(true) final bool status,
    @Default('') final String userId,
    @Default('') final String userName,
    @Default('') final String companyId,
    @Default('') final String companyName,
    @Default('') final String imageCompany,
    @Default('') final String postId,
    @Default('') final String postName,
    DateTime? sendDateTime,
  }) = _NotificationModel;
  factory NotificationModel.fromJson(Map<String, Object?> json) =>
      _$NotificationModelFromJson(json);
}
