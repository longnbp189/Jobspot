import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:jobspot/core/failure.dart';
import 'package:jobspot/feature/auth/feature/login/data/models/user_model.dart';

abstract class SignUpRepository {
  Future<UserCredential> signUp(
      {required String email, required String password});
  Future<Either<Failure, Unit>> saveUserToFirebase({required UserModel user});
}
