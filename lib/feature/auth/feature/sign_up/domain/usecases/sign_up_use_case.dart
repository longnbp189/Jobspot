import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:jobspot/core/failure.dart';
import 'package:jobspot/core/service_locator.dart';
import 'package:jobspot/feature/auth/feature/login/data/models/user_model.dart';
import 'package:jobspot/feature/auth/feature/sign_up/domain/repository/sign_up_repository.dart';

class SignUpUsecase {
  Future<UserCredential> signUp(
      {required String email, required String password}) async {
    return await serviceLocator<SignUpRepository>()
        .signUp(email: email, password: password);
  }

  Future<Either<Failure, Unit>> saveUserToFirebase(UserModel userModel) async {
    return await serviceLocator<SignUpRepository>()
        .saveUserToFirebase(user: userModel);
  }
}
