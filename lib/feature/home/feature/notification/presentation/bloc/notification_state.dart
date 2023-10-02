part of 'notification_bloc.dart';

@freezed
class NotificationState with _$NotificationState {
  const factory NotificationState({
    UserModel? user,
    NotificationModel? notification,
    @Default(LoadStatusEnum.notLoad) LoadStatusEnum loadStatus,
    @Default([]) List<NotificationModel> notifications,
    @Default(false) bool isLoading,
    @Default(true) bool isShimmer,
    @Default(false) bool updateSuccess,
    @Default(0) int unReadCount,
    @Default("") String error,
  }) = _NotificationState;
}

extension NotificationStateExtension on NotificationState {
  bool isLastPage() {
    return notifications.length < 20;
  }
}
