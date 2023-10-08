import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:jobspot/common/widgets/stateless/icon_widget.dart';
import 'package:jobspot/design/app_asset.dart';
import 'package:jobspot/design/app_color.dart';
import 'package:jobspot/design/app_format.dart';
import 'package:jobspot/design/spaces.dart';
import 'package:jobspot/design/typography.dart';
import 'package:jobspot/feature/auth/feature/login/data/models/user_model.dart';
import 'package:jobspot/feature/auth/feature/login/presentation/bloc/auth_bloc.dart';
import 'package:jobspot/feature/home/feature/company/presentation/screens/company_detail_screen.dart';
import 'package:jobspot/feature/home/feature/job/presentation/bloc/job_bloc.dart';
import 'package:jobspot/feature/home/feature/job/presentation/screens/job_screen.dart';
import 'package:jobspot/router/app_router_name.dart';

class SearchJobScreen extends StatefulWidget {
  const SearchJobScreen({super.key});

  @override
  State<SearchJobScreen> createState() => _SearchJobScreenState();
}

class _SearchJobScreenState extends State<SearchJobScreen> {
  final _searchController = TextEditingController();

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final authBloc = context.read<AuthBloc>();
    final jobBloc = context.read<JobBloc>();
    jobBloc.add(JobEvent.getListJobMax(authBloc.state.user ?? UserModel()));
    return BlocConsumer<JobBloc, JobState>(
      listener: (context, state) {
        if (state.updateSuccess) {
          authBloc.add(InitUserRequested(state.user!));
        }
      },
      builder: (context, state) {
        return Scaffold(
            backgroundColor: AppColor.backgroundWhite,
            appBar: AppBar(
              title: Text(
                'Job',
                style: TxtStyles.semiBold20,
              ),
            ),
            body: SafeArea(
                child: SingleChildScrollView(
                    physics: const AlwaysScrollableScrollPhysics(),
                    child: Column(
                      children: [
                        Container(
                          color: AppColor.white,
                          padding: EdgeInsets.symmetric(horizontal: 16.w),
                          child: Row(
                            children: [
                              Expanded(
                                child: TextFormField(
                                  onTapOutside: (event) => FocusManager
                                      .instance.primaryFocus
                                      ?.unfocus(),
                                  onChanged: (value) {
                                    jobBloc.add(SearchJobRequested(value));
                                  },
                                  controller: _searchController,
                                  decoration: InputDecoration(
                                    suffixIcon: GestureDetector(
                                      onTap: () {
                                        jobBloc
                                            .add(const SearchJobRequested(''));
                                        _searchController.clear();
                                      },
                                      child: const Icon(
                                        Icons.close,
                                        color: AppColor.primary,
                                        size: 24,
                                      ),
                                    ),
                                    hintText: 'Job name',
                                    contentPadding: EdgeInsets.zero,
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(12.r),
                                      borderSide: const BorderSide(
                                          color: AppColor.primary),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(12.r),
                                      borderSide: const BorderSide(
                                          color: AppColor.primary),
                                    ),
                                    prefixIcon: const Icon(
                                      Icons.search,
                                      color: AppColor.primary,
                                      size: 24,
                                    ),
                                  ),
                                ),
                              ),
                              spaceW8,
                              InkWell(
                                onTap: () => context.pushNamed(
                                    AppRouterName.filterJob,
                                    extra: jobBloc),
                                child: IconWidget(
                                  icon: AppAsset.filter,
                                  color: state.isHasSubText()
                                      ? AppColor.secondary
                                      : AppColor.black,
                                  size: 52.r,
                                ),
                              )
                            ],
                          ),
                        ),
                        _searchController.text.isEmpty &&
                                state.searchjobs.isEmpty &&
                                !state.isHasSubText()
                            ? SizedBox(
                                height: AppFormat.height(context) - 200.h,
                                width: AppFormat.width(context),
                                child: const InitSearchEmpty())
                            : state.searchjobs.isEmpty
                                ? SizedBox(
                                    height: AppFormat.height(context) - 200.h,
                                    width: AppFormat.width(context),
                                    child: const TopCompanyEmpty())
                                : ListView.separated(
                                    physics:
                                        const NeverScrollableScrollPhysics(),
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 16.w, vertical: 16.h),
                                    shrinkWrap: true,
                                    itemBuilder: (context, index) => JobCard(
                                        item: state.searchjobs[index],
                                        jobBloc: jobBloc,
                                        userModel: state.user ??
                                            authBloc.state.user ??
                                            UserModel()),
                                    separatorBuilder: (context, index) =>
                                        spaceH16,
                                    itemCount: state.searchjobs.length)
                      ],
                    ))));
      },
    );
  }
}
