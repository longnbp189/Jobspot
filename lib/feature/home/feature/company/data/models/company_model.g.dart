// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CompanyModel _$$_CompanyModelFromJson(Map<String, dynamic> json) =>
    _$_CompanyModel(
      id: json['id'] as String? ?? '',
      username: json['username'] as String? ?? '',
      password: json['password'] as String? ?? '',
      email: json['email'] as String? ?? '',
      displayName: json['displayName'] as String? ?? '',
      type: json['type'] as String? ?? '',
      link: json['link'] as String? ?? '',
      follower: json['follower'] as int? ?? 0,
      employee: json['employee'] as int? ?? 0,
      image: json['image'] as String? ?? '',
      address: json['address'] as String? ?? '',
      aboutCompany: json['aboutCompany'] as String? ?? '',
      followerIds: (json['followerIds'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_CompanyModelToJson(_$_CompanyModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'password': instance.password,
      'email': instance.email,
      'displayName': instance.displayName,
      'type': instance.type,
      'link': instance.link,
      'follower': instance.follower,
      'employee': instance.employee,
      'image': instance.image,
      'address': instance.address,
      'aboutCompany': instance.aboutCompany,
      'followerIds': instance.followerIds,
    };
