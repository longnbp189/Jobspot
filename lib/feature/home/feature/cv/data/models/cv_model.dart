import 'package:freezed_annotation/freezed_annotation.dart';
part 'cv_model.freezed.dart';
part 'cv_model.g.dart';

@freezed
class CVModel with _$CVModel {
  factory CVModel({
    @Default('') final String id,
    @Default('') final String userId,
    @Default('') final String name,
    @Default(0) final int size,
    DateTime? uploadDate,
    @Default('') final String url,
    @Default(false) final bool isMainCV,
    @Default(false) final bool isDelete,
  }) = _CVModel;
  factory CVModel.fromJson(Map<String, Object?> json) =>
      _$CVModelFromJson(json);
}

class MyDateTimes {
  static final DateTime defaultDateTime = DateTime.now();
}
