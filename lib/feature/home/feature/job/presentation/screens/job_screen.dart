import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:jobspot/common/widgets/stateless/avatar_company.dart';
import 'package:jobspot/design/app_asset.dart';
import 'package:jobspot/design/app_color.dart';
import 'package:jobspot/design/app_format.dart';
import 'package:jobspot/design/spaces.dart';
import 'package:jobspot/design/typography.dart';
import 'package:jobspot/feature/auth/feature/login/data/models/user_model.dart';
import 'package:jobspot/feature/auth/feature/login/presentation/bloc/auth_bloc.dart';
import 'package:jobspot/feature/home/feature/company/presentation/screens/company_detail_screen.dart';
import 'package:jobspot/feature/home/feature/job/data/models/jobs_model.dart';
import 'package:jobspot/feature/home/feature/job/presentation/bloc/job_bloc.dart';
import 'package:jobspot/router/app_router_name.dart';

class JobScreen extends StatefulWidget {
  const JobScreen({super.key});

  @override
  State<JobScreen> createState() => _JobScreenState();
}

class _JobScreenState extends State<JobScreen> {
  final PagingController<int, JobsModel> pagingController =
      PagingController(firstPageKey: 0);
  var bloc = JobBloc();

  @override
  void initState() {
    bloc = BlocProvider.of<JobBloc>(context);
    pagingController.addPageRequestListener((pageKey) {
      bloc.add(GetListJobRequested(pageKey));
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
    final jobBloc = context.read<JobBloc>();
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Job',
            style: TxtStyles.semiBold20,
          ),
          // actions: [
          //   IconButton(
          //       onPressed: () => context.pushNamed(AppRouterName.searchJob),
          //       icon: const Icon(Icons.search))
          // ],
        ),
        body: SafeArea(
            child: BlocConsumer<JobBloc, JobState>(
          bloc: jobBloc,
          listenWhen: (previous, current) => previous.jobs != current.jobs,
          listener: (context, state) {
            if (state.updateSuccess) {
              var index = pagingController.itemList!
                  .indexWhere((element) => element.id == state.job!.id);
              if (index != -1) {
                pagingController.itemList![index] = state.job!;
              }

              authBloc.add(InitUserRequested(state.user!));
              // bloc.add(const ResetLastDocumentRequested());

              // Future.delayed(const Duration(milliseconds: 400), () {
              //   pagingController.refresh();
              // });

              print('object22222222');
            }

            if (!state.updateSuccess) {
              print('object1111111111111');

              if (state.isLastPage()) {
                pagingController.appendLastPage(state.jobs);
                bloc.add(const ResetLastDocumentRequested());
              } else {
                final next = 1 + state.jobs.length;
                pagingController.appendPage(state.jobs, next);
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
                  child: PagedListView<int, JobsModel>.separated(
                    pagingController: pagingController,
                    padding: EdgeInsets.only(
                        top: 16.h, left: 16.w, right: 16.w, bottom: 42.h),
                    builderDelegate: PagedChildBuilderDelegate<JobsModel>(
                      noItemsFoundIndicatorBuilder: (context) =>
                          const TopCompanyEmpty(),
                      firstPageProgressIndicatorBuilder: (context) =>
                          const TopCompanyCardShimmer(),
                      itemBuilder: (context, item, index) {
                        return JobCard(
                            item: item,
                            jobBloc: jobBloc,
                            userModel: state.user ??
                                authBloc.state.user ??
                                UserModel());
                      },
                    ),
                    separatorBuilder: (context, index) => spaceH16,
                  )),
            );
          },
        )));
  }
}

class JobCard extends StatelessWidget {
  final JobsModel item;
  final JobBloc jobBloc;
  final UserModel userModel;
  const JobCard(
      {super.key,
      required this.item,
      required this.jobBloc,
      required this.userModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: AppFormat.width(context) - 32.w,
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
      decoration: BoxDecoration(
          color: AppColor.white, borderRadius: BorderRadius.circular(24.r)),
      child: InkWell(
        onTap: () {
          jobBloc.add(JobEvent.getJobById(item, userModel));

          context.pushNamed(AppRouterName.jobDetail, extra: jobBloc);
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AvatarCompany(
                  sizeAvatar: 72.r,
                  avatarUrl: item.companyImage,
                ),
                InkWell(
                  onTap: () {
                    jobBloc.add(JobEvent.getJobById(item, userModel));
                    Future.delayed(const Duration(milliseconds: 400), () {
                      jobBloc.add(const JobEvent.updateBookmark());
                    });
                  },
                  child: SvgPicture.asset(
                    AppAsset.save,
                    color: AppFormat.isHasBookmark(item, userModel)
                        ? AppColor.secondary
                        : AppColor.unSelected,
                  ),
                )
              ],
            ),
            spaceH8,
            Text(
              item.title,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TxtStyles.extraBold16,
            ),
            spaceH4,
            Text(
              item.companyName,
              style:
                  TxtStyles.extraBold14.copyWith(fontWeight: FontWeight.normal),
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
            ),
            spaceH16,
            Wrap(
              spacing: 8.0.w,
              // runSpacing: 8.0.h,
              children: [
                Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 16.w, vertical: 6.h),
                  decoration: BoxDecoration(
                      color: AppColor.backgroundChip.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(8.r)),
                  child: Text(
                    item.experienceYear,
                    style: TxtStyles.regular14,
                  ),
                ),
                Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 16.w, vertical: 6.h),
                  decoration: BoxDecoration(
                      color: AppColor.secondary.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(8.r)),
                  child: Text(
                    AppFormat.parseSalaryText(item),
                    style: TxtStyles.semiBold14
                        .copyWith(color: AppColor.secondary),
                  ),
                ),
              ],
            ),
            spaceH16,
            Text(
              AppFormat.isAvailableJob(item)
                  ? AppFormat.parseDateTimeJob(item.endDate.toString())
                  : AppFormat.parseDateTimeJobExpired(item.endDate.toString()),
              style: TxtStyles.regular12.copyWith(
                  color: AppFormat.isAvailableJob(item)
                      ? AppColor.textGreyColor
                      : AppColor.red),
            ),
          ],
        ),
      ),
    );
  }
}

class JobExtra {
  final JobsModel jobsModel;
  final JobBloc jobBloc;

  JobExtra({required this.jobsModel, required this.jobBloc});
}
