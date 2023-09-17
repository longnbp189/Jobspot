part of 'cv_bloc.dart';

@freezed
class CvState with _$CvState {
  const factory CvState({
    UserModel? userModel,
    CVModel? cvModel,
    @Default(false) bool isLoading,
    @Default(LoadStatusEnum.notLoad) LoadStatusEnum loadStatus,
    @Default(true) bool isShimmer,
    @Default("") String error,
    @Default("") String name,
    @Default([]) List<CVModel> cvList,
    @Default(false) bool uploadSuccess,
    @Default(false) bool deleteSuccess,
    @Default(false) bool updateSuccess,
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
