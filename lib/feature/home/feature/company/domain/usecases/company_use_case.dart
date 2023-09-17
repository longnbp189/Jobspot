import 'package:dartz/dartz.dart';
import 'package:jobspot/core/failure.dart';
import 'package:jobspot/core/service_locator.dart';
import 'package:jobspot/feature/auth/feature/login/data/models/user_model.dart';
import 'package:jobspot/feature/home/feature/company/data/models/company_model.dart';
import 'package:jobspot/feature/home/feature/company/domain/repository/company_repository.dart';

class CompanyUsecase {
  Future<Either<Failure, List<CompanyModel>>> getListCompany() async {
    return await serviceLocator<CompanyRepository>().getListCompany();
  }

  Future<Either<Failure, List<CompanyModel>>> getListCompanyMax() async {
    return await serviceLocator<CompanyRepository>().getListCompanyMax();
  }

  Future<Either<Failure, List<CompanyModel>>> getListTopCompany() async {
    return await serviceLocator<CompanyRepository>().getListTopCompany();
  }

  Future<Either<Failure, List<CompanyModel>>> getListCompanySameType(
      String type) async {
    return await serviceLocator<CompanyRepository>()
        .getListCompanySameType(type: type);
  }

  Future<Either<Failure, CompanyModel>> getCompanyById(
      {required String id}) async {
    return await serviceLocator<CompanyRepository>().getCompanyById(id: id);
  }

  Future<Either<Failure, Unit>> followCompany({
    required CompanyModel companyModel,
    required UserModel userModel,
  }) async {
    return await serviceLocator<CompanyRepository>().followCompany(
      userModel: userModel,
      companyModel: companyModel,
    );
  }

  void resetLastDocument() {
    return serviceLocator<CompanyRepository>().resetLastDocument();
  }
}
