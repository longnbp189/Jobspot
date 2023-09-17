import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:jobspot/core/failure.dart';
import 'package:jobspot/feature/auth/feature/login/data/models/user_model.dart';

abstract class SignUpDataSource {
  Future<UserCredential> signUp(
      {required String username, required String password});
  Future<Either<Failure, Unit>> saveUserToFirebase(UserModel userModel);
  Future<bool> isUserIdInCollection(String userId);
}

class SignUpDataSourceImpl implements SignUpDataSource {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final _db = FirebaseFirestore.instance;

  @override
  Future<UserCredential> signUp(
      {required String username, required String password}) async {
    return await _auth.createUserWithEmailAndPassword(
        email: username, password: password);
  }

  @override
  Future<Either<Failure, Unit>> saveUserToFirebase(UserModel userModel) async {
    try {
      final isUserExisted = await isUserIdInCollection(userModel.id);
      if (!isUserExisted) {
        await _db.collection("Users").doc(userModel.id).set(userModel.toJson());
      }
      return right(unit);
    } catch (e) {
      return left(ParsingFailure('Save User Firebase Error: ${e.toString()}'));
    }
  }

  @override
  Future<bool> isUserIdInCollection(String userId) async {
    final QuerySnapshot<Map<String, dynamic>> snapshot =
        await FirebaseFirestore.instance.collection('Users').get();

    final List<String> userKeys =
        snapshot.docs.map((DocumentSnapshot<Map<String, dynamic>> doc) {
      return doc.id;
    }).toList();

    return userKeys.contains(userId);
  }

  // @override
  // Future<Either<Failure, UserModel>> saveUserToFirebase(UserEntity userEntity) {
  //   _db.collection("Users").add( ).whenComplete(() => null).catchError(

  //   );
  // }
}
