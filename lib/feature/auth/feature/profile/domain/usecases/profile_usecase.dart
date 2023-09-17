import 'package:dartz/dartz.dart';
import 'package:jobspot/core/failure.dart';
import 'package:jobspot/core/service_locator.dart';
import 'package:jobspot/feature/auth/feature/login/data/models/user_model.dart';
import 'package:jobspot/feature/auth/feature/profile/domain/repositories/profile_repository.dart';
import 'package:jobspot/services/user_cache_service.dart';

class ProfileUsecase {
  // Future<UserCredential> signUp(
  //     {required String email, required String password}) async {
  //   return await serviceLocator<SignUpRepository>()
  //       .signUp(email: email, password: password);
  // }

  Future<Either<Failure, Unit>> updateUserToFirebase(
      UserModel userModel) async {
   return  await serviceLocator<ProfileRepository>()
        .updateUserToFirebase(user: userModel);

  }

  Future<Either<Failure, UserModel>> getUserById(String id) async {
    return await serviceLocator<ProfileRepository>().getUserById(id);
  }

  Future<Either<Failure, List<UserModel>>> getListUser() async {
    return await serviceLocator<ProfileRepository>().getListUser();
  }
}
