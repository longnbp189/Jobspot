import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jobspot/common/widgets/enum/load_status_enum.dart';
import 'package:jobspot/core/service_locator.dart';
import 'package:jobspot/design/app_format.dart';
import 'package:jobspot/feature/auth/feature/login/data/models/user_model.dart';
import 'package:jobspot/feature/auth/feature/profile/data/models/cv_info_model.dart';
import 'package:jobspot/feature/auth/feature/sign_up/domain/usecases/sign_up_use_case.dart';

part 'sign_up_event.dart';
part 'sign_up_state.dart';
part 'sign_up_bloc.freezed.dart';

class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  SignUpBloc() : super(const SignUpState()) {
    on<PasswordChangedRequested>(_onPasswordChangedRequested);
    on<ConfirmPasswordChangedRequested>(_onConfirmPasswordChangedRequested);
    on<FullnameChangedRequested>(_onFullnameChangedRequested);
    on<EmailChangedRequested>(_onEmailChangedRequested);
    on<PhoneNumberChangedRequested>(_onPhoneNumberChangedRequested);
    on<SignUp>(_onSignUp);
  }

  FutureOr<void> _onPasswordChangedRequested(
      PasswordChangedRequested event, Emitter<SignUpState> emit) {
    emit(state.copyWith(password: event.password));
  }

  FutureOr<void> _onConfirmPasswordChangedRequested(
      ConfirmPasswordChangedRequested event, Emitter<SignUpState> emit) {
    emit(state.copyWith(confirmPassword: event.confirmPassword));
  }

  FutureOr<void> _onFullnameChangedRequested(
      FullnameChangedRequested event, Emitter<SignUpState> emit) {
    emit(state.copyWith(fullName: event.fullName));
  }

  FutureOr<void> _onEmailChangedRequested(
      EmailChangedRequested event, Emitter<SignUpState> emit) {
    emit(state.copyWith(email: event.email));
  }

  FutureOr<void> _onSignUp(SignUp event, Emitter<SignUpState> emit) async {
    emit(state.copyWith(
        loadStatus: LoadStatusEnum.loading, error: '', signUpSuccess: false));
    try {
      final user = await serviceLocator<SignUpUsecase>()
          .signUp(email: state.email.trim(), password: state.password.trim());
      await serviceLocator<SignUpUsecase>().saveUserToFirebase(UserModel(
        // id: state,
        id: user.user!.uid,
        displayName: state.fullName.trim(),
        username: state.email.trim(),
        email: state.email.trim(),
        password: state.password,
        phoneNumber: state.phone,
        isPassword: true
      ));
      emit(state.copyWith(
          signUpSuccess: true, loadStatus: LoadStatusEnum.loaded));
    } on FirebaseAuthException catch (e) {
      emit(state.copyWith(
          error: e.toString(), loadStatus: LoadStatusEnum.loaded));
    } finally {
      emit(state.copyWith(error: '', loadStatus: LoadStatusEnum.notLoad));
    }
  }

  FutureOr<void> _onPhoneNumberChangedRequested(
      PhoneNumberChangedRequested event, Emitter<SignUpState> emit) {
    emit(state.copyWith(phone: event.phoneNumber));
  }
}
