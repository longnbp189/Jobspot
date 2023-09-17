import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jobspot/common/widgets/enum/load_status_enum.dart';
import 'package:jobspot/core/service_locator.dart';
import 'package:jobspot/feature/auth/feature/login/data/models/user_model.dart';
import 'package:jobspot/feature/home/feature/cv/data/models/cv_model.dart';
import 'package:jobspot/feature/home/feature/cv/domain/usecases/cv_use_case.dart';
import 'package:jobspot/services/user_cache_service.dart';

part 'cv_event.dart';
part 'cv_state.dart';
part 'cv_bloc.freezed.dart';

class CvBloc extends Bloc<CvEvent, CvState> {
  CvBloc() : super(const CvState()) {
    on<GetListCVRequested>(_onGetListCVRequested);
    on<UpdateMainCVRequested>(_onUpdateMainCVRequested);
    on<UpdateNameCVRequested>(_onUpdateNameCVRequested);
    on<UploadCVRequested>(_onUploadCVRequested);
    on<NameChangedRequested>(_onNameChangedRequested);
    on<GetCVDetailRequested>(_onGetCVDetailRequested);
    on<DeleteCVRequested>(_onDeleteCVRequested);
    on<DownloadCVRequested>(_onDownloadCVRequested);
  }

  FutureOr<void> _onGetListCVRequested(
      GetListCVRequested event, Emitter<CvState> emit) async {
    emit(state.copyWith(isShimmer: true, error: ''));
    final user = await serviceLocator<UserCacheService>().getUser();
    final result = await serviceLocator<CvUsecase>().getListCV(user?.id ?? '');
    result.fold(
      (l) => emit(state.copyWith(error: l.message, isShimmer: false)),
      (r) => emit(state.copyWith(cvList: r, userModel: user, isShimmer: false)),
    );
  }

  FutureOr<void> _onUpdateMainCVRequested(
      UpdateMainCVRequested event, Emitter<CvState> emit) async {
    emit(state.copyWith(isLoading: true, error: ''));

    final result =
        await serviceLocator<CvUsecase>().getListCV(state.userModel?.id ?? '');
    result.fold(
      (l) => emit(state.copyWith(error: l.message, isShimmer: false)),
      (r) => emit(state.copyWith(isLoading: false)),
    );
  }

  FutureOr<void> _onUpdateNameCVRequested(
      UpdateNameCVRequested event, Emitter<CvState> emit) async {
    try {
      emit(state.copyWith(loadStatus: LoadStatusEnum.loading, error: ''));
      var cv = state.cvModel!.copyWith(name: state.name);

      final result = await serviceLocator<CvUsecase>().updateNameCV(cv);
      result.fold(
        (l) => emit(state.copyWith(
          error: l.message,
          loadStatus: LoadStatusEnum.loaded,
        )),
        (r) {
          var listCv = List<CVModel>.from(state.cvList);
          var index = listCv.indexWhere((cv) => cv.id == state.cvModel?.id);
          if (index != -1) {
            listCv[index] = cv;
            emit(state.copyWith(
                updateSuccess: true,
                loadStatus: LoadStatusEnum.loaded,
                name: '',
                cvList: listCv));
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

  FutureOr<void> _onUploadCVRequested(
      UploadCVRequested event, Emitter<CvState> emit) async {
    try {
      emit(state.copyWith(isLoading: true, error: ''));
      final result = await serviceLocator<CvUsecase>().uploadCV(event.cvModel);
      result.fold(
        (l) => emit(state.copyWith(error: l.message, isLoading: false)),
        (r) => emit(state.copyWith(uploadSuccess: true, isLoading: false)),
      );
    } catch (e) {
      emit(state.copyWith(isLoading: false, error: e.toString()));
    } finally {
      emit(state.copyWith(uploadSuccess: false, isLoading: false, error: ''));
    }
  }

  FutureOr<void> _onNameChangedRequested(
      NameChangedRequested event, Emitter<CvState> emit) {
    emit(state.copyWith(name: event.name));
  }

  FutureOr<void> _onGetCVDetailRequested(
      GetCVDetailRequested event, Emitter<CvState> emit) {
    emit(state.copyWith(cvModel: event.cvModel));
  }

  FutureOr<void> _onDeleteCVRequested(
      DeleteCVRequested event, Emitter<CvState> emit) async {
    try {
      emit(state.copyWith(loadStatus: LoadStatusEnum.loading, error: ''));
      var cv = state.cvModel!.copyWith(isDelete: true);
      final result = await serviceLocator<CvUsecase>().uploadCV(cv);
      result.fold(
        (l) => emit(state.copyWith(
            error: l.message, loadStatus: LoadStatusEnum.loaded)),
        (r) {
          var listCv = List<CVModel>.from(state.cvList);
          listCv.removeWhere((element) => element.id == cv.id);
          emit(state.copyWith(
              deleteSuccess: true,
              loadStatus: LoadStatusEnum.loaded,
              cvList: listCv));
        },
      );
    } catch (e) {
      emit(state.copyWith(
          error: e.toString(), loadStatus: LoadStatusEnum.loaded));
    } finally {
      emit(state.copyWith(
          error: '', loadStatus: LoadStatusEnum.notLoad, deleteSuccess: false));
    }
  }

  FutureOr<void> _onDownloadCVRequested(
      DownloadCVRequested event, Emitter<CvState> emit) async {
    await serviceLocator<CvUsecase>().downloadCV(state.cvModel!);
  }
}
