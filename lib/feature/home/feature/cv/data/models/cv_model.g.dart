// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cv_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CVModel _$$_CVModelFromJson(Map<String, dynamic> json) => _$_CVModel(
      id: json['id'] as String? ?? '',
      userId: json['userId'] as String? ?? '',
      name: json['name'] as String? ?? '',
      size: json['size'] as int? ?? 0,
      uploadDate: json['uploadDate'] == null
          ? null
          : DateTime.parse(json['uploadDate'] as String),
      url: json['url'] as String? ?? '',
      isMainCV: json['isMainCV'] as bool? ?? false,
      isDelete: json['isDelete'] as bool? ?? false,
    );

Map<String, dynamic> _$$_CVModelToJson(_$_CVModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'name': instance.name,
      'size': instance.size,
      'uploadDate': instance.uploadDate?.toIso8601String(),
      'url': instance.url,
      'isMainCV': instance.isMainCV,
      'isDelete': instance.isDelete,
    };
