// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'province_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProvinceModel _$$_ProvinceModelFromJson(Map<String, dynamic> json) =>
    _$_ProvinceModel(
      id: json['_id'] as String? ?? '',
      name: json['name'] as String? ?? '',
      slug: json['slug'] as String? ?? '',
      type: json['type'] as String? ?? '',
      nameWithType: json['name_with_type'] as String? ?? '',
      code: json['code'] as String? ?? '',
      isDeleted: json['isDeleted'] as bool? ?? false,
    );

Map<String, dynamic> _$$_ProvinceModelToJson(_$_ProvinceModel instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'name': instance.name,
      'slug': instance.slug,
      'type': instance.type,
      'name_with_type': instance.nameWithType,
      'code': instance.code,
      'isDeleted': instance.isDeleted,
    };
