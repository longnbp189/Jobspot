// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:jobspot/common/widgets/stateful/show_more_widget.dart';
import 'package:jobspot/common/widgets/stateless/button_bottom_row.dart';
import 'package:jobspot/common/widgets/stateless/icon_widget.dart';
import 'package:jobspot/common/widgets/stateless/shimmer_effect.dart';
import 'package:jobspot/design/app_format.dart';
import 'package:jobspot/feature/auth/feature/login/data/models/user_model.dart';
import 'package:jobspot/feature/auth/feature/login/presentation/bloc/auth_bloc.dart';
import 'package:jobspot/feature/home/feature/company/data/models/company_model.dart';
import 'package:jobspot/feature/home/feature/company/presentation/bloc/company_bloc.dart';
import 'package:jobspot/feature/home/presentation/screen/home_screen.dart';

import 'package:jobspot/common/widgets/stateless/avatar_company.dart';
import 'package:jobspot/design/app_asset.dart';
import 'package:jobspot/design/app_color.dart';
import 'package:jobspot/design/spaces.dart';
import 'package:jobspot/design/typography.dart';
import 'package:jobspot/router/app_router_name.dart';

part '../widgets/recruitment_news_body.dart';
part '../widgets/top_company_body.dart';
part '../widgets/about_company_body.dart';
part '../widgets/company_detail_header.dart';

class CompanyDetailScreen extends StatefulWidget {
  final CompanyModel companyModel;
  const CompanyDetailScreen({super.key, required this.companyModel});

  @override
  State<CompanyDetailScreen> createState() => _CompanyDetailScreenState();
}

class _CompanyDetailScreenState extends State<CompanyDetailScreen> {
  // TabController? _tabController;
  int intTab = 0;
  @override
  Widget build(BuildContext context) {
    final authBloc = context.read<AuthBloc>();

    return BlocProvider(
      create: (context) => CompanyBloc()
        ..add(CompanyEvent.getCompanyById(
            widget.companyModel, authBloc.state.user ?? UserModel())),
      child: BlocBuilder<CompanyBloc, CompanyState>(
        builder: (context, state) {
          return DefaultTabController(
            length: 3,
            child: Scaffold(
                body: SafeArea(
                    child: NestedScrollView(
              headerSliverBuilder: (context, innerBoxIsScrolled) {
                return [
                  SliverAppBar(
                    collapsedHeight: 350.h,
                    leading: GestureDetector(
                      onTap: () => context.pop(),
                      child: Container(
                        margin: const EdgeInsets.all(8.0),
                        decoration: const BoxDecoration(
                          color: Colors.white, // White background color
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(
                          Icons.arrow_back,
                          color: AppColor.primary,
                        ),
                      ),
                    ),
                    flexibleSpace: CompanyDetailHeader(
                        companyModel: state.company ?? widget.companyModel),
                  ),
                  SliverPersistentHeader(
                      pinned: true,
                      delegate: SliverAppBarDelegate(TabBar(
                        onTap: (value) => setState(() {
                          intTab = value;
                        }),
                        isScrollable: true,
                        tabAlignment: TabAlignment.start,
                        // indicatorColor: Colors.transparent,
                        // dividerColor: Colors.transparent,
                        // controller: _tabController,
                        tabs: [
                          Tab(
                              child: Text(
                            'About company',
                            style: intTab == 0
                                ? TxtStyles.semiBold14.copyWith(
                                    color: AppColor.primary, fontSize: 16.sp)
                                : TxtStyles.semiBold14,
                          )),
                          Tab(
                              child: Text(
                            'Recruitment news',
                            style: intTab == 1
                                ? TxtStyles.semiBold14.copyWith(
                                    color: AppColor.primary, fontSize: 16.sp)
                                : TxtStyles.semiBold14,
                          )),
                          Tab(
                              child: Text(
                            'Top companies in the same field',
                            style: intTab == 2
                                ? TxtStyles.semiBold14.copyWith(
                                    color: AppColor.primary, fontSize: 16.sp)
                                : TxtStyles.semiBold14,
                          )),
                        ],
                      )))
                ];
              },
              body: TabBarView(
                  physics: const NeverScrollableScrollPhysics(),
                  // controller: _tabController,
                  children: [
                    AboutCompanyBody(
                      companyModel: widget.companyModel,
                    ),
                    const RecruitmentNewsBody(),
                    const TopCompaniesBody(),
                  ]),
            ))),
          );
        },
      ),
    );
  }
}

class SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  SliverAppBarDelegate(this._tabBar);

  final TabBar _tabBar;

  @override
  double get minExtent => _tabBar.preferredSize.height;
  @override
  double get maxExtent => _tabBar.preferredSize.height;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      color: Colors.white,
      child: _tabBar,
    );
  }

  @override
  bool shouldRebuild(SliverAppBarDelegate oldDelegate) {
    return false;
  }
}
