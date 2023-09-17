import 'package:get_it/get_it.dart';
import 'package:jobspot/feature/auth/feature/login/data/datasources/user_remote_datasource.dart';
import 'package:jobspot/feature/auth/feature/login/data/repository/auth_repository_impl.dart';
import 'package:jobspot/feature/auth/feature/login/domain/repository/auth_repository.dart';
import 'package:jobspot/feature/auth/feature/login/domain/usecases/login_use_case.dart';
import 'package:jobspot/feature/auth/feature/profile/data/datasources/profile_datasource.dart';
import 'package:jobspot/feature/auth/feature/profile/data/repositories/profile_repository_impl.dart';
import 'package:jobspot/feature/auth/feature/profile/domain/repositories/profile_repository.dart';
import 'package:jobspot/feature/auth/feature/profile/domain/usecases/profile_usecase.dart';
import 'package:jobspot/feature/auth/feature/sign_up/data/datasources/sign_up_datasource.dart';
import 'package:jobspot/feature/auth/feature/sign_up/data/repository/sign_up_repository_impl.dart';
import 'package:jobspot/feature/auth/feature/sign_up/domain/repository/sign_up_repository.dart';
import 'package:jobspot/feature/auth/feature/sign_up/domain/usecases/sign_up_use_case.dart';
import 'package:jobspot/feature/home/feature/company/data/datasources/company_datasource.dart';
import 'package:jobspot/feature/home/feature/company/data/repository/company_repository_impl.dart';
import 'package:jobspot/feature/home/feature/company/domain/repository/company_repository.dart';
import 'package:jobspot/feature/home/feature/company/domain/usecases/company_use_case.dart';
import 'package:jobspot/feature/home/feature/cv/data/datasources/cv_datasource.dart';
import 'package:jobspot/feature/home/feature/cv/data/repository/cv_repository_impl.dart';
import 'package:jobspot/feature/home/feature/cv/domain/repository/cv_repository.dart';
import 'package:jobspot/feature/home/feature/cv/domain/usecases/cv_use_case.dart';
import 'package:jobspot/feature/home/feature/job/data/datasources/job_remote_datasource.dart';
import 'package:jobspot/feature/home/feature/job/data/repository/job_repository_impl.dart';
import 'package:jobspot/feature/home/feature/job/domain/repository/job_repository.dart';
import 'package:jobspot/feature/home/feature/job/domain/usecases/job_use_case.dart';
import 'package:jobspot/feature/home/feature/notification/data/datasources/notification_datasource.dart';
import 'package:jobspot/feature/home/feature/notification/data/repository/notification_repository_impl.dart';
import 'package:jobspot/feature/home/feature/notification/domain/repository/notification_repository.dart';
import 'package:jobspot/feature/home/feature/notification/domain/usecases/notification_use_case.dart';
import 'package:jobspot/services/user_cache_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

final serviceLocator = GetIt.instance;
Future<void> setUpServiceLocator() async {
  //check if user logged in or not
  serviceLocator.registerFactory<AuthRepository>(
    () => AuthRepositoryImpl(),
  );
  serviceLocator.registerFactory<SignUpRepository>(
    () => SignUpRepositoryImpl(),
  );
  serviceLocator.registerFactory<ProfileRepository>(
    () => ProfileRepositoryImpl(),
  );
  serviceLocator.registerFactory<CompanyRepository>(
    () => CompanyRepositoryImpl(),
  );
  serviceLocator.registerFactory<CVRepository>(
    () => CVRepositoryImpl(),
  );
  serviceLocator.registerFactory<JobRepository>(
    () => JobRepositoryImpl(),
  );
  serviceLocator.registerFactory<NotificationRepository>(
    () => NotificationRepositoryImpl(),
  );
  //usecase
  serviceLocator.registerFactory<LoginUsecase>(() => LoginUsecase());
  serviceLocator.registerFactory<SignUpUsecase>(() => SignUpUsecase());
  serviceLocator.registerFactory<ProfileUsecase>(() => ProfileUsecase());
  serviceLocator.registerFactory<CompanyUsecase>(() => CompanyUsecase());
  serviceLocator.registerFactory<CvUsecase>(() => CvUsecase());
  serviceLocator.registerFactory<JobUsecase>(() => JobUsecase());
  serviceLocator
      .registerFactory<NotificationUsecase>(() => NotificationUsecase());

  //datasource
  serviceLocator
      .registerFactory<UserRemoteDataSource>(() => UserRemoteDataSourceImpl());
  serviceLocator
      .registerFactory<SignUpDataSource>(() => SignUpDataSourceImpl());
  serviceLocator
      .registerFactory<ProfileDataSource>(() => ProfileDataSourceImpl());
  serviceLocator
      .registerFactory<CompanyDataSource>(() => CompanyDataSourceImp());
  serviceLocator.registerFactory<CvDataSource>(() => CvDataSourceImpl());
  serviceLocator
      .registerFactory<JobRemoteDataSource>(() => JobRemoteDataSourceImpl());
  serviceLocator.registerFactory<NotificationDataSource>(
      () => NotificationDataSourceImpl());

  //services
  serviceLocator.registerSingleton<UserCacheService>(UserCacheService());

  //external
  final sharedPreferences = await SharedPreferences.getInstance();
  serviceLocator.registerFactory<SharedPreferences>(() => sharedPreferences);
  // // request
  // serviceLocator.registerSingleton<Request>(Request());
}
