part of 'company_bloc.dart';

@freezed
class CompanyEvent with _$CompanyEvent {
  const factory CompanyEvent.getListCompany(int pageKey) =
      GetListCompanyRequested;
  const factory CompanyEvent.getListCompanyMax() = GetListCompanyMaxRequested;
  const factory CompanyEvent.searchCompany(String searchText) =
      SearchCompanyRequested;
  const factory CompanyEvent.getListCompanySameType(int pageKey) =
      GetListCompanySameTypeRequested;
  const factory CompanyEvent.getListTopCompany() = GetListTopCompanyRequested;
  const factory CompanyEvent.resetLastDocument() = ResetLastDocumentRequested;
  // const factory CompanyEvent.getCompanyById(String id) =
  const factory CompanyEvent.getCompanyById(
      CompanyModel company, UserModel userModel) = GetCompanyByIdRequested;
  const factory CompanyEvent.followCompany() = FollowCompanyRequested;
  const factory CompanyEvent.getListCompanyFollowing(UserModel userModel) =
      GetListCompanyFollowingRequested;
  const factory CompanyEvent.unFollowCompany(CompanyModel company) =
      UnFollowCompanyRequested;
}
