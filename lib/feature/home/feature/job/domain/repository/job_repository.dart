import 'package:firebase_auth/firebase_auth.dart';
import 'package:jobspot/core/failure.dart';
import 'package:jobspot/feature/auth/feature/login/data/models/user_model.dart';
import 'package:dartz/dartz.dart';
import 'package:jobspot/feature/home/feature/job/data/models/jobs_model.dart';

abstract class JobRepository {
  Future<Either<Failure, Unit>> getAddress();
  void resetLastDocument() {}
  Future<Either<Failure, List<JobsModel>>> getListJob();
  Future<Either<Failure, List<JobsModel>>> getListJobMax();
  Future<Either<Failure, Unit>> updateBookmark({required UserModel userModel});

}
