import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
part 'district_model.freezed.dart';
part 'district_model.g.dart';

@freezed
class DistrictModel with _$DistrictModel {
  factory DistrictModel({
    @JsonKey(name: '_id') @Default('') final String id,
    @Default('') final String name,
    @Default('') final String slug,
    @Default('') final String type,
    @JsonKey(name: 'name_with_type') @Default('') final String nameWithType,
    @Default('') final String code,
    @Default('') final String path,
    @JsonKey(name: 'path_with_type') @Default('') final String pathWithType,
    @JsonKey(name: 'parent_code') @Default('') final String parentCode,
    @Default(false) final bool isDeleted,
  }) = _DistrictModel;
  factory DistrictModel.fromJson(Map<String, Object?> json) =>
      _$DistrictModelFromJson(json);
}
