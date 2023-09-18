// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cv_info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CVInfoModel _$$_CVInfoModelFromJson(Map<String, dynamic> json) =>
    _$_CVInfoModel(
      email: json['email'] as String? ?? '',
      id: json['id'] as String? ?? '',
      displayName: json['displayName'] as String? ?? '',
      phoneNumber: json['phoneNumber'] as String? ?? '',
      cvLink: json['cvLink'] as String? ?? '',
      cvId: json['cvId'] as String? ?? '',
      userId: json['userId'] as String? ?? '',
      cvName: json['cvName'] as String? ?? '',
      jobId: json['jobId'] as String? ?? '',
      introducingLetter: json['introducingLetter'] as String? ?? '',
      sendDate: json['sendDate'] == null
          ? null
          : DateTime.parse(json['sendDate'] as String),
    );

Map<String, dynamic> _$$_CVInfoModelToJson(_$_CVInfoModel instance) =>
    <String, dynamic>{
      'email': instance.email,
      'id': instance.id,
      'displayName': instance.displayName,
      'phoneNumber': instance.phoneNumber,
      'cvLink': instance.cvLink,
      'cvId': instance.cvId,
      'userId': instance.userId,
      'cvName': instance.cvName,
      'jobId': instance.jobId,
      'introducingLetter': instance.introducingLetter,
      'sendDate': instance.sendDate?.toIso8601String(),
    };
