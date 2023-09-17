// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cv_info.dart';

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
      introducingLetter: json['introducingLetter'] as String? ?? '',
    );

Map<String, dynamic> _$$_CVInfoModelToJson(_$_CVInfoModel instance) =>
    <String, dynamic>{
      'email': instance.email,
      'id': instance.id,
      'displayName': instance.displayName,
      'phoneNumber': instance.phoneNumber,
      'cvLink': instance.cvLink,
      'introducingLetter': instance.introducingLetter,
    };
