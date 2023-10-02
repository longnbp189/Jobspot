part of 'company_bloc.dart';

@freezed
class CompanyState with _$CompanyState {
  factory CompanyState(
      {CompanyModel? company,
      UserModel? user,
      JobsModel? job,
      @Default([]) List<CompanyModel> companies,
      @Default([]) List<JobsModel> jobs,
      @Default([]) List<CompanyModel> companiesFollowing,
      @Default([]) List<CompanyModel> searchCompanies,
      @Default([]) List<CompanyModel> companiesSameType,
      @Default([]) List<JobsModel> jobSameCompanies,
      @Default(false) bool isLoading,
      @Default(true) bool isShimmer,
      @Default(false) bool isFollow,
      @Default("") String error,
      @Default("") String idCompany,
      PagingController<int, CompanyModel>? pagingController}) = _CompanyState;
}

extension CompanyStateExtension on CompanyState {
  bool isFollowCompany() {
    var companyCheck = company?.followerIds.contains(user?.id) ?? false;
    var userCheck = user?.followerIds.contains(company?.id) ?? false;

    return companyCheck && userCheck;
  }

  bool isLastPage() {
    return companies.length < 20;
  }
}
