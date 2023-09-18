import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:jobspot/common/widgets/enum/load_status_enum.dart';
import 'package:jobspot/core/service_locator.dart';
import 'package:jobspot/design/app_format.dart';
import 'package:jobspot/feature/auth/feature/login/data/models/user_model.dart';
import 'package:jobspot/feature/auth/feature/profile/data/models/cv_info_model.dart';
import 'package:jobspot/feature/home/feature/company/data/models/company_model.dart';
import 'package:jobspot/feature/home/feature/company/domain/usecases/company_use_case.dart';
import 'package:jobspot/feature/home/feature/job/data/models/district_model.dart';
import 'package:jobspot/feature/home/feature/job/data/models/job_category_model.dart';
import 'package:jobspot/feature/home/feature/job/data/models/jobs_model.dart';
import 'package:jobspot/feature/home/feature/job/data/models/province_model.dart';
import 'package:jobspot/feature/home/feature/job/domain/usecases/job_use_case.dart';
import 'package:jobspot/services/database_helper.dart';
import 'package:jobspot/services/user_cache_service.dart';

part 'job_event.dart';
part 'job_state.dart';
part 'job_bloc.freezed.dart';

class JobBloc extends Bloc<JobEvent, JobState> {
  JobBloc() : super(JobState()) {
    on<GetAddressRequested>(_onGetAddressRequested);
    on<GetProvincesRequested>(_onGetProvincesRequested);
    on<GetDistrictsRequested>(_onGetDistrictsRequested);
    on<SearchDistrictsRequested>(_onSearchDistrictsRequested);
    on<SearchProvincesRequested>(_onSearchProvincesRequested);
    on<InitProvincesRequested>(_onInitProvincesRequested);
    on<InitDistrictsRequested>(_onInitDistrictsRequested);
    on<GetTextProvinceRequested>(_onGetTextProvinceRequested);
    on<GetTextDistrictRequested>(_onGetTextDistrictRequested);
    on<GetTextExperienceRequested>(_onGetTextExperienceRequested);
    on<GetTextSalaryRequested>(_onGetTextSalaryRequested);
    on<GetTextJobCategoryRequested>(_onGetTextJobCategoryRequested);
    on<GetTextTypeRequested>(_onGetTextTypeRequested);
    on<SearchJobCategoryRequested>(_onSearchJobCategoryRequested);
    on<GetJobCategoryRequested>(_onGetJobCategoryRequested);
    on<GetListJobRequested>(_onGetListJobRequested);
    on<ResetLastDocumentRequested>(_onResetLastDocumentRequested);
    on<GetListJobMaxRequested>(_onGetListJobMaxRequested);
    on<UpdateBookmarkRequest>(_onUpdateBookmarkRequest);
    on<GetJobByIdRequested>(_onGetJobByIdRequested);
    on<RemoveListBookmarkRequested>(_onRemoveListBookmarkRequested);
    on<GetJobSameTypeRequest>(_onGetJobSameTypeRequest);
    on<GetJobSameCompanyRequest>(_onGetJobSameCompanyRequest);
    on<SubmitCVRequest>(_onSubmitCVRequest);
    on<GetTextEmailJobRequested>(_onGetTextEmailJobRequested);
    on<GetTextPhoneJobRequested>(_onGetTextPhoneJobRequested);
    on<GetTextNameJobRequested>(_onGetTextNameJobRequested);
    on<GetTextIntroLetterJobRequested>(_onGetTextIntroLetterJobRequested);
  }

  FutureOr<void> _onGetAddressRequested(
      GetAddressRequested event, Emitter<JobState> emit) async {
    await serviceLocator<JobUsecase>().getAddress();
  }

  FutureOr<void> _onGetProvincesRequested(
      GetProvincesRequested event, Emitter<JobState> emit) async {
    List<ProvinceModel> provinces =
        await DatabaseHelper.instance.getProvinces();

    provinces.insert(
        0, ProvinceModel(id: '0', slug: 'aa', name: 'Tất cả', code: '0'));
    emit(state.copyWith(provinces: provinces, searchProvinces: provinces));
  }

  FutureOr<void> _onGetDistrictsRequested(
      GetDistrictsRequested event, Emitter<JobState> emit) async {
    List<DistrictModel> districts =
        await DatabaseHelper.instance.getDistrict(event.id);

    districts.insert(
        0, DistrictModel(id: '0', slug: 'aa', name: 'Tất cả', code: '0'));
    emit(state.copyWith(districts: districts, searchDistricts: districts));
  }

  FutureOr<void> _onSearchDistrictsRequested(
      SearchDistrictsRequested event, Emitter<JobState> emit) {
    var searchList = state.districts
        .where((element) =>
            element.name.toLowerCase().contains(event.text.toLowerCase()))
        .toList();
    emit(state.copyWith(searchDistricts: searchList));
  }

  FutureOr<void> _onSearchProvincesRequested(
      SearchProvincesRequested event, Emitter<JobState> emit) {
    var searchList = state.provinces
        .where((element) =>
            element.name.toLowerCase().contains(event.text.toLowerCase()))
        .toList();
    emit(state.copyWith(searchProvinces: searchList));
  }

  FutureOr<void> _onInitProvincesRequested(
      InitProvincesRequested event, Emitter<JobState> emit) {
    List<ProvinceModel> provinces = state.provinces;
    emit(state.copyWith(searchProvinces: provinces));
  }

  FutureOr<void> _onInitDistrictsRequested(
      InitDistrictsRequested event, Emitter<JobState> emit) {
    List<DistrictModel> districts = state.districts;
    emit(state.copyWith(searchDistricts: districts));
  }

  FutureOr<void> _onGetTextProvinceRequested(
      GetTextProvinceRequested event, Emitter<JobState> emit) {
    emit(state.copyWith(provinceText: event.text));
  }

  FutureOr<void> _onGetTextDistrictRequested(
      GetTextDistrictRequested event, Emitter<JobState> emit) {
    emit(state.copyWith(districtText: event.text));
  }

  FutureOr<void> _onGetTextExperienceRequested(
      GetTextExperienceRequested event, Emitter<JobState> emit) {
    emit(state.copyWith(experienceText: event.text));
  }

  FutureOr<void> _onGetTextSalaryRequested(
      GetTextSalaryRequested event, Emitter<JobState> emit) {}

  FutureOr<void> _onGetTextJobCategoryRequested(
      GetTextJobCategoryRequested event, Emitter<JobState> emit) {
    emit(state.copyWith(jobCategoryText: event.text));
  }

  FutureOr<void> _onGetTextTypeRequested(
      GetTextTypeRequested event, Emitter<JobState> emit) {
    emit(state.copyWith(typeText: event.text));
  }

  FutureOr<void> _onSearchJobCategoryRequested(
      SearchJobCategoryRequested event, Emitter<JobState> emit) {
    var searchList = state.jobCategories
        .where((element) =>
            element.name.toLowerCase().contains(event.searchText.toLowerCase()))
        .toList();
    emit(state.copyWith(searchjobCategories: searchList));
  }

  FutureOr<void> _onGetJobCategoryRequested(
      GetJobCategoryRequested event, Emitter<JobState> emit) async {
    List<JobCategoryModel> jobCategories =
        await DatabaseHelper.instance.getJobCategories();

    emit(state.copyWith(
        jobCategories: jobCategories, searchjobCategories: jobCategories));
  }

  FutureOr<void> _onGetListJobRequested(
      GetListJobRequested event, Emitter<JobState> emit) async {
    emit(state.copyWith(isShimmer: true, error: ''));

    final result = await serviceLocator<JobUsecase>().getListJob();
    List<JobsModel> jobs = [];
    result.fold(
      (l) => emit(state.copyWith(error: l.message, isShimmer: false)),
      (r) => jobs = r,
    );

    jobs.removeWhere((element) =>
        !(element.status && DateTime.now().isBefore(element.endDate!)));

    emit(state.copyWith(jobs: jobs, isShimmer: false));
  }

  FutureOr<void> _onResetLastDocumentRequested(
      ResetLastDocumentRequested event, Emitter<JobState> emit) {
    serviceLocator<JobUsecase>().resetLastDocument();
  }

  FutureOr<void> _onGetListJobMaxRequested(
      GetListJobMaxRequested event, Emitter<JobState> emit) async {
    emit(state.copyWith(isShimmer: true, error: ''));

    final result = await serviceLocator<JobUsecase>().getListJobMax();
    result.fold(
      (l) => emit(state.copyWith(error: l.message, isShimmer: false)),
      (r) => emit(state.copyWith(jobs: r, isShimmer: false)),
    );
    List<JobsModel> jobs = List.from(state.jobs);

    var listBookmark = event.userModel.bookmarkIds;

    jobs.removeWhere((element) => !listBookmark.contains(element.id));
    jobs.sort(
      (a, b) => b.startDate!.compareTo(a.startDate!),
    );

    emit(state.copyWith(
        jobBookmark: jobs, isShimmer: false, user: event.userModel));
  }

  FutureOr<void> _onUpdateBookmarkRequest(
      UpdateBookmarkRequest event, Emitter<JobState> emit) async {
    try {
      emit(state.copyWith(
        isLoading: true,
        error: '',
      ));

      final List<String> bookmarkIds = List.from(state.user?.bookmarkIds ?? []);
      List<JobsModel> jobBookmark = List.from(state.jobBookmark);

      if (state.isHasBookmark()) {
        bookmarkIds.remove(state.job!.id);
        jobBookmark.removeWhere(
          (element) => element.id == state.job!.id,
        );
      } else {
        bookmarkIds.add(state.job!.id);
      }

      var user = state.user?.copyWith(bookmarkIds: bookmarkIds) ?? UserModel();
      await serviceLocator<UserCacheService>().saveUser(user);
      List<JobsModel> jobs = List.from(state.jobs);

      final result =
          await serviceLocator<JobUsecase>().updateBookmark(userModel: user);
      final index = jobs.indexWhere((job) => job.id == state.job!.id);
      result.fold(
        (l) => emit(state.copyWith(error: l.message, isLoading: false)),
        (r) {
          if (index != -1) {
            jobs[index] = state.job!;
            emit(state.copyWith(
                updateSuccess: true,
                isLoading: false,
                user: user,
                jobs: jobs,
                jobBookmark: jobBookmark));
          }
        },
      );
    } catch (e) {
      emit(state.copyWith(
          error: e.toString(), updateSuccess: false, isLoading: false));
    } finally {
      emit(state.copyWith(error: '', updateSuccess: false, isLoading: false));
    }
  }

  FutureOr<void> _onGetJobByIdRequested(
      GetJobByIdRequested event, Emitter<JobState> emit) {
    emit(state.copyWith(job: event.job, user: event.userModel));
  }

  FutureOr<void> _onRemoveListBookmarkRequested(
      RemoveListBookmarkRequested event, Emitter<JobState> emit) async {
    try {
      emit(state.copyWith(
        loadStatus: LoadStatusEnum.loading,
      ));

      var user = state.user?.copyWith(bookmarkIds: []) ?? UserModel();
      await serviceLocator<UserCacheService>().saveUser(user);

      final result =
          await serviceLocator<JobUsecase>().updateBookmark(userModel: user);
      await Future.delayed(const Duration(seconds: 1));

      result.fold(
          (l) => emit(state.copyWith(
              error: l.message, loadStatus: LoadStatusEnum.loaded)),
          (r) => emit(state.copyWith(
              updateSuccess: true,
              isLoading: false,
              loadStatus: LoadStatusEnum.loaded,
              user: user,
              jobBookmark: [])));
    } catch (e) {
      emit(state.copyWith(
          error: e.toString(), loadStatus: LoadStatusEnum.loaded));
    } finally {
      emit(state.copyWith(
          error: '', loadStatus: LoadStatusEnum.notLoad, updateSuccess: false));
    }
  }

  FutureOr<void> _onGetJobSameTypeRequest(
      GetJobSameTypeRequest event, Emitter<JobState> emit) async {
    emit(state.copyWith(isShimmer: true, error: ''));
    await Future.delayed(const Duration(milliseconds: 700));
    List<JobsModel> jobs = List.from(state.jobs);

    jobs.removeWhere((element) =>
        !(element.category == state.job!.category) ||
        element.id == state.job!.id ||
        !AppFormat.isAvailableJob(element));
    emit(state.copyWith(isShimmer: false, error: '', jobsSameType: jobs));
  }

  FutureOr<void> _onGetJobSameCompanyRequest(
      GetJobSameCompanyRequest event, Emitter<JobState> emit) async {
    emit(state.copyWith(isShimmer: true, error: ''));
    // await Future.delayed(const Duration(milliseconds: 700));

    final result = await serviceLocator<CompanyUsecase>()
        .getCompanyById(id: state.job!.companyId);
    result.fold(
        (l) => emit(state.copyWith(error: l.message, isShimmer: false)),
        (r) => emit(state.copyWith(
              company: r,
              isShimmer: false,
            )));

    List<JobsModel> jobs = List.from(state.jobs);

    jobs.removeWhere((element) =>
        (!(element.companyId == state.job!.companyId) ||
            element.id == state.job!.id) ||
        !AppFormat.isAvailableJob(element));
    emit(state.copyWith(isShimmer: false, error: '', jobsSameCompany: jobs));
  }

  FutureOr<void> _onSubmitCVRequest(
      SubmitCVRequest event, Emitter<JobState> emit) async {
    try {
      emit(state.copyWith(
        loadStatus: LoadStatusEnum.loading,
      ));
      List<String> userJob = List.from(state.user?.jobIds ?? []);
      if (!userJob.contains(state.job?.id)) {
        userJob.add(state.job?.id ?? '');
      }
      final result =
          await serviceLocator<JobUsecase>().submitCV(event.cvInfoModel);
      // await Future.delayed(const Duration(seconds: 1));
      var user = state.user!
          .copyWith(jobIds: userJob, introducingLetter: state.introLetter);

      result.fold(
          (l) => emit(state.copyWith(
              error: l.message, loadStatus: LoadStatusEnum.loaded)),
          (r) => emit(state.copyWith(
                submitSuccess: true,
                isLoading: false,
                user: user,
                loadStatus: LoadStatusEnum.loaded,
              )));
    } catch (e) {
      emit(state.copyWith(
          error: e.toString(), loadStatus: LoadStatusEnum.loaded));
    } finally {
      emit(state.copyWith(
          error: '', loadStatus: LoadStatusEnum.notLoad, submitSuccess: false));
    }
  }

  FutureOr<void> _onGetTextEmailJobRequested(
      GetTextEmailJobRequested event, Emitter<JobState> emit) {
    emit(state.copyWith(email: event.text));
  }

  FutureOr<void> _onGetTextPhoneJobRequested(
      GetTextPhoneJobRequested event, Emitter<JobState> emit) {
    emit(state.copyWith(phone: event.text));
  }

  FutureOr<void> _onGetTextNameJobRequested(
      GetTextNameJobRequested event, Emitter<JobState> emit) {
    emit(state.copyWith(name: event.text));
  }

  FutureOr<void> _onGetTextIntroLetterJobRequested(
      GetTextIntroLetterJobRequested event, Emitter<JobState> emit) {
    emit(state.copyWith(introLetter: event.text));
  }
}
