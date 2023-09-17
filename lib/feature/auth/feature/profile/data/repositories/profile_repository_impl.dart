import 'package:dartz/dartz.dart';
import 'package:jobspot/core/failure.dart';
import 'package:jobspot/core/service_locator.dart';
import 'package:jobspot/feature/auth/feature/login/data/models/user_model.dart';
import 'package:jobspot/feature/auth/feature/profile/data/datasources/profile_datasource.dart';
import 'package:jobspot/feature/auth/feature/profile/domain/repositories/profile_repository.dart';

class ProfileRepositoryImpl implements ProfileRepository {
  @override
  Future<Either<Failure, Unit>> updateUserToFirebase(
      {required UserModel user}) {
    return serviceLocator<ProfileDataSource>().updateUserToFirebase(user);
  }

  @override
  Future<Either<Failure, UserModel>> getUserById(String id) {
    return serviceLocator<ProfileDataSource>().getUserById(id);
  }

  @override
  Future<Either<Failure, List<UserModel>>> getListUser() {
    return serviceLocator<ProfileDataSource>().getListUser();
  }
}
