import 'package:dartz/dartz.dart';
import 'package:jobspot/core/failure.dart';
import 'package:jobspot/core/service_locator.dart';
import 'package:jobspot/feature/auth/feature/login/data/models/user_model.dart';
import 'package:jobspot/feature/auth/feature/profile/data/models/cv_info_model.dart';
import 'package:jobspot/feature/home/feature/job/data/datasources/job_remote_datasource.dart';
import 'package:jobspot/feature/home/feature/job/data/models/jobs_model.dart';
import 'package:jobspot/feature/home/feature/job/domain/repository/job_repository.dart';

class JobRepositoryImpl implements JobRepository {
  @override
  Future<Either<Failure, Unit>> getAddress() {
    return serviceLocator<JobRemoteDataSource>().getAddress();
  }

  @override
  Future<Either<Failure, List<JobsModel>>> getListJob() {
    return serviceLocator<JobRemoteDataSource>().getListJob();
  }

  @override
  void resetLastDocument() {
    return serviceLocator<JobRemoteDataSource>().resetLastDocument();
  }

  @override
  Future<Either<Failure, List<JobsModel>>> getListJobMax() {
    return serviceLocator<JobRemoteDataSource>().getListJobMax();
  }

  @override
  Future<Either<Failure, Unit>> updateBookmark({required UserModel userModel}) {
    return serviceLocator<JobRemoteDataSource>()
        .updateBookMark(userModel: userModel);
  }

  @override
  Future<Either<Failure, Unit>> submitCV(cvInfoModel) {
    return serviceLocator<JobRemoteDataSource>().submitCV(cvInfoModel);
  }

  @override
  Future<Either<Failure, Map<String, CVInfoModel>>> getListApplyJob(
      {required UserModel userModel}) {
    return serviceLocator<JobRemoteDataSource>()
        .getListApplyJob(userModel: userModel);
  }
}
