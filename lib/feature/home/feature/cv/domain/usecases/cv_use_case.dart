import 'package:dartz/dartz.dart';
import 'package:jobspot/core/failure.dart';
import 'package:jobspot/core/service_locator.dart';
import 'package:jobspot/feature/home/feature/cv/data/models/cv_model.dart';
import 'package:jobspot/feature/home/feature/cv/domain/repository/cv_repository.dart';

class CvUsecase {
  Future<Either<Failure, List<CVModel>>> getListCV(String id) {
    return serviceLocator<CVRepository>().getListCV(id);
  }

  Future<Either<Failure, List<CVModel>>> updateMainCV(CVModel cv) {
    return serviceLocator<CVRepository>().updateMainCV(cv);
  }

  Future<Either<Failure, Unit>> updateNameCV(CVModel cv) {
    return serviceLocator<CVRepository>().updateNameCV(cv);
  }

  Future<Either<Failure, Unit>> uploadCV(CVModel cv) {
    return serviceLocator<CVRepository>().uploadCV(cv);
  }

  Future<Either<Failure, Unit>> downloadCV(CVModel cv) {
    return serviceLocator<CVRepository>().downloadCV(cv);
  }
}
