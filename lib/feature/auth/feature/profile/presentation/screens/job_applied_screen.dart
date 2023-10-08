import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:jobspot/common/widgets/stateless/avatar_company.dart';
import 'package:jobspot/common/widgets/stateless/icon_widget.dart';
import 'package:jobspot/common/widgets/stateless/shimmer_effect.dart';
import 'package:jobspot/design/app_asset.dart';
import 'package:jobspot/design/app_color.dart';
import 'package:jobspot/design/app_format.dart';
import 'package:jobspot/design/spaces.dart';
import 'package:jobspot/design/typography.dart';
import 'package:jobspot/feature/auth/feature/login/data/models/user_model.dart';
import 'package:jobspot/feature/auth/feature/login/presentation/bloc/auth_bloc.dart';
import 'package:jobspot/feature/auth/feature/profile/data/models/cv_info_model.dart';
import 'package:jobspot/feature/home/feature/company/presentation/screens/company_detail_screen.dart';
import 'package:jobspot/feature/home/feature/cv/presentation/screens/cv_screen.dart';
import 'package:jobspot/feature/home/feature/job/presentation/bloc/job_bloc.dart';
import 'package:jobspot/router/app_router_name.dart';

class JobAppliedScreen extends StatelessWidget {
  const JobAppliedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final authBloc = context.read<AuthBloc>();
    final jobBloc = context.read<JobBloc>();
    jobBloc.add(JobEvent.getListApplyJob(authBloc.state.user ?? UserModel()));
    return BlocConsumer<JobBloc, JobState>(
      bloc: jobBloc,
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        return Scaffold(
            backgroundColor: AppColor.backgroundWhite,
            appBar: AppBar(
              title: Text(
                'Job applied',
                style: TxtStyles.semiBold20,
              ),
            ),
            body: RefreshIndicator(
              onRefresh: () async {
                jobBloc.add(JobEvent.getListApplyJob(
                    authBloc.state.user ?? UserModel()));
              },
              child: SafeArea(
                  child: SingleChildScrollView(
                physics: const AlwaysScrollableScrollPhysics(),
                child: state.isShimmer
                    ? const JobAppliedItemShimmer()
                    : state.cvInfoList.isEmpty
                        ? const TopCompanyEmpty()
                        : Column(
                            children: [
                              ListView.separated(
                                physics: const NeverScrollableScrollPhysics(),
                                separatorBuilder: (context, index) => spaceH16,
                                padding: EdgeInsets.symmetric(
                                    horizontal: 16.w, vertical: 16.h),
                                itemBuilder: (context, index) => JobAppliedItem(
                                  item: state.cvInfoList[index],
                                ),
                                itemCount: state.cvInfoList.length,
                                shrinkWrap: true,
                              ),
                              spaceH40
                            ],
                          ),
              )),
            ));
      },
    );
  }
}

class JobAppliedItem extends StatelessWidget {
  final CVInfoModel item;
  const JobAppliedItem({
    super.key,
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    final jobBloc = context.read<JobBloc>();
    final authBloc = context.read<AuthBloc>();

    var jobInfo = AppFormat.getJobInfo(item, jobBloc.state.jobsApplied);
    return InkWell(
      onTap: () {
        jobBloc.add(GetListJobMaxRequested(authBloc.state.user ?? UserModel()));
        jobBloc.add(
            JobEvent.getJobById(jobInfo, authBloc.state.user ?? UserModel()));
        context.pushNamed(AppRouterName.jobDetail, extra: jobBloc);
      },
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.r), color: AppColor.white),
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AvatarCompany(
                  sizeAvatar: 72.r,
                  avatarUrl: jobInfo.companyImage,
                  // avatarUrl: item.,
                ),
                spaceW16,
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        jobInfo.title,
                        style: TxtStyles.semiBold16,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      spaceH8,
                      Text(
                        jobInfo.companyName,
                        style: TxtStyles.regular14,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      )
                    ],
                  ),
                )
              ],
            ),
            spaceH8,
            Row(
              children: [
                const IconWidget(icon: AppAsset.location),
                spaceW4,
                Text(
                  jobInfo.location,
                  style: TxtStyles.regular14,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                )
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      const IconWidget(icon: AppAsset.salary),
                      spaceW4,
                      Text(
                        AppFormat.parseSalaryText(jobInfo),
                        style: TxtStyles.regular14,
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      const IconWidget(icon: AppAsset.timer),
                      spaceW4,
                      Text(
                        AppFormat.parseDate(jobInfo.endDate.toString()),
                        style: TxtStyles.regular14,
                      )
                    ],
                  ),
                ),
              ],
            ),
            spaceH8,
            InkWell(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => PdfViewerScreen(pdfUrl: item.cvLink),
                  ),
                );
              },
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 12.h),
                width: double.infinity,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.r),
                    color: AppColor.greyBox.withOpacity(0.4)),
                child: Text(
                  'View CV',
                  style: TxtStyles.semiBold16,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class JobAppliedItemShimmer extends StatelessWidget {
  const JobAppliedItemShimmer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ShimmerEffect(
      child: ListView.separated(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
        itemCount: 2,
        shrinkWrap: true,
        separatorBuilder: (context, index) => spaceH16,
        itemBuilder: (context, index) => Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.r), color: AppColor.white),
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AvatarCompany(
                    sizeAvatar: 72.r,
                  ),
                  spaceW16,
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'title',
                          style: TxtStyles.semiBold16,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        spaceH8,
                        Text(
                          'company',
                          style: TxtStyles.regular14,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        )
                      ],
                    ),
                  )
                ],
              ),
              spaceH8,
              Row(
                children: [
                  const IconWidget(icon: AppAsset.location),
                  spaceW4,
                  Text(
                    'Ho Chi Minh',
                    style: TxtStyles.regular14,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  )
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        const IconWidget(icon: AppAsset.salary),
                        spaceW4,
                        Text(
                          '\$200',
                          style: TxtStyles.regular14,
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        const IconWidget(icon: AppAsset.timer),
                        spaceW4,
                        Text(
                          '19/02/2000',
                          style: TxtStyles.regular14,
                        )
                      ],
                    ),
                  ),
                ],
              ),
              spaceH8,
              Container(
                padding: EdgeInsets.symmetric(vertical: 12.h),
                width: double.infinity,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.r),
                    color: AppColor.greyBox.withOpacity(0.4)),
                child: Text(
                  'View CV',
                  style: TxtStyles.semiBold16,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
