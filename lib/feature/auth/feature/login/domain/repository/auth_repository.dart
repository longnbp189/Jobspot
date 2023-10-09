import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:jobspot/core/failure.dart';
import 'package:jobspot/feature/auth/feature/login/data/models/user_model.dart';

abstract class AuthRepository {
  Future<Either<Failure, UserModel>> getUser();
  Future<Either<Failure, UserModel>> loginWithUsernameAndPassword({
    required String username,
    required String password,
  });
  Future<Either<Failure, UserModel>> loginWithGoogle();
  Future<Either<Failure, Unit>> forgotPassword({required String email});
  Future<Either<Failure, Unit>> changePassword({required String password});
  Future<UserCredential> signUp(
      {required String email, required String password});
  Future<void> logout();
}
