// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserModel _$$_UserModelFromJson(Map<String, dynamic> json) => _$_UserModel(
      id: json['id'] as String? ?? '',
      username: json['username'] as String? ?? '',
      password: json['password'] as String? ?? '',
      email: json['email'] as String? ?? '',
      displayName: json['displayName'] as String? ?? '',
      phoneNumber: json['phoneNumber'] as String? ?? '',
      gender: json['gender'] as String? ?? '',
      image: json['image'] as String? ?? '',
      introducingLetter: json['introducingLetter'] as String? ?? '',
      followerIds: (json['followerIds'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      bookmarkIds: (json['bookmarkIds'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      jobIds: (json['jobIds'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      token: json['token'] as String? ?? '',
    );

Map<String, dynamic> _$$_UserModelToJson(_$_UserModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'password': instance.password,
      'email': instance.email,
      'displayName': instance.displayName,
      'phoneNumber': instance.phoneNumber,
      'gender': instance.gender,
      'image': instance.image,
      'introducingLetter': instance.introducingLetter,
      'followerIds': instance.followerIds,
      'bookmarkIds': instance.bookmarkIds,
      'jobIds': instance.jobIds,
      'token': instance.token,
    };
