part of 'cv_bloc.dart';

@freezed
class CvEvent with _$CvEvent {
  const factory CvEvent.getListCV() = GetListCVRequested;
  const factory CvEvent.getCvDetail(CVModel cvModel) = GetCVDetailRequested;
  const factory CvEvent.updateMainCV() = UpdateMainCVRequested;
  const factory CvEvent.deleteCV() = DeleteCVRequested;
  const factory CvEvent.updateNameCV() = UpdateNameCVRequested;
  const factory CvEvent.uploadCV(CVModel cvModel) = UploadCVRequested;
  const factory CvEvent.downloadCV(CVModel cvModel) = DownloadCVRequested;
  const factory CvEvent.nameChanged(String name) = NameChangedRequested;
}
