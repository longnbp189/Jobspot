import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:jobspot/core/failure.dart';
import 'package:jobspot/core/service_locator.dart';
import 'package:jobspot/feature/auth/feature/login/data/datasources/user_remote_datasource.dart';
import 'package:jobspot/feature/auth/feature/login/data/models/user_model.dart';
import 'package:jobspot/feature/auth/feature/login/domain/repository/auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {
  @override
  Future<Either<Failure, UserModel>> getUser() {
    // TODO: implement getUser
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, UserModel>> loginWithGoogle() {
    return serviceLocator<UserRemoteDataSource>().loginWithGoogle();
  }

  @override
  Future<void> logout() {
    return serviceLocator<UserRemoteDataSource>().logout();
  }

  @override
  Future<Either<Failure, UserModel>> loginWithUsernameAndPassword(
      {required String username, required String password}) {
    return serviceLocator<UserRemoteDataSource>()
        .loginWithUsernameAndPassword(username: username, password: password);
  }

  @override
  Future<Either<Failure, Unit>> forgotPassword({required String email}) {
    return serviceLocator<UserRemoteDataSource>().forgotPassword(email: email);
  }

  @override
  Future<UserCredential> signUp(
      {required String email, required String password}) {
    return serviceLocator<UserRemoteDataSource>()
        .signUp(username: email, password: password);
  }

  
}
