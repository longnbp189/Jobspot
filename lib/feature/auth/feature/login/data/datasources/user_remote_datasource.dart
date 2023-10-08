import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:jobspot/core/failure.dart';
import 'package:jobspot/feature/auth/feature/login/data/models/user_model.dart';

abstract class UserRemoteDataSource {
  Future<Either<Failure, UserModel>> loginWithGoogle();
  Future<Either<Failure, Unit>> forgotPassword({required String email});

  Future<Either<Failure, UserModel>> loginWithUsernameAndPassword(
      {required String username, required String password});
  Future<UserCredential> signUp(
      {required String username, required String password});
  Future<void> logout();
}

GoogleSignInAccount? googleUser;

class UserRemoteDataSourceImpl implements UserRemoteDataSource {
  final GoogleSignIn _googleSignIn = GoogleSignIn(scopes: ['email']);
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final _db = FirebaseFirestore.instance;

  @override
  Future<Either<Failure, UserModel>> loginWithGoogle() async {
    // try {

    //   if (response.statusCode == 200) {
    //     return Right(User.fromJson(response.data));
    //   }
    //   return Left(ConnectionFailure(response.data['message']));
    // } catch (e) {
    //   debugPrint('LoginRemoteDataSourceImplError $e');
    //   return const Left(
    //     Exception('Exception Occured in LoginRemoteDataSourceImpl'),
    //   );
    // }
    try {
      googleUser = await _googleSignIn.signIn();
      if (googleUser != null) {
        final user = UserModel(
          id: googleUser!.id,
          displayName: googleUser!.displayName ?? '',
          email: googleUser!.email,
          username: googleUser!.email,
          image: googleUser!.photoUrl ?? '',
        );
        return right(user);
      } else {
        return left(const ConnectionFailure('Connection google login failure'));
      }
    } catch (e) {
      return left(ParsingFailure('Google Sign-In Error: $e'));
    }
  }

  @override
  Future<Either<Failure, UserModel>> loginWithUsernameAndPassword(
      {required String username, required String password}) async {
    try {
      final UserCredential authResult = await _auth.signInWithEmailAndPassword(
        email: username,
        password: password,
      );

      final User? user = authResult.user;
      if (user != null) {
        final userFirebase = await _db.collection("Users").doc(user.uid).get();
        final userData = userFirebase.data() as Map<String, dynamic>;
        final userModel = UserModel.fromJson(userData);

        return right(userModel);
      } else {
        return left(const ConnectionFailure('Login failed.'));
      }
    } catch (e) {
      return left(ParsingFailure('Google Sign-In Error: $e'));
    }
  }

  @override
  Future<void> logout() async {
    if (googleUser != null) {
      await _googleSignIn.disconnect();
      googleUser = null;
    } else {
      await _auth.signOut();
      googleUser = null;
    }
  }

  @override
  Future<Either<Failure, Unit>> forgotPassword({required String email}) async {
    try {
      await _auth.sendPasswordResetEmail(email: email);
      return right(unit);
    } on FirebaseAuthException catch (e) {
      return left(ParsingFailure('Send Email Error: $e'));
    }
  }

  @override
  Future<UserCredential> signUp(
      {required String username, required String password}) async {
    return await _auth.createUserWithEmailAndPassword(
        email: username, password: password);
  }
}
