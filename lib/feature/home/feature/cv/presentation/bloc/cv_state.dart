part of 'cv_bloc.dart';

@freezed
class CvState with _$CvState {
  const factory CvState({
    UserModel? userModel,
    CVModel? cvModel,
    JobsModel? jobModel,
    CVModel? cvMainModel,
    @Default(false) bool isLoading,
    @Default(LoadStatusEnum.notLoad) LoadStatusEnum loadStatus,
    @Default(true) bool isShimmer,
    @Default("") String error,
    @Default("") String name,
    @Default([]) List<CVModel> cvList,
    @Default(false) bool uploadSuccess,
    @Default(false) bool deleteSuccess,
    @Default(false) bool updateSuccess,
    @Default(false) bool updateMainSuccess,
    bool? signUpSuccess,
  }) = _CvState;
}

extension CvStateExtension on CvState {
  bool isMaxFile() {
    return cvList.length >= 3;
  }

  bool isUpdateName() {
    return name.isNotEmpty;
  }
}
