// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NotificationModel _$$_NotificationModelFromJson(Map<String, dynamic> json) =>
    _$_NotificationModel(
      id: json['id'] as String? ?? '',
      body: json['body'] as String? ?? '',
      title: json['title'] as String? ?? '',
      type: json['type'] as String? ?? '',
      status: json['status'] as bool? ?? true,
      userId: json['userId'] as String? ?? '',
      userName: json['userName'] as String? ?? '',
      companyId: json['companyId'] as String? ?? '',
      companyName: json['companyName'] as String? ?? '',
      imageCompany: json['imageCompany'] as String? ?? '',
      postId: json['postId'] as String? ?? '',
      postName: json['postName'] as String? ?? '',
      sendDateTime: json['sendDateTime'] == null
          ? null
          : DateTime.parse(json['sendDateTime'] as String),
    );

Map<String, dynamic> _$$_NotificationModelToJson(
        _$_NotificationModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'body': instance.body,
      'title': instance.title,
      'type': instance.type,
      'status': instance.status,
      'userId': instance.userId,
      'userName': instance.userName,
      'companyId': instance.companyId,
      'companyName': instance.companyName,
      'imageCompany': instance.imageCompany,
      'postId': instance.postId,
      'postName': instance.postName,
      'sendDateTime': instance.sendDateTime?.toIso8601String(),
    };
