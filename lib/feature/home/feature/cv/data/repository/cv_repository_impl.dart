import 'package:dartz/dartz.dart';
import 'package:jobspot/core/failure.dart';
import 'package:jobspot/core/service_locator.dart';
import 'package:jobspot/feature/home/feature/cv/data/datasources/cv_datasource.dart';
import 'package:jobspot/feature/home/feature/cv/data/models/cv_model.dart';
import 'package:jobspot/feature/home/feature/cv/domain/repository/cv_repository.dart';

class CVRepositoryImpl implements CVRepository {
  @override
  Future<Either<Failure, List<CVModel>>> getListCV(String id) {
    return serviceLocator<CvDataSource>().getListCV(id);
  }

  @override
  Future<Either<Failure, List<CVModel>>> updateMainCV(CVModel cv) {
    return serviceLocator<CvDataSource>().updateMainCV(cv);
  }

  @override
  Future<Either<Failure, Unit>> updateNameCV(CVModel cv) {
    return serviceLocator<CvDataSource>().updateNameCV(cv);
  }

  @override
  Future<Either<Failure, Unit>> uploadCV(CVModel cv) {
    return serviceLocator<CvDataSource>().uploadCV(cv);
  }

  @override
  Future<Either<Failure, Unit>> downloadCV(CVModel cv) {
    return serviceLocator<CvDataSource>().downloadCV(cv);
  }
}
