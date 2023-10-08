import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:jobspot/design/app_color.dart';
import 'package:jobspot/design/app_format.dart';
import 'package:jobspot/design/spaces.dart';
import 'package:jobspot/feature/auth/feature/login/data/models/user_model.dart';
import 'package:jobspot/feature/auth/feature/login/presentation/bloc/auth_bloc.dart';
import 'package:jobspot/feature/home/feature/company/presentation/bloc/company_bloc.dart';
import 'package:jobspot/feature/home/feature/company/presentation/screens/company_detail_screen.dart';
import 'package:jobspot/router/app_router.dart';

class SearchCompany extends StatefulWidget {
  const SearchCompany({super.key});

  @override
  State<SearchCompany> createState() => _SearchCompanyState();
}

class _SearchCompanyState extends State<SearchCompany> {
  final _searchController = TextEditingController();

  var bloc = CompanyBloc();
  var authBloc = AuthBloc();
  @override
  void initState() {
    bloc = context.read<CompanyBloc>();
    authBloc = context.read<AuthBloc>();
    bloc.add(const GetListCompanyMaxRequested());

    super.initState();
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  bool returnAgu = false;
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        context.pop(returnAgu);
        return true;
      },
      child: GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: Scaffold(
          backgroundColor: AppColor.backgroundWhite,
          appBar: AppBar(
            leading: GestureDetector(
              onTap: () {
                context.pop(returnAgu);
              },
              child: const Icon(
                Icons.arrow_back,
                color: AppColor.primary,
              ),
            ),
            title: TextFormField(
              onChanged: (value) {
                bloc.add(SearchCompanyRequested(value));
              },
              onTapOutside: (event) =>
                  FocusManager.instance.primaryFocus?.unfocus(),
              controller: _searchController,
              decoration: InputDecoration(
                suffixIcon: GestureDetector(
                  onTap: () => _searchController.clear(),
                  child: const Icon(
                    Icons.close,
                    color: AppColor.primary,
                    size: 24,
                  ),
                ),
                hintText: 'Company name',
                contentPadding: EdgeInsets.zero,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.r),
                  borderSide: const BorderSide(color: AppColor.primary),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.r),
                  borderSide: const BorderSide(color: AppColor.primary),
                ),
                prefixIcon: const Icon(
                  Icons.search,
                  color: AppColor.primary,
                  size: 24,
                ),
              ),
            ),
          ),
          body: SafeArea(
            child: BlocConsumer<CompanyBloc, CompanyState>(
              listener: (context, state) {
                if (state.isFollow) {
                  print('main1');
                  authBloc.add(InitUserRequested(state.user ?? UserModel()));
                }
              },
              builder: (context, state) {
                return SingleChildScrollView(
                    child: _searchController.text.isEmpty
                        ? SizedBox(
                            height: AppFormat.height(context) - 200.h,
                            width: AppFormat.width(context),
                            child: const InitSearchEmpty())
                        : state.searchCompanies.isEmpty
                            ? SizedBox(
                                height: AppFormat.height(context) - 200.h,
                                width: AppFormat.width(context),
                                child: const TopCompanyEmpty())
                            : ListView.separated(
                                physics: const NeverScrollableScrollPhysics(),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 16.w, vertical: 16.h),
                                shrinkWrap: true,
                                itemBuilder: (context, index) => TopCompanyCard(
                                        argument: CompanyAgrument(
                                      companyBloc: bloc,
                                      companyModel:
                                          _searchController.text.isEmpty
                                              ? state.companies[index]
                                              : state.searchCompanies[index],
                                      changed: (value) {
                                        if (value) {
                                          returnAgu = value;
                                        }
                                      },
                                    )),
                                separatorBuilder: (context, index) => spaceH16,
                                itemCount: state.searchCompanies.length));
              },
            ),
          ),
        ),
      ),
    );
  }
}
