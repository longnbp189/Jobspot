import 'package:freezed_annotation/freezed_annotation.dart';

part 'message_model.freezed.dart';
part 'message_model.g.dart';

@freezed
class MessageModel with _$MessageModel {
  // const UserModel._();

  factory MessageModel({
    @Default('') final String senderId,
    @Default('') final String senderEmail,
    @Default('') final String receiverId,
    @Default('') final String message,
    DateTime? sendTime,
  }) = _MessageModel;
  factory MessageModel.fromJson(Map<String, Object?> json) =>
      _$MessageModelFromJson(json);
}
//