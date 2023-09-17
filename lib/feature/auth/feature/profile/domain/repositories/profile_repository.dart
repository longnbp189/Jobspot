import 'package:dartz/dartz.dart';
import 'package:jobspot/core/failure.dart';
import 'package:jobspot/feature/auth/feature/login/data/models/user_model.dart';

abstract class ProfileRepository {
  Future<Either<Failure, Unit>> updateUserToFirebase({required UserModel user});
  Future<Either<Failure, UserModel>> getUserById(String id);
  Future<Either<Failure, List<UserModel>>> getListUser();
}
