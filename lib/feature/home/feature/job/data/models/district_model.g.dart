// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'district_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DistrictModel _$$_DistrictModelFromJson(Map<String, dynamic> json) =>
    _$_DistrictModel(
      id: json['_id'] as String? ?? '',
      name: json['name'] as String? ?? '',
      slug: json['slug'] as String? ?? '',
      type: json['type'] as String? ?? '',
      nameWithType: json['name_with_type'] as String? ?? '',
      code: json['code'] as String? ?? '',
      path: json['path'] as String? ?? '',
      pathWithType: json['path_with_type'] as String? ?? '',
      parentCode: json['parent_code'] as String? ?? '',
      isDeleted: json['isDeleted'] as bool? ?? false,
    );

Map<String, dynamic> _$$_DistrictModelToJson(_$_DistrictModel instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'name': instance.name,
      'slug': instance.slug,
      'type': instance.type,
      'name_with_type': instance.nameWithType,
      'code': instance.code,
      'path': instance.path,
      'path_with_type': instance.pathWithType,
      'parent_code': instance.parentCode,
      'isDeleted': instance.isDeleted,
    };
