import 'package:jobspot/core/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:jobspot/feature/auth/feature/login/data/models/user_model.dart';
import 'package:jobspot/feature/home/feature/company/data/models/company_model.dart';

abstract class CompanyRepository {
  Future<Either<Failure, List<CompanyModel>>> getListCompany();
  Future<Either<Failure, List<CompanyModel>>> getListCompanyMax();
  Future<Either<Failure, List<CompanyModel>>> getListTopCompany();
  Future<Either<Failure, List<CompanyModel>>> getListCompanySameType(
      {required String type});
  Future<Either<Failure, CompanyModel>> getCompanyById({required String id});
  Future<Either<Failure, Unit>> followCompany({
    required CompanyModel companyModel,
    required UserModel userModel,
  });

  void resetLastDocument() {}
}
