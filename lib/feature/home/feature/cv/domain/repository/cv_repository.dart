import 'package:dartz/dartz.dart';
import 'package:jobspot/core/failure.dart';
import 'package:jobspot/feature/home/feature/cv/data/models/cv_model.dart';

abstract class CVRepository {
  Future<Either<Failure, List<CVModel>>> getListCV(String id);
  Future<Either<Failure, Unit>> uploadCV(CVModel cv);
  Future<Either<Failure, List<CVModel>>> updateMainCV(CVModel cv);
  Future<Either<Failure, Unit>> updateNameCV(CVModel cv);
  Future<Either<Failure, Unit>> downloadCV(CVModel cv);
}
