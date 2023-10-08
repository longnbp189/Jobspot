import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jobspot/common/widgets/enum/load_status_enum.dart';
import 'package:jobspot/core/service_locator.dart';
import 'package:jobspot/feature/auth/feature/login/data/models/user_model.dart';
import 'package:jobspot/feature/auth/feature/profile/domain/usecases/profile_usecase.dart';
import 'package:jobspot/services/user_cache_service.dart';

part 'profile_bloc.freezed.dart';
part 'profile_event.dart';
part 'profile_state.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  ProfileBloc() : super(const ProfileState()) {
    on<PhoneNumberChangedRequested>(_onPhoneNumberChangedRequested);
    on<FullnameChangedRequested>(_onFullnameChangedRequested);
    on<UpdateUserRequest>(_onUpdateUserRequest);
    on<ImageChangedRequested>(_onImageChangedRequested);
    on<GetUserRequest>(_onGetUserRequest);
    on<LoadingRequested>(_onLoadingRequested);
    on<PasswordChangedRequested>(_onPasswordChangedRequested);
    on<ConfirmPasswordChangedRequested>(_onConfirmPasswordChangedRequested);
    on<NewPasswordChangedRequested>(_onNewPasswordChangedRequested);
    on<ChangePasswordRequest>(_onChangePasswordRequest);
  }

  FutureOr<void> _onPhoneNumberChangedRequested(
      PhoneNumberChangedRequested event, Emitter<ProfileState> emit) {
    emit(state.copyWith(phone: event.phoneNumber));
  }

  FutureOr<void> _onFullnameChangedRequested(
      FullnameChangedRequested event, Emitter<ProfileState> emit) {
    emit(state.copyWith(fullName: event.fullName));
  }

  FutureOr<void> _onUpdateUserRequest(
      UpdateUserRequest event, Emitter<ProfileState> emit) async {
    try {
      emit(state.copyWith(loadStatus: LoadStatusEnum.loading, error: ''));

      var userModel = state.userModel;
      if (userModel != null) {
        var user = UserModel(
          // id: state,
          id: userModel.id,
          displayName: state.fullName.isNotEmpty
              ? state.fullName
              : userModel.displayName,
          username: userModel.email,
          email: userModel.email,
          image: state.imageUrl.isNotEmpty ? state.imageUrl : userModel.image,
          phoneNumber: state.phone,
          followerIds: userModel.followerIds,
          bookmarkIds: userModel.bookmarkIds,
          introducingLetter: userModel.introducingLetter,
          gender: userModel.gender,
          jobIds: userModel.jobIds,
          password: userModel.password,
        );
        final result =
            await serviceLocator<ProfileUsecase>().updateUserToFirebase(user);

        result.fold(
          (l) => emit(state.copyWith(
              error: l.toString(), loadStatus: LoadStatusEnum.loaded)),
          (r) => emit(state.copyWith(
              updateSuccess: true,
              loadStatus: LoadStatusEnum.loaded,
              userModel: user)),
        );

        await serviceLocator<UserCacheService>().saveUser(user);
      }
    } on FirebaseAuthException catch (e) {
      emit(state.copyWith(
          error: e.toString(), loadStatus: LoadStatusEnum.loaded));
    } finally {
      emit(state.copyWith(
          error: '', updateSuccess: false, loadStatus: LoadStatusEnum.notLoad));
    }
  }

  FutureOr<void> _onImageChangedRequested(
      ImageChangedRequested event, Emitter<ProfileState> emit) {
    emit(state.copyWith(imageUrl: event.image));
  }

  FutureOr<void> _onGetUserRequest(
      GetUserRequest event, Emitter<ProfileState> emit) {
    emit(state.copyWith(userModel: event.userModel));
  }

  FutureOr<void> _onLoadingRequested(
      LoadingRequested event, Emitter<ProfileState> emit) {
    emit(state.copyWith(loadStatus: LoadStatusEnum.loading));
  }

  FutureOr<void> _onPasswordChangedRequested(
      PasswordChangedRequested event, Emitter<ProfileState> emit) {
    emit(state.copyWith(password: event.text));
  }

  FutureOr<void> _onConfirmPasswordChangedRequested(
      ConfirmPasswordChangedRequested event, Emitter<ProfileState> emit) {
    emit(state.copyWith(confirmPassword: event.text));
  }

  FutureOr<void> _onNewPasswordChangedRequested(
      NewPasswordChangedRequested event, Emitter<ProfileState> emit) {
    emit(state.copyWith(newPassword: event.text));
  }

  FutureOr<void> _onChangePasswordRequest(
      ChangePasswordRequest event, Emitter<ProfileState> emit) async {}
}
