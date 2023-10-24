part of 'chat_bloc.dart';

@freezed
class ChatState with _$ChatState {
  const factory ChatState({
    @Default(LoadStatusEnum.notLoad) LoadStatusEnum loadStatus,
    UserModel? userModel,
    @Default([]) List<CompanyModel> companyList,
    CompanyModel? company,
    @Default(true) bool isShimmer,
    @Default(false) bool isSendMessage,
    @Default("") String error,
  }) = _ChatState;
}
