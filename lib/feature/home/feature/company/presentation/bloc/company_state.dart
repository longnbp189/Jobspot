part of 'company_bloc.dart';

@freezed
class CompanyState with _$CompanyState {
  factory CompanyState(
      {CompanyModel? company,
      UserModel? user,
      @Default([]) List<CompanyModel> companies,
      @Default([]) List<CompanyModel> searchCompanies,
      @Default([]) List<CompanyModel> companiesSameType,
      @Default(false) bool isLoading,
      @Default(true) bool isShimmer,
      @Default(false) bool isFollow,
      @Default("") String error,
      @Default("") String idCompany,
      PagingController<int, CompanyModel>? pagingController}) = _CompanyState;
}

extension CompanyStateExtension on CompanyState {
  bool isFollowCompany() {
    return company?.followerIds.contains(user?.id) ?? false;
  }

  bool isLastPage() {
    return companies.length < 8;
  }
}
