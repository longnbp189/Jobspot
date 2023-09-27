import 'package:freezed_annotation/freezed_annotation.dart';
part 'jobs_model.freezed.dart';
part 'jobs_model.g.dart';

@freezed
class JobsModel with _$JobsModel {
  factory JobsModel({
    @Default('') final String id,
    @Default('') final String title,
    @Default('') final String description,
    @Default('') final String requirement,
    @Default('') final String benefit,
    @Default('') final String companyId,
    @Default('') final String companyImage,
    @Default('') final String companyName,
    @Default('') final String companyLocation,
    @Default(0) final double minSalary,
    @Default(0) final double maxSalary,
    @Default('') final String location,
    @Default('') final String experienceYear,
    @Default('') final String category,
    @Default('') final String type,
    @Default('') final String quantity,
    DateTime? startDate,
    DateTime? endDate,
    @Default(0) final int gender,
    @Default(false) final bool status,
  }) = _JobsModel;
  factory JobsModel.fromJson(Map<String, Object?> json) =>
      _$JobsModelFromJson(json);
}
