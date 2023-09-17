part of 'notification_bloc.dart';

@freezed
class NotificationEvent with _$NotificationEvent {
  const factory NotificationEvent.getListNotification(int pageKey) =
      GetListNotificationRequested;
  const factory NotificationEvent.updateReadAllNotification() =
      UpdateReadAllNotificationRequested;
  const factory NotificationEvent.updateReadNotification(
      NotificationModel notification) = UpdateReadNotificationRequested;
  const factory NotificationEvent.resetLastDocument() =
      ResetLastDocumentRequested;
  const factory NotificationEvent.getCountNotificationUnRead() =
      GetCountNotificationUnReadRequested;
}
