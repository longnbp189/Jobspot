part of 'chat_bloc.dart';

@freezed
class ChatEvent with _$ChatEvent {
  const factory ChatEvent.getListMessage(List<String> jobIds) = GetListMessageRequest;
  const factory ChatEvent.getDetailMessage(List<String> jobIds) = GetDetailMessageRequest;
  const factory ChatEvent.getDetailCompany(CompanyModel companyModel) = GetDetailCompanyRequest;
}