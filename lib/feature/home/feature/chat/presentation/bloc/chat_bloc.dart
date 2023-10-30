import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jobspot/common/widgets/enum/load_status_enum.dart';
import 'package:jobspot/core/service_locator.dart';
import 'package:jobspot/feature/auth/feature/login/data/models/user_model.dart';
import 'package:jobspot/feature/home/feature/company/data/models/company_model.dart';
import 'package:jobspot/feature/home/feature/company/domain/usecases/company_use_case.dart';

part 'chat_bloc.freezed.dart';
part 'chat_event.dart';
part 'chat_state.dart';

class ChatBloc extends Bloc<ChatEvent, ChatState> {
  ChatBloc() : super(const ChatState()) {
    on<GetListMessageRequest>(_onGetListMessageRequest);
    on<GetDetailMessageRequest>(_onGetDetailMessageRequest);
    on<GetDetailCompanyRequest>(_onGetDetailCompanyRequest);
  }

  FutureOr<void> _onGetListMessageRequest(
      GetListMessageRequest event, Emitter<ChatState> emit) async {
    emit(state.copyWith(isShimmer: true, error: ''));
    final result = await serviceLocator<CompanyUsecase>().getListCompanyMax();
    List<CompanyModel> companyList = [];
    List<CompanyModel> companyMessage = [];
    result.fold(
      (l) => emit(state.copyWith(error: l.message, isShimmer: false)),
      (r) => companyList = r,
    );
    for (var element in companyList) {
      for (var e in event.jobIds) {
        if (e == element.id) {
          companyMessage.add(element);
        }
      }
    }
    // companyMessage.sort((a, b) => a.,);
    emit(state.copyWith(companyList: companyMessage, isShimmer: false));
  }

  FutureOr<void> _onGetDetailMessageRequest(
      GetDetailMessageRequest event, Emitter<ChatState> emit) {}

  FutureOr<void> _onGetDetailCompanyRequest(
      GetDetailCompanyRequest event, Emitter<ChatState> emit) {
    emit(state.copyWith(company: event.companyModel));
  }
}
