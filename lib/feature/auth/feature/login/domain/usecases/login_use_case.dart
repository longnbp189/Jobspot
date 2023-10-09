import 'package:collection/collection.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:jobspot/core/failure.dart';
import 'package:jobspot/core/service_locator.dart';
import 'package:jobspot/feature/auth/feature/login/data/models/user_model.dart';
import 'package:jobspot/feature/auth/feature/login/domain/repository/auth_repository.dart';
import 'package:jobspot/feature/auth/feature/profile/domain/repositories/profile_repository.dart';
import 'package:jobspot/feature/auth/feature/profile/domain/usecases/profile_usecase.dart';
import 'package:jobspot/feature/auth/feature/sign_up/domain/usecases/sign_up_use_case.dart';
import 'package:jobspot/services/user_cache_service.dart';

class LoginUsecase {
  Future<Either<Failure, UserModel>> loginWithGoogle() async {
    // final response = await serviceLocator<AuthRepository>().loginWithGoogle();
    // if (response.isRight()) {
    //   response.getOrElse(() => UserModel());
    //   //persist user authorization in request
    //   // serviceLocator<Request>().updateAuthorization(responseUser.token);
    // }
    // return response;

    final response = await serviceLocator<AuthRepository>().loginWithGoogle();
    final userIds = await serviceLocator<ProfileUsecase>().getListUser();

    if (response.isRight()) {
      final remoteUser = response.getOrElse(() => UserModel());
      if (userIds.isRight()) {
        final user = userIds.getOrElse(() => []);

        var result =
            user.firstWhereOrNull((element) => element.id == remoteUser.id);

        if (result != null) {
          await serviceLocator<UserCacheService>().saveUser(result);
        } else {
          await serviceLocator<SignUpUsecase>().saveUserToFirebase(remoteUser);
          await serviceLocator<UserCacheService>().saveUser(remoteUser);
        }
      }
    }
    return response;
  }

  Future<Either<Failure, UserModel>> loginWithUsernameAndPassword(
      {required String username, required String password}) async {
    // final response = await serviceLocator<AuthRepository>()
    //     .loginWithUsernameAndPassword(username: username, password: password);
    // // if (response.isRight()) {
    // //   response.getOrElse(() => UserModel());
    // //   //persist user authorization in request
    // //   // serviceLocator<Request>().updateAuthorization(responseUser.token);
    // // }
    // return response;
    final response = await serviceLocator<AuthRepository>()
        .loginWithUsernameAndPassword(username: username, password: password);

    if (response.isRight()) {
      final remoteUser = response.getOrElse(() => UserModel());
      final user =
          await serviceLocator<ProfileRepository>().getUserById(remoteUser.id);
      // Save the user to the UserCacheService
      if (user.isRight()) {
        final userModel = user.getOrElse(() => UserModel());
        await serviceLocator<UserCacheService>().saveUser(userModel);
        return user;
      }
    }

    return response;
  }

  Future<void> logout(String userId) async {
    await serviceLocator<AuthRepository>().logout();
    await serviceLocator<UserCacheService>().deleteUser(userId);
  }

  Future<UserModel?> checkIfUserLoggedIn() async {
    final user = await serviceLocator<UserCacheService>().getUser();
    return user;
  }

  Future<Either<Failure, Unit>> forgotPassword({required String email}) async {
    return await serviceLocator<AuthRepository>().forgotPassword(email: email);
  }

  Future<UserCredential> signUp(
      {required String email, required String password}) async {
    return await serviceLocator<AuthRepository>()
        .signUp(email: email, password: password);
  }

  Future<Either<Failure, Unit>> changePassword(
      {required String password}) async {
    return await serviceLocator<AuthRepository>()
        .changePassword(password: password);
  }
}
