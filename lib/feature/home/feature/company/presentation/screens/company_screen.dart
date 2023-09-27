import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:jobspot/design/app_color.dart';
import 'package:jobspot/design/spaces.dart';
import 'package:jobspot/design/typography.dart';
import 'package:jobspot/feature/auth/feature/login/data/models/user_model.dart';
import 'package:jobspot/feature/auth/feature/login/presentation/bloc/auth_bloc.dart';
import 'package:jobspot/feature/home/feature/company/data/models/company_model.dart';
import 'package:jobspot/feature/home/feature/company/presentation/bloc/company_bloc.dart';
import 'package:jobspot/feature/home/feature/company/presentation/screens/company_detail_screen.dart';
import 'package:jobspot/router/app_router.dart';
import 'package:jobspot/router/app_router_name.dart';

class CompanyScreen extends StatefulWidget {
  const CompanyScreen({super.key});

  @override
  State<CompanyScreen> createState() => _CompanyScreenState();
}

class _CompanyScreenState extends State<CompanyScreen> {
  final PagingController<int, CompanyModel> pagingController =
      PagingController(firstPageKey: 0);
  var bloc = CompanyBloc();

  @override
  void initState() {
    bloc = BlocProvider.of<CompanyBloc>(context);
    pagingController.addPageRequestListener((pageKey) {
      bloc.add(GetListCompanyRequested(pageKey));
    });
    super.initState();
  }

  @override
  void dispose() {
    bloc.add(const ResetLastDocumentRequested());
    pagingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final authBloc = context.read<AuthBloc>();
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Company',
            style: TxtStyles.semiBold20,
          ),
          actions: [
            IconButton(
                onPressed: () => context.pushNamed(AppRouterName.searchCompany),
                icon: const Icon(Icons.search))
          ],
        ),
        body: SafeArea(
            child: BlocConsumer<CompanyBloc, CompanyState>(
          listenWhen: (previous, current) =>
              previous.companies != current.companies ||
              current.isFollow == true,
          listener: (context, state) {
            if (state.isFollow) {
              var index = pagingController.itemList!
                  .indexWhere((element) => element.id == state.company!.id);
              if (index != -1) {
                pagingController.itemList![index] = state.company!;
              }
              print('init');
              authBloc.add(InitUserRequested(state.user ?? UserModel()));
            }

            if (!state.isFollow) {
              if (state.isLastPage()) {
                pagingController.appendLastPage(state.companies);
                bloc.add(const ResetLastDocumentRequested());
              } else {
                final next = 1 + state.companies.length;
                pagingController.appendPage(state.companies, next);
              }
            }
          },
          builder: (context, state) {
            return RefreshIndicator(
              onRefresh: () async {
                bloc.add(const ResetLastDocumentRequested());

                pagingController.refresh();
              },
              child: ColoredBox(
                  color: AppColor.backgroundWhite,
                  child: PagedListView<int, CompanyModel>.separated(
                    pagingController: pagingController,
                    padding: EdgeInsets.only(
                        top: 16.h, left: 16.w, right: 16.w, bottom: 42.h),
                    builderDelegate: PagedChildBuilderDelegate<CompanyModel>(
                      noItemsFoundIndicatorBuilder: (context) =>
                          const TopCompanyEmpty(),
                      firstPageProgressIndicatorBuilder: (context) =>
                          const TopCompanyCardShimmer(),
                      itemBuilder: (context, item, index) {
                        return TopCompanyCard(
                          argument: CompanyAgrument(
                            companyModel: item,
                            changed: (value) {
                              print('ahihi');
                              if (value) {
                                print('ahuhu');
                                bloc.add(const ResetLastDocumentRequested());

                                pagingController.refresh();
                              }
                            },
                          ),
                        );
                      },
                    ),
                    separatorBuilder: (context, index) => spaceH16,
                  )),
            );
          },
        )));
  }
}
