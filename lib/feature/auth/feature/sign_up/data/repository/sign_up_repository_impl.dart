import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:jobspot/core/failure.dart';
import 'package:jobspot/core/service_locator.dart';
import 'package:jobspot/feature/auth/feature/login/data/models/user_model.dart';
import 'package:jobspot/feature/auth/feature/sign_up/data/datasources/sign_up_datasource.dart';
import 'package:jobspot/feature/auth/feature/sign_up/domain/repository/sign_up_repository.dart';

class SignUpRepositoryImpl implements SignUpRepository {
  


  @override
  Future<UserCredential> signUp({required String email, required String password}) {
       return serviceLocator<SignUpDataSource>().signUp(username: email, password: password);

  }

  @override
  Future<Either<Failure, Unit>> saveUserToFirebase({required UserModel user}) {
          return serviceLocator<SignUpDataSource>().saveUserToFirebase(user);

  }
}
