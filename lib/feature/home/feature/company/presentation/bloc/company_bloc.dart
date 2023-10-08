import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:jobspot/core/service_locator.dart';
import 'package:jobspot/design/app_format.dart';
import 'package:jobspot/feature/auth/feature/login/data/models/user_model.dart';
import 'package:jobspot/feature/home/feature/company/data/models/company_model.dart';
import 'package:jobspot/feature/home/feature/company/domain/usecases/company_use_case.dart';
import 'package:jobspot/feature/home/feature/job/data/models/jobs_model.dart';
import 'package:jobspot/feature/home/feature/job/domain/usecases/job_use_case.dart';

part 'company_bloc.freezed.dart';
part 'company_event.dart';
part 'company_state.dart';

class CompanyBloc extends Bloc<CompanyEvent, CompanyState> {
  CompanyBloc() : super(CompanyState()) {
    // state.pagingController!.addPageRequestListener(
    //   (pageKey) {
    //     fetchCompanies(pageKey);
    //   },
    // );
    // pagingController = PagingController(firstPageKey: 0);
    // pagingController.addPageRequestListener((pageKey) {
    //   add(GetListCompanySameTypeRequested(pageKey));
    // });
    on<GetListCompanyRequested>(_onGetListCompanyRequested);
    on<GetListTopCompanyRequested>(_onGetListTopCompanyRequested);
    on<GetCompanyByIdRequested>(_onGetCompanyByIdRequested);
    on<FollowCompanyRequested>(_onFollowCompanyRequested);
    on<UnFollowCompanyRequested>(_onUnFollowCompanyRequested);
    on<GetListCompanySameTypeRequested>(_onGetListCompanySameTypeRequested);
    on<ResetLastDocumentRequested>(_onResetLastDocumentRequested);
    on<SearchCompanyRequested>(_onSearchCompanyRequested);
    on<GetListCompanyMaxRequested>(_onGetListCompanyMaxRequested);
    on<GetListCompanyFollowingRequested>(_onGetListCompanyFollowingRequested);
    on<GetJobSameCompanyRequest>(_onGetJobSameCompanyRequest);
  }

  FutureOr<void> _onGetListCompanyRequested(
      GetListCompanyRequested event, Emitter<CompanyState> emit) async {
    emit(state.copyWith(isShimmer: true, error: ''));

    final result = await serviceLocator<CompanyUsecase>().getListCompany();
    result.fold(
      (l) => emit(state.copyWith(error: l.message, isShimmer: false)),
      (r) => emit(state.copyWith(companies: r, isShimmer: false)),
    );
  }

  FutureOr<void> _onGetListTopCompanyRequested(
      GetListTopCompanyRequested event, Emitter<CompanyState> emit) async {
    emit(state.copyWith(isShimmer: true, error: ''));

    final result = await serviceLocator<CompanyUsecase>().getListTopCompany();
    result.fold(
      (l) => emit(state.copyWith(error: l.message, isShimmer: false)),
      (r) => emit(state.copyWith(companies: r, isShimmer: false)),
    );
    // emit(state.copyWith(sendEmailSuccess: false, error: ''));
  }

  FutureOr<void> _onGetCompanyByIdRequested(
      GetCompanyByIdRequested event, Emitter<CompanyState> emit) {
    emit(state.copyWith(company: event.company, user: event.userModel));
  }

  FutureOr<void> _onFollowCompanyRequested(
      FollowCompanyRequested event, Emitter<CompanyState> emit) async {
    emit(state.copyWith(isLoading: true, error: '', isFollow: false));
    try {
      final List<String> userFollow = List.from(state.user?.followerIds ?? []);
      final List<String> companyFollow =
          List.from(state.company?.followerIds ?? []);
      List<CompanyModel> companiesFollowing =
          List.from(state.companiesFollowing);
      if (state.isFollowCompany()) {
        userFollow.remove(state.company!.id);
        companyFollow.remove(state.user!.id);
      } else {
        userFollow.add(state.company!.id);
        companyFollow.add(state.user!.id);
      }

      emit(state.copyWith(
        user: state.user?.copyWith(followerIds: userFollow),
        company: state.company?.copyWith(followerIds: companyFollow),
      ));

      if (companiesFollowing.isNotEmpty) {
        companiesFollowing
            .removeWhere((element) => element.id == state.company!.id);
        final result = await serviceLocator<CompanyUsecase>().followCompany(
            companyModel: state.company!, userModel: state.user!);
        result.fold(
          (l) => emit(state.copyWith(error: l.message, isLoading: false)),
          (r) => emit(state.copyWith(
              isFollow: true,
              isLoading: false,
              companiesFollowing: companiesFollowing)),
        );
      }

      if (state.searchCompanies.isEmpty) {
        List<CompanyModel> companies = List.from(state.companies);
        if (companies.isNotEmpty) {
          // final index = companies
          //     .indexWhere((company) => company.id == state.company!.id);
          // Unit? unit;
          final result = await serviceLocator<CompanyUsecase>().followCompany(
              companyModel: state.company!, userModel: state.user!);
          result.fold(
            (l) => emit(state.copyWith(error: l.message, isLoading: false)),
            (r) => emit(state.copyWith(
              isFollow: true,
              isLoading: false,
            )),
          );
          // if (index != -1 && unit != null) {
          //   companies[index] = state.company!;
          //   // emit(state.copyWith(
          //   //     isFollow: true, isLoading: false, companies: companies));
          //   emit(state.copyWith(
          //     isFollow: true,
          //     isLoading: false,
          //   ));
          // }
        } else {
          final result = await serviceLocator<CompanyUsecase>().followCompany(
              companyModel: state.company!, userModel: state.user!);
          result.fold(
            (l) => emit(state.copyWith(error: l.message, isLoading: false)),
            (r) => emit(state.copyWith(isFollow: true, isLoading: false)),
          );
        }
      } else {
        List<CompanyModel> searchCompanies = List.from(state.searchCompanies);

        final index = searchCompanies
            .indexWhere((company) => company.id == state.company!.id);

        final result = await serviceLocator<CompanyUsecase>().followCompany(
            companyModel: state.company!, userModel: state.user!);
        result.fold(
          (l) => emit(state.copyWith(error: l.message, isLoading: false)),
          (r) {
            if (index != -1) {
              searchCompanies[index] = state.company!;
              emit(state.copyWith(
                  isFollow: true, searchCompanies: searchCompanies));
            }
          },
        );
      }
    } catch (e) {
      emit(state.copyWith(
          error: e.toString(), isFollow: false, isLoading: false));
    } finally {
      emit(state.copyWith(error: '', isFollow: false, isLoading: false));
    }
  }

  FutureOr<void> _onUnFollowCompanyRequested(
      UnFollowCompanyRequested event, Emitter<CompanyState> emit) {}

  FutureOr<void> _onGetListCompanySameTypeRequested(
      GetListCompanySameTypeRequested event, Emitter<CompanyState> emit) async {
    emit(state.copyWith(isShimmer: true, error: ''));
    final result = await serviceLocator<CompanyUsecase>()
        .getListCompanySameType(state.company?.type ?? '');
    result.fold(
      (l) => emit(state.copyWith(error: l.message, isShimmer: false)),
      (r) {
        for (var element in r) {
          if (element.id == state.company?.id) {
            r.remove(element);
            break;
          }
        }
        emit(state.copyWith(companies: r, isShimmer: false));
      },
    );
    // loadMore(isdelete, event.pageKey);
  }

  // void loadMore(bool isdelete, int pageKey) {
  //   try {
  //     final companies = state.companies;
  //     final isLastPage =
  //         (isdelete ? companies.length + 1 : companies.length) < _perPage;
  //     if (isLastPage) {
  //       pagingController.appendLastPage(companies);
  //       serviceLocator<CompanyUsecase>().resetLastDocument();
  //     } else {
  //       final nextPageKey = pageKey + companies.length;
  //       pagingController.appendPage(companies, nextPageKey);
  //     }
  //   } catch (error) {
  //     pagingController.error = error;
  //   }
  // }

  // Future<void> fetchCompanies(int pageKey) async {
  //   try {
  //     final companies = await fetchCompaniesFromFirestore(_perPage);
  //     final isLastPage = companies.length < _perPage;
  //     if (isLastPage) {
  //       pagingController.appendLastPage(companies);
  //     } else {
  //       final nextPageKey = pageKey + companies.length;
  //       pagingController.appendPage(companies, nextPageKey);
  //     }
  //   } catch (error) {
  //     pagingController.error = error;
  //   }
  // }

  // final int _perPage = 2; // Number of documents to fetch per page
  // DocumentSnapshot? _lastDocument; // Store the last document for pagination

  // Future<List<CompanyModel>> fetchCompaniesFromFirestore(int pageSize) async {
  //   var query = FirebaseFirestore.instance
  //       .collection('Companies')
  //       .orderBy('id') // Change this to your sorting criteria
  //       .limit(_perPage);

  //   if (_lastDocument != null) {
  //     query = query.startAfterDocument(_lastDocument!);
  //   }

  //   final querySnapshot = await query.get();

  //   if (querySnapshot.docs.isNotEmpty) {
  //     _lastDocument = querySnapshot.docs.last;
  //   }

  //   List<CompanyModel> companies = querySnapshot.docs.map((doc) {
  //     final data = doc.data();

  //     return CompanyModel.fromJson(data);
  //   }).toList();
  //   return companies;
  // }

  FutureOr<void> _onResetLastDocumentRequested(
      ResetLastDocumentRequested event, Emitter<CompanyState> emit) {
    serviceLocator<CompanyUsecase>().resetLastDocument();
  }

  FutureOr<void> _onSearchCompanyRequested(
      SearchCompanyRequested event, Emitter<CompanyState> emit) {
    var searchList = state.companies
        .where((element) => element.displayName
            .toLowerCase()
            .contains(event.searchText.toLowerCase()))
        .toList();
    emit(state.copyWith(searchCompanies: searchList));
  }

  FutureOr<void> _onGetListCompanyMaxRequested(
      GetListCompanyMaxRequested event, Emitter<CompanyState> emit) async {
    emit(state.copyWith(isShimmer: true, error: ''));

    final result = await serviceLocator<CompanyUsecase>().getListCompanyMax();
    result.fold(
      (l) => emit(state.copyWith(error: l.message, isShimmer: false)),
      (r) => emit(state.copyWith(companies: r, isShimmer: false)),
    );
  }

  FutureOr<void> _onGetListCompanyFollowingRequested(
      GetListCompanyFollowingRequested event,
      Emitter<CompanyState> emit) async {
    emit(state.copyWith(isShimmer: true, error: ''));
    final result = await serviceLocator<CompanyUsecase>().getListCompanyMax();
    result.fold(
      (l) => emit(state.copyWith(
        error: l.message,
      )),
      (r) => emit(state.copyWith(
        companies: r,
      )),
    );

    List<CompanyModel> companyList = List.from(state.companies);
    List<CompanyModel> companyFollowingList = [];
    for (var element in companyList) {
      for (var e in event.userModel.followerIds) {
        if (e == element.id) {
          companyFollowingList.add(element);
        }
      }
    }
    emit(state.copyWith(
        companiesFollowing: companyFollowingList, isShimmer: false));
  }

  FutureOr<void> _onGetJobSameCompanyRequest(
      GetJobSameCompanyRequest event, Emitter<CompanyState> emit) async {
    emit(state.copyWith(isShimmer: true, error: ''));
    // await Future.delayed(const Duration(milliseconds: 700));
    final resultList = await serviceLocator<JobUsecase>().getListJobMax();
    resultList.fold(
      (l) => emit(state.copyWith(error: l.message, isShimmer: false)),
      (r) => emit(state.copyWith(jobs: r, isShimmer: false)),
    );
    // final result = await serviceLocator<CompanyUsecase>()
    //     .getCompanyById(id: state.job!.companyId);
    // result.fold(
    //     (l) => emit(state.copyWith(error: l.message, isShimmer: false)),
    //     (r) => emit(state.copyWith(
    //           company: r,
    //           isShimmer: false,
    //         )));

    List<JobsModel> jobs = List.from(state.jobs);

    jobs.removeWhere((element) =>
        (!(element.companyId == state.company?.id)
        // ||
        // element.id == state.job!.id
        ) ||
        !AppFormat.isAvailableJob(element));
    emit(state.copyWith(isShimmer: false, error: '', jobSameCompanies: jobs));
  }
}
