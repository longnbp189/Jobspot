// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'jobs_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_JobsModel _$$_JobsModelFromJson(Map<String, dynamic> json) => _$_JobsModel(
      id: json['id'] as String? ?? '',
      title: json['title'] as String? ?? '',
      description: json['description'] as String? ?? '',
      requirement: json['requirement'] as String? ?? '',
      benefit: json['benefit'] as String? ?? '',
      companyId: json['companyId'] as String? ?? '',
      companyImage: json['companyImage'] as String? ?? '',
      companyName: json['companyName'] as String? ?? '',
      companyLocation: json['companyLocation'] as String? ?? '',
      minSalary: (json['minSalary'] as num?)?.toDouble() ?? 0,
      maxSalary: (json['maxSalary'] as num?)?.toDouble() ?? 0,
      location: json['location'] as String? ?? '',
      experienceYear: json['experienceYear'] as String? ?? '',
      category: json['category'] as String? ?? '',
      type: json['type'] as String? ?? '',
      quantity: json['quantity'] as String? ?? '',
      startDate: json['startDate'] == null
          ? null
          : DateTime.parse(json['startDate'] as String),
      endDate: json['endDate'] == null
          ? null
          : DateTime.parse(json['endDate'] as String),
      gender: json['gender'] as int? ?? 0,
      status: json['status'] as bool? ?? false,
    );

Map<String, dynamic> _$$_JobsModelToJson(_$_JobsModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'requirement': instance.requirement,
      'benefit': instance.benefit,
      'companyId': instance.companyId,
      'companyImage': instance.companyImage,
      'companyName': instance.companyName,
      'companyLocation': instance.companyLocation,
      'minSalary': instance.minSalary,
      'maxSalary': instance.maxSalary,
      'location': instance.location,
      'experienceYear': instance.experienceYear,
      'category': instance.category,
      'type': instance.type,
      'quantity': instance.quantity,
      'startDate': instance.startDate?.toIso8601String(),
      'endDate': instance.endDate?.toIso8601String(),
      'gender': instance.gender,
      'status': instance.status,
    };
