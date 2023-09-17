import 'package:dartz/dartz.dart';
import 'package:jobspot/core/failure.dart';
import 'package:jobspot/feature/home/feature/notification/data/models/notification_model.dart';

abstract class NotificationRepository {
  Future<Either<Failure, List<NotificationModel>>> getListNotification(
      String userId);
  Future<Either<Failure, Unit>> updateReadNotification(
      NotificationModel notification);
  Future<Either<Failure, Unit>> updateReadAllNotification(String userId);
  Future<Either<Failure, int>> getCountNotificationUnRead(String userId);
  void resetLastDocument() {}
}
