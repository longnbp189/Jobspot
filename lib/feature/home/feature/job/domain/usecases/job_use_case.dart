import 'package:dartz/dartz.dart';
import 'package:jobspot/core/failure.dart';
import 'package:jobspot/core/service_locator.dart';
import 'package:jobspot/feature/auth/feature/login/data/models/user_model.dart';
import 'package:jobspot/feature/auth/feature/profile/data/models/cv_info_model.dart';
import 'package:jobspot/feature/home/feature/job/data/models/jobs_model.dart';
import 'package:jobspot/feature/home/feature/job/domain/repository/job_repository.dart';

class JobUsecase {
  Future<Either<Failure, Unit>> getAddress() async {
    return await serviceLocator<JobRepository>().getAddress();
  }

  Future<Either<Failure, List<JobsModel>>> getListJob() async {
    return await serviceLocator<JobRepository>().getListJob();
  }

  Future<Either<Failure, List<JobsModel>>> getListJobMax() async {
    return await serviceLocator<JobRepository>().getListJobMax();
  }

  void resetLastDocument() {
    return serviceLocator<JobRepository>().resetLastDocument();
  }

  Future<Either<Failure, Unit>> updateBookmark(
      {required UserModel userModel}) async {
    return await serviceLocator<JobRepository>()
        .updateBookmark(userModel: userModel);
  }

  Future<Either<Failure, Unit>> submitCV(CVInfoModel cvInfoModel) async {
    return await serviceLocator<JobRepository>().submitCV(cvInfoModel);
  }

  Future<Either<Failure, Map<String, CVInfoModel>>> getListApplyJob(
      UserModel userModel) async {
    return await serviceLocator<JobRepository>()
        .getListApplyJob(userModel: userModel);
  }

  Future<Either<Failure, List<JobsModel>>> getListBestJob() async {
    return await serviceLocator<JobRepository>().getListBestJob();
  }
}
