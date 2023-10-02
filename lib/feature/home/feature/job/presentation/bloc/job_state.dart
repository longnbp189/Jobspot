part of 'job_bloc.dart';

@freezed
class JobState with _$JobState {
  factory JobState({
    CompanyModel? company,
    JobsModel? job,
    UserModel? user,
    SalaryRange? salaryRange,
    @Default(LoadStatusEnum.notLoad) LoadStatusEnum loadStatus,
    @Default([]) List<ProvinceModel> provinces,
    @Default([]) List<ProvinceModel> searchProvinces,
    @Default([]) List<DistrictModel> districts,
    @Default([]) List<DistrictModel> searchDistricts,
    @Default([]) List<JobCategoryModel> jobCategories,
    @Default([]) List<JobCategoryModel> searchjobCategories,
    @Default([]) List<JobsModel> jobs,
    @Default([]) List<JobsModel> jobsBest,
    @Default([]) List<JobsModel> jobsFilter,
    @Default([]) List<JobsModel> jobsApplied,
    @Default([]) List<JobsModel> jobBookmark,
    @Default([]) List<JobsModel> searchjobs,
    @Default([]) List<JobsModel> jobsSameType,
    @Default([]) List<JobsModel> jobsSameCompany,
    @Default([]) List<CVInfoModel> cvInfoList,
    @Default({}) Map<String, CVInfoModel> cvInfoMap,
    @Default(false) bool isLoading,
    @Default(true) bool isShimmer,
    @Default(false) bool updateSuccess,
    @Default(false) bool submitSuccess,
    @Default("") String error,
    @Default(0) int jobLength,
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
    @Default("") String searchText,
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
    return jobs.length < 20 - jobLength;
  }

  bool isHasBookmark() {
    return user?.bookmarkIds.contains(job?.id ?? '') ?? false;
  }

  String getSubText(int index) {
    switch (index) {
      case 0:
        return getAddressText();
      case 1:
        return experienceText.isNotEmpty ? experienceText : '';
      case 2:
        return salaryText.isNotEmpty ? salaryText : '';
      case 3:
        return jobCategoryText.isNotEmpty ? jobCategoryText : '';
      case 4:
        return typeText.isNotEmpty ? typeText : '';
      default:
        return '';
    }
  }

  bool isSubmitCV() {
    return user!.jobIds.contains(job?.id ?? '');
  }

  bool isHasSubText() {
    return provinceText.isNotEmpty ||
        districtText.isNotEmpty ||
        experienceText.isNotEmpty ||
        salaryText.isNotEmpty ||
        jobCategoryText.isNotEmpty ||
        typeText.isNotEmpty;
  }

  bool isEmptyLocation(JobsModel job) {
    return provinceText.isNotEmpty
        ? AppFormat.nonUnicode(job.location).toLowerCase() ==
            (AppFormat.nonUnicode(provinceText).toLowerCase())
        : true;
  }

  bool isEmptyExperience(JobsModel job) {
    return experienceText.isNotEmpty
        ? job.experienceYear.toLowerCase() == (experienceText.toLowerCase())
        : true;
  }

  // bool isEmptySalary(JobsModel job) {
  //   return
  //       //  salaryText.isNotEmpty
  //       //     ? job.salary.toLowerCase() == (salaryText.toLowerCase())
  //       //     :
  //       true;
  // }

  bool isEmptyJobCategory(JobsModel job) {
    return jobCategoryText.isNotEmpty
        ? job.category.toLowerCase() == (jobCategoryText.toLowerCase())
        : true;
  }

  bool isEmptyJobType(JobsModel job) {
    return typeText.isNotEmpty
        ? job.type.toLowerCase() == (typeText.toLowerCase())
        : true;
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
      case 2:
        jobBloc.add(GetTextSalaryRequested(
            SalaryRange(id: 0, title: '', min: 0, max: 0)));

        break;
      case 3:
        jobBloc.add(const GetTextJobCategoryRequested(''));

        break;

      case 4:
        jobBloc.add(const GetTextTypeRequested(''));

        break;
    }
  }

  void clearAllSubText(JobBloc jobBloc) {
    jobBloc.add(const GetTextProvinceRequested(''));
    jobBloc.add(const GetTextDistrictRequested(''));
    jobBloc.add(const GetTextExperienceRequested(''));
    jobBloc.add(
        GetTextSalaryRequested(SalaryRange(id: 0, title: '', min: 0, max: 0)));

    jobBloc.add(const GetTextJobCategoryRequested(''));
    jobBloc.add(const GetTextTypeRequested(''));
  }
}
