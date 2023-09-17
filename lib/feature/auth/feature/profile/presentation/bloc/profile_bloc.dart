import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jobspot/core/service_locator.dart';
import 'package:jobspot/feature/auth/feature/login/data/models/user_model.dart';
import 'package:jobspot/feature/auth/feature/profile/domain/usecases/profile_usecase.dart';
import 'package:jobspot/services/user_cache_service.dart';

part 'profile_event.dart';
part 'profile_state.dart';
part 'profile_bloc.freezed.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  ProfileBloc() : super(const ProfileState()) {
    on<PhoneNumberChangedRequested>(_onPhoneNumberChangedRequested);
    on<FullnameChangedRequested>(_onFullnameChangedRequested);
    on<UpdateUserRequest>(_onUpdateUserRequest);
    on<ImageChangedRequested>(_onImageChangedRequested);
    on<GetUserRequest>(_onGetUserRequest);
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
    emit(state.copyWith(isLoading: true, error: ''));
    try {
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
            password: userModel.password);
        final result =
            await serviceLocator<ProfileUsecase>().updateUserToFirebase(user);

        result.fold(
          (l) => emit(state.copyWith(error: l.toString(), isLoading: false)),
          (r) => emit(state.copyWith(
              updateSuccess: true, isLoading: false, userModel: user)),
        );

        await serviceLocator<UserCacheService>().saveUser(user);
      }
    } on FirebaseAuthException catch (e) {
      emit(state.copyWith(error: e.toString(), isLoading: false));
    } finally {
      emit(state.copyWith(error: '', updateSuccess: false, isLoading: false));
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
}
