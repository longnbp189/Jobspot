part of 'job_bloc.dart';

@freezed
class JobEvent with _$JobEvent {
  const factory JobEvent.getAddress() = GetAddressRequested;
  const factory JobEvent.getJobCategory() = GetJobCategoryRequested;
  const factory JobEvent.searchJobCategory(String searchText) =
      SearchJobCategoryRequested;
  const factory JobEvent.searchJob(String searchText) = SearchJobRequested;
  const factory JobEvent.getProvinces() = GetProvincesRequested;
  const factory JobEvent.getTextProvince(String text) =
      GetTextProvinceRequested;
  const factory JobEvent.getTextExperience(String text) =
      GetTextExperienceRequested;
  const factory JobEvent.getTextdistrict(String text) =
      GetTextDistrictRequested;

  const factory JobEvent.getTextSalary(SalaryRange salaryRange) =
      GetTextSalaryRequested;

  const factory JobEvent.getTextJobCategory(String text) =
      GetTextJobCategoryRequested;

  const factory JobEvent.getTextType(String text) = GetTextTypeRequested;

  const factory JobEvent.initProvinces() = InitProvincesRequested;
  const factory JobEvent.initDistricts() = InitDistrictsRequested;
  const factory JobEvent.getDistricts(String id) = GetDistrictsRequested;
  const factory JobEvent.searchDistricts(String text) =
      SearchDistrictsRequested;
  const factory JobEvent.searchProvinces(String text) =
      SearchProvincesRequested;
  const factory JobEvent.searchCompany(String searchText) =
      SearchCompanyRequested;

  const factory JobEvent.getListJob(int pageKey) = GetListJobRequested;
  const factory JobEvent.removeListBookmark() = RemoveListBookmarkRequested;
  const factory JobEvent.getListJobMax(UserModel userModel) =
      GetListJobMaxRequested;

  const factory JobEvent.getSearchText(String text) = GetSearchTextRequested;

  const factory JobEvent.resetLastDocument() = ResetLastDocumentRequested;
  const factory JobEvent.updateBookmark() = UpdateBookmarkRequest;
  const factory JobEvent.getJobById(JobsModel job, UserModel userModel) =
      GetJobByIdRequested;
  const factory JobEvent.getJobSameType() = GetJobSameTypeRequest;
  const factory JobEvent.getListBestJob() = GetListBestJobRequest;
  const factory JobEvent.getJobSameCompany() = GetJobSameCompanyRequest;
  const factory JobEvent.getJobByFilter() = GetJobByFilterRequest;
  const factory JobEvent.submitCV(CVInfoModel cvInfoModel) = SubmitCVRequest;

  const factory JobEvent.getTextEmailJob(String text) =
      GetTextEmailJobRequested;
  const factory JobEvent.getTextPhoneJob(String text) =
      GetTextPhoneJobRequested;
  const factory JobEvent.getTextNameJob(String text) = GetTextNameJobRequested;
  const factory JobEvent.getTextIntroLetterJob(String text) =
      GetTextIntroLetterJobRequested;

  const factory JobEvent.getListApplyJob(UserModel userModel) =
      GetListApplyJobRequested;
}
