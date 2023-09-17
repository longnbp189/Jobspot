import 'package:dartz/dartz.dart';
import 'package:jobspot/core/failure.dart';
import 'package:jobspot/core/service_locator.dart';
import 'package:jobspot/feature/home/feature/notification/data/models/notification_model.dart';
import 'package:jobspot/feature/home/feature/notification/domain/repository/notification_repository.dart';

class NotificationUsecase {
  Future<Either<Failure, List<NotificationModel>>> getListNotification(
      String userId) {
    return serviceLocator<NotificationRepository>().getListNotification(userId);
  }

  Future<Either<Failure, Unit>> updateReadAllNotification(String userId) {
    return serviceLocator<NotificationRepository>()
        .updateReadAllNotification(userId);
  }

  Future<Either<Failure, Unit>> updateReadNotification(
      NotificationModel notification) {
    return serviceLocator<NotificationRepository>()
        .updateReadNotification(notification);
  }

  Future<Either<Failure, int>> getCountNotificationUnRead(String userId) {
    return serviceLocator<NotificationRepository>()
        .getCountNotificationUnRead(userId);
  }

  void resetLastDocument() {
    return serviceLocator<NotificationRepository>().resetLastDocument();
  }
}
