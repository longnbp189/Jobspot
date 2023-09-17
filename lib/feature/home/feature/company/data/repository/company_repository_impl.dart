import 'package:dartz/dartz.dart';
import 'package:jobspot/core/failure.dart';
import 'package:jobspot/core/service_locator.dart';
import 'package:jobspot/feature/auth/feature/login/data/models/user_model.dart';
import 'package:jobspot/feature/home/feature/company/data/datasources/company_datasource.dart';
import 'package:jobspot/feature/home/feature/company/data/models/company_model.dart';
import 'package:jobspot/feature/home/feature/company/domain/repository/company_repository.dart';

class CompanyRepositoryImpl implements CompanyRepository {
  @override
  Future<Either<Failure, Unit>> followCompany({
    required CompanyModel companyModel,
    required UserModel userModel,
  }) {
    return serviceLocator<CompanyDataSource>().followCompany(
      companyModel: companyModel,
      userModel: userModel,
    );
  }

  @override
  Future<Either<Failure, CompanyModel>> getCompanyById({required String id}) {
    return serviceLocator<CompanyDataSource>().getCompanyById(id: id);
  }

  @override
  Future<Either<Failure, List<CompanyModel>>> getListCompany() {
    return serviceLocator<CompanyDataSource>().getListCompany();
  }

  @override
  Future<Either<Failure, List<CompanyModel>>> getListTopCompany() {
    return serviceLocator<CompanyDataSource>().getListTopCompany();
  }

  @override
  Future<Either<Failure, List<CompanyModel>>> getListCompanySameType(
      {required String type}) {
    return serviceLocator<CompanyDataSource>().getListCompanySameType(type);
  }

  @override
  void resetLastDocument() {
    return serviceLocator<CompanyDataSource>().resetLastDocument();
  }

  @override
  Future<Either<Failure, List<CompanyModel>>> getListCompanyMax() {
    return serviceLocator<CompanyDataSource>().getListCompanyMax();
  }
}
