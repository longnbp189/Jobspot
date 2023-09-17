import 'package:freezed_annotation/freezed_annotation.dart';
part 'job_category_model.freezed.dart';
part 'job_category_model.g.dart';

@freezed
class JobCategoryModel with _$JobCategoryModel {
  factory JobCategoryModel({
    @Default('') final String id,
    @Default('') final String name,
  }) = _JobCategoryModel;
  factory JobCategoryModel.fromJson(Map<String, Object?> json) =>
      _$JobCategoryModelFromJson(json);
}
