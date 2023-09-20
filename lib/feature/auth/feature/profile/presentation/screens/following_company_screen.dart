import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobspot/design/app_color.dart';
import 'package:jobspot/design/spaces.dart';
import 'package:jobspot/design/typography.dart';
import 'package:jobspot/feature/auth/feature/login/data/models/user_model.dart';
import 'package:jobspot/feature/auth/feature/login/presentation/bloc/auth_bloc.dart';
import 'package:jobspot/feature/home/feature/company/presentation/bloc/company_bloc.dart';
import 'package:jobspot/feature/home/feature/company/presentation/screens/company_detail_screen.dart';

class FollowingCompanyScreen extends StatelessWidget {
  const FollowingCompanyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final companyBloc = context.read<CompanyBloc>();
    final authBloc = context.read<AuthBloc>();
    // companyBloc.add(const CompanyEvent.getListCompanyMax());
    companyBloc.add(CompanyEvent.getListCompanyFollowing(
        authBloc.state.user ?? UserModel()));
    return BlocConsumer<CompanyBloc, CompanyState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
            backgroundColor: AppColor.backgroundWhite,
            appBar: AppBar(
              title: Text(
                'Following company',
                style: TxtStyles.semiBold20,
              ),
            ),
            body: RefreshIndicator(
              onRefresh: () async {
                companyBloc.add(CompanyEvent.getListCompanyFollowing(
                    authBloc.state.user ?? UserModel()));
              },
              child: SafeArea(
                  child: SingleChildScrollView(
                padding: EdgeInsets.only(
                    top: 16.h, left: 16.w, right: 16.w, bottom: 42.h),
                child: state.isShimmer
                    ? const TopCompanyCardShimmer()
                    : state.companiesFollowing.isEmpty
                        ? const TopCompanyEmpty()
                        : ListView.separated(
                            physics: const NeverScrollableScrollPhysics(),
                            separatorBuilder: (context, index) => spaceH16,
                            // padding: EdgeInsets.symmetric(
                            //     horizontal: 16.w, vertical: 16.h),
                            itemBuilder: (context, index) => TopCompanyCard(
                              companyModel: state.companiesFollowing[index],
                            ),
                            itemCount: state.companiesFollowing.length,
                            shrinkWrap: true,
                          ),
              )),
            ));
      },
    );
  }
}
