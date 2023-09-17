import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
part 'province_model.freezed.dart';
part 'province_model.g.dart';

@freezed
class ProvinceModel with _$ProvinceModel {
  factory ProvinceModel({
    @JsonKey(name: '_id') @Default('') final String id,
    @Default('') final String name,
    @Default('') final String slug,
    @Default('') final String type,
    @JsonKey(name: 'name_with_type') @Default('') final String nameWithType,
    @Default('') final String code,
    @Default(false) final bool isDeleted,
  }) = _ProvinceModel;
  factory ProvinceModel.fromJson(Map<String, Object?> json) =>
      _$ProvinceModelFromJson(json);
}
