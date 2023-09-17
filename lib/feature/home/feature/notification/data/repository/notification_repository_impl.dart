import 'package:dartz/dartz.dart';
import 'package:jobspot/core/failure.dart';
import 'package:jobspot/core/service_locator.dart';
import 'package:jobspot/feature/home/feature/notification/data/datasources/notification_datasource.dart';
import 'package:jobspot/feature/home/feature/notification/data/models/notification_model.dart';
import 'package:jobspot/feature/home/feature/notification/domain/repository/notification_repository.dart';

class NotificationRepositoryImpl implements NotificationRepository {
  @override
  Future<Either<Failure, List<NotificationModel>>> getListNotification(
      String userId) {
    return serviceLocator<NotificationDataSource>().getListNotification(userId);
  }

  @override
  Future<Either<Failure, Unit>> updateReadAllNotification(String userId) {
    return serviceLocator<NotificationDataSource>()
        .updateReadAllNotification(userId);
  }

  @override
  Future<Either<Failure, Unit>> updateReadNotification(
      NotificationModel notification) {
    return serviceLocator<NotificationDataSource>()
        .updateReadNotification(notification);
  }

  @override
  void resetLastDocument() {
    return serviceLocator<NotificationDataSource>().resetLastDocument();
  }

  @override
  Future<Either<Failure, int>> getCountNotificationUnRead(String userId) {
    return serviceLocator<NotificationDataSource>()
        .getCountNotificationUnRead(userId);
  }
}
