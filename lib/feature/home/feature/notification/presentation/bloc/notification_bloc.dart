import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jobspot/common/widgets/enum/load_status_enum.dart';
import 'package:jobspot/core/service_locator.dart';
import 'package:jobspot/feature/auth/feature/login/data/models/user_model.dart';
import 'package:jobspot/feature/home/feature/notification/data/models/notification_model.dart';
import 'package:jobspot/feature/home/feature/notification/domain/usecases/notification_use_case.dart';
import 'package:jobspot/services/user_cache_service.dart';

part 'notification_bloc.freezed.dart';
part 'notification_event.dart';
part 'notification_state.dart';

class NotificationBloc extends Bloc<NotificationEvent, NotificationState> {
  NotificationBloc() : super(const NotificationState()) {
    on<GetListNotificationRequested>(_onGetListNotificationRequested);
    on<UpdateReadAllNotificationRequested>(
        _onUpdateReadAllNotificationRequested);
    on<UpdateReadNotificationRequested>(_onUpdateReadNotificationRequested);
    on<ResetLastDocumentRequested>(_onResetLastDocumentRequested);
    on<GetCountNotificationUnReadRequested>(
        _onGetCountNotificationUnReadRequested);
  }

  FutureOr<void> _onGetListNotificationRequested(
      GetListNotificationRequested event,
      Emitter<NotificationState> emit) async {
    emit(state.copyWith(isShimmer: true, error: ''));
    final user = await serviceLocator<UserCacheService>().getUser();

    final result = await serviceLocator<NotificationUsecase>()
        .getListNotification(user?.id ?? '');

    final resultCountNoti = await serviceLocator<NotificationUsecase>()
        .getCountNotificationUnRead(user?.id ?? '');

    if (resultCountNoti.isRight()) {
      final remoteUser = resultCountNoti.getOrElse(() => 0);

      emit(state.copyWith(unReadCount: remoteUser));
    }

    result.fold((l) => emit(state.copyWith(error: l.message, isShimmer: false)),
        (r) => emit(state.copyWith(notifications: r, isShimmer: false)));
  }

  FutureOr<void> _onUpdateReadAllNotificationRequested(
      UpdateReadAllNotificationRequested event,
      Emitter<NotificationState> emit) async {
    try {
      emit(state.copyWith(
          loadStatus: LoadStatusEnum.loading, error: '', notification: null));
      final user = await serviceLocator<UserCacheService>().getUser();

      final result = await serviceLocator<NotificationUsecase>()
          .updateReadAllNotification(user?.id ?? '');
      result.fold(
        (l) => emit(state.copyWith(
          error: l.message,
          loadStatus: LoadStatusEnum.loaded,
        )),
        (r) => emit(state.copyWith(
            updateSuccess: true,
            loadStatus: LoadStatusEnum.loaded,
            unReadCount: 0,
            notifications: [])),
      );
    } catch (e) {
      emit(state.copyWith(
          error: e.toString(), loadStatus: LoadStatusEnum.loaded));
    } finally {
      emit(state.copyWith(
          error: '', loadStatus: LoadStatusEnum.notLoad, updateSuccess: false));
    }
  }

  FutureOr<void> _onUpdateReadNotificationRequested(
      UpdateReadNotificationRequested event,
      Emitter<NotificationState> emit) async {
    try {
      emit(state.copyWith(
          loadStatus: LoadStatusEnum.loading,
          error: '',
          notification: event.notification));
      var notification = state.notification!.copyWith(status: false);

      final result = await serviceLocator<NotificationUsecase>()
          .updateReadNotification(notification);
      result.fold(
        (l) => emit(state.copyWith(
          error: l.message,
          loadStatus: LoadStatusEnum.loaded,
        )),
        (r) {
          var unReadCount = state.unReadCount;
          var listNotification =
              List<NotificationModel>.from(state.notifications);
          var index = listNotification
              .indexWhere((cv) => cv.id == state.notification?.id);
          if (index != -1) {
            listNotification[index] = notification;
            emit(state.copyWith(
                updateSuccess: true,
                notification: notification,
                unReadCount: unReadCount - 1,
                loadStatus: LoadStatusEnum.loaded,
                notifications: listNotification));
          }
        },
      );
    } catch (e) {
      emit(state.copyWith(
          error: e.toString(), loadStatus: LoadStatusEnum.loaded));
    } finally {
      emit(state.copyWith(
          error: '', loadStatus: LoadStatusEnum.notLoad, updateSuccess: false));
    }
  }

  FutureOr<void> _onResetLastDocumentRequested(
      ResetLastDocumentRequested event, Emitter<NotificationState> emit) {
    serviceLocator<NotificationUsecase>().resetLastDocument();
  }

  FutureOr<void> _onGetCountNotificationUnReadRequested(
      GetCountNotificationUnReadRequested event,
      Emitter<NotificationState> emit) async {
    emit(state.copyWith(isShimmer: true, error: ''));
    final user = await serviceLocator<UserCacheService>().getUser();

    final result = await serviceLocator<NotificationUsecase>()
        .getCountNotificationUnRead(user?.id ?? '');
    result.fold(
      (l) => emit(state.copyWith(error: l.message, isShimmer: false)),
      (r) => emit(state.copyWith(unReadCount: r, isShimmer: false)),
    );
  }
}
