part of 'job_bloc.dart';

@freezed
class JobState with _$JobState {
  factory JobState({
    CompanyModel? company,
    JobsModel? job,
    UserModel? user,
    @Default(LoadStatusEnum.notLoad) LoadStatusEnum loadStatus,
    @Default([]) List<ProvinceModel> provinces,
    @Default([]) List<ProvinceModel> searchProvinces,
    @Default([]) List<DistrictModel> districts,
    @Default([]) List<DistrictModel> searchDistricts,
    @Default([]) List<JobCategoryModel> jobCategories,
    @Default([]) List<JobCategoryModel> searchjobCategories,
    @Default([]) List<JobsModel> jobs,
    @Default([]) List<JobsModel> jobBookmark,
    @Default([]) List<JobsModel> searchjobs,
    @Default([]) List<JobsModel> jobsSameType,
    @Default([]) List<JobsModel> jobsSameCompany,
    @Default(false) bool isLoading,
    @Default(true) bool isShimmer,
    @Default(false) bool updateSuccess,
    @Default(false) bool submitSuccess,
    @Default("") String error,
    @Default("") String idProvince,
    @Default("") String provinceText,
    @Default("") String districtText,
    @Default("") String experienceText,
    @Default("") String salaryText,
    @Default("") String jobCategoryText,
    @Default("") String typeText,
    @Default("") String introLetter,
    @Default("") String name,
    @Default("") String phone,
    @Default("") String email,
  }) = _JobState;
}

extension JobStateExtension on JobState {
  String getAddressText() {
    String address = '';
    if (provinceText.isNotEmpty) {
      address = provinceText;
    }

    if (districtText.isNotEmpty) {
      address += ' / $districtText';
    }

    return address;
  }

  bool isLastPage() {
    return jobs.length < 8;
  }

  bool isHasBookmark() {
    return user?.bookmarkIds.contains(job!.id) ?? false;
  }

  String getSubText(int index) {
    switch (index) {
      case 0:
        return getAddressText();
      case 1:
        return experienceText.isNotEmpty ? experienceText : '';
      case 3:
        return jobCategoryText.isNotEmpty ? jobCategoryText : '';
      case 4:
        return typeText.isNotEmpty ? typeText : '';
      default:
        return '';
    }
  }

  bool isSubmitCV() {
    return user!.jobIds.contains(job!.id);
  }

  void clearSubText(JobBloc jobBloc, int index) {
    switch (index) {
      case 0:
        jobBloc.add(const GetTextProvinceRequested(''));
        jobBloc.add(const GetTextDistrictRequested(''));

        break;

      case 1:
        jobBloc.add(const GetTextExperienceRequested(''));

        break;

      case 4:
        jobBloc.add(const GetTextTypeRequested(''));

        break;

      default:
        break;
    }
  }
}
