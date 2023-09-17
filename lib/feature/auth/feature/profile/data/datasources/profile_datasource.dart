import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:jobspot/core/failure.dart';
import 'package:jobspot/feature/auth/feature/login/data/models/user_model.dart';

abstract class ProfileDataSource {
  Future<Either<Failure, Unit>> updateUserToFirebase(UserModel userModel);
  Future<Either<Failure, UserModel>> getUserById(String id);
  Future<Either<Failure, List<UserModel>>> getListUser();
}

class ProfileDataSourceImpl implements ProfileDataSource {
  final _db = FirebaseFirestore.instance;

  @override
  Future<Either<Failure, Unit>> updateUserToFirebase(
      UserModel userModel) async {
    try {
      await _db.collection("Users").doc(userModel.id).set(userModel.toJson());

      return right(unit);
    } catch (e) {
      return left(ParsingFailure('Save User Firebase Error: ${e.toString()}'));
    }
  }

  @override
  Future<Either<Failure, UserModel>> getUserById(String id) async {
    try {
      final user = await _db.collection("Users").doc(id).get();
      final userData = user.data() as Map<String, dynamic>;
      final userModel = UserModel.fromJson(userData);
      return right(userModel);
    } catch (e) {
      return left(ParsingFailure('Get User Firebase Error: ${e.toString()}'));
    }
  }

  @override
  Future<Either<Failure, List<UserModel>>> getListUser() async {
    try {
      final response = await _db.collection("Users").get();

      final List<UserModel> users = response.docs.map((doc) {
        final data = doc.data();
        return UserModel.fromJson(data);
      }).toList();

      return right(users);
    } catch (e) {
      return left(ParsingFailure('Get User Firebase Error: ${e.toString()}'));
    }
  }
}
