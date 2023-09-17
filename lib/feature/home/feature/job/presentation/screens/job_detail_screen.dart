import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:jobspot/common/widgets/stateful/show_more_widget.dart';
import 'package:jobspot/common/widgets/stateless/avatar_company.dart';
import 'package:jobspot/common/widgets/stateless/icon_widget.dart';
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
import 'package:jobspot/feature/home/feature/job/presentation/screens/job_screen.dart';

class JobDetailScreen extends StatefulWidget {
  const JobDetailScreen({
    super.key,
  });

  @override
  State<JobDetailScreen> createState() => _JobDetailScreenState();
}

class _JobDetailScreenState extends State<JobDetailScreen> {
  int intTab = 0;
  late ScrollController _scrollController;
  var collapsedHeight = 310.0;
  var authBloc = AuthBloc();
  var jobBloc = JobBloc();
  @override
  void initState() {
    authBloc = context.read<AuthBloc>();
    jobBloc = context.read<JobBloc>();
    _scrollController = ScrollController()
      ..addListener(() {
        setState(() {});
      });

    super.initState();
  }

  bool get _isSliverAppBarExpanded {
    return _scrollController.hasClients &&
        _scrollController.offset >
            (AppFormat.heightHeader(jobBloc.state.job!.title.length,
                    jobBloc.state.job!.companyName.length) -
                kToolbarHeight);
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<JobBloc, JobState>(
      listener: (context, state) {},
      builder: (context, state) {
        print(state.isShimmer);
        return DefaultTabController(
          length: 3,
          child: Scaffold(
              bottomSheet: Container(
                height: 80.h,
                color: AppColor.white,
                padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        // jobBloc.add(JobEvent.getJobById(
                        //     widget.job, authBloc.state.user ?? UserModel()));
                        // Future.delayed(const Duration(milliseconds: 400), () {
                        jobBloc.add(const JobEvent.updateBookmark());
                        // });
                      },
                      child: SvgPicture.asset(
                        AppAsset.save,
                        color: AppFormat.isHasBookmark(
                                state.job!, authBloc.state.user!)
                            ? AppColor.secondary
                            : AppColor.unSelected,
                      ),
                    ),
                    spaceW8,
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          showModalBottomSheet(
                            context: context,
                            builder: (context) => Container(
                              child: Column(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 16.w, vertical: 16.h),
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: Text(
                                            'Sử dụng cv đã ứng tuyển',
                                            style: TxtStyles.semiBold18,
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                        GestureDetector(
                                          onTap: () => context.pop(),
                                          child: const Icon(
                                            Icons.close,
                                            color: AppColor.primary,
                                            size: 24,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const Divider(
                                    color: AppColor.greyBox,
                                  ),
                                  const Column(
                                    children: [
                                      Text('sds'),
                                      Text('sds'),
                                      Text('sds'),
                                      Text('sds')
                                    ],
                                  )
                                ],
                              ),
                            ),
                          );
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: 12.h),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12.r),
                              color: AppColor.primary),
                          child: Text(
                            'Apply now',
                            style: TxtStyles.semiBold16
                                .copyWith(color: AppColor.white),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              body: SafeArea(
                  child: NestedScrollView(
                controller: _scrollController,
                headerSliverBuilder: (context, innerBoxIsScrolled) {
                  return [
                    SliverAppBar(
                      expandedHeight: AppFormat.heightHeader(
                          state.job!.title.length,
                          state.job!.companyName.length),
                      pinned: true,
                      leading: GestureDetector(
                        onTap: () => context.pop(),
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 700),
                          margin: const EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                            color: _isSliverAppBarExpanded
                                ? null
                                : Colors.white, // White background color
                            shape: BoxShape.circle,
                          ),
                          child: const Icon(
                            Icons.arrow_back,
                            color: AppColor.primary,
                          ),
                        ),
                      ),
                      flexibleSpace: FlexibleSpaceBar(
                        title: AnimatedOpacity(
                          opacity: _isSliverAppBarExpanded ? 1.0 : 0.0,
                          duration: const Duration(milliseconds: 300),
                          child: _isSliverAppBarExpanded
                              ? Text(
                                  state.job!.title,
                                  style: TxtStyles.semiBold20,
                                )
                              : null,
                        ),
                        background: JobDetailHeader(
                            jobsModel: state.job ?? JobsModel()),
                      ),
                    ),
                    SliverPersistentHeader(
                      delegate: SliverAppBarDelegate(
                        TabBar(
                            onTap: (value) {
                              setState(() {
                                intTab = value;
                              });

                              switch (intTab) {
                                case 1:
                                  jobBloc.add(const JobEvent.getJobSameType());

                                  break;
                                case 2:
                                  jobBloc
                                      .add(const JobEvent.getJobSameCompany());
                                  break;
                                default:
                              }
                            },
                            // isScrollable: true,
                            // tabAlignment: TabAlignment.start,

                            // indicatorColor: Colors.transparent,
                            // dividerColor: Colors.transparent,
                            // controller: _tabController,
                            tabs: [
                              Tab(
                                  child: Text(
                                'Information',
                                style: intTab == 0
                                    ? TxtStyles.semiBold14.copyWith(
                                        color: AppColor.primary,
                                        fontSize: 16.sp)
                                    : TxtStyles.semiBold14,
                              )),
                              Tab(
                                  child: Text(
                                'Related jobs',
                                style: intTab == 1
                                    ? TxtStyles.semiBold14.copyWith(
                                        color: AppColor.primary,
                                        fontSize: 16.sp)
                                    : TxtStyles.semiBold14,
                              )),
                              Tab(
                                  child: Text(
                                'Company',
                                style: intTab == 2
                                    ? TxtStyles.semiBold14.copyWith(
                                        color: AppColor.primary,
                                        fontSize: 16.sp)
                                    : TxtStyles.semiBold14,
                              )),
                            ]),
                      ),
                      pinned: true,
                    ),
                  ];
                },
                body: TabBarView(
                    physics: const NeverScrollableScrollPhysics(),
                    // controller: _tabController,
                    children: [
                      // AboutCompanyBody(
                      //   companyModel: widget.companyModel,
                      // ),
                      InformationJob(job: state.job ?? JobsModel()),
                      RelatedJobsBody(jobBloc: jobBloc),
                      CompanyBody(
                        authBloc: authBloc,
                        jobBloc: jobBloc,
                      ),
                    ]),
              ))),
        );
      },
    );
  }
}

class CompanyBody extends StatelessWidget {
  final JobBloc jobBloc;
  final AuthBloc authBloc;
  const CompanyBody({super.key, required this.jobBloc, required this.authBloc});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<JobBloc, JobState>(
      bloc: jobBloc,
      // buildWhen: (previous, current) =>
      //     previous.jobsSameCompany != current.jobsSameCompany,
      builder: (context, state) {
        print('1111 ${state.isShimmer}');
        print('2222 ${jobBloc.state.isShimmer}');
        return SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 16.w, right: 16.w, top: 16.h),
                child: state.isShimmer
                    ? const TopCompanyCardShimmer()
                    : Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            state.job!.companyName,
                            style: TxtStyles.semiBold18,
                          ),
                          spaceH16,
                          Row(
                            children: [
                              IconWidget(size: 32.r, icon: AppAsset.location),
                              spaceW8,
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Company address',
                                      style: TxtStyles.regular12,
                                    ),
                                    spaceH4,
                                    Text(
                                      jobBloc.state.job!.companyLocation,
                                      style: TxtStyles.semiBold14
                                          .copyWith(color: AppColor.secondary),
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                          spaceH16,
                          Row(
                            children: [
                              IconWidget(size: 32.r, icon: AppAsset.internet),
                              spaceW8,
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Website company',
                                      style: TxtStyles.regular12,
                                    ),
                                    spaceH4,
                                    GestureDetector(
                                      onTap: (state.company != null &&
                                              state.company!.link.isNotEmpty)
                                          ? () => AppFormat.launchLink(
                                              state.company!.link, context)
                                          : null,
                                      child: Text(
                                        (state.company != null &&
                                                state.company!.link.isNotEmpty)
                                            ? state.company!.link
                                            : 'Empty',
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        style: TxtStyles.semiBold14.copyWith(
                                            color: AppColor.secondary),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                          spaceH16,
                          Text(
                            'Company introduction',
                            style: TxtStyles.semiBold18,
                          ),
                          spaceH8,
                          ShowMoreWidget(text: state.company!.aboutCompany),
                        ],
                      ),
              ),
              spaceH16,
              ColoredBox(
                color: AppColor.backgroundWhite,
                child: Padding(
                  padding: EdgeInsets.only(
                      left: 16.w, right: 16.w, top: 16.h, bottom: 100.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Job with the same company',
                        style: TxtStyles.semiBold18,
                      ),
                      spaceH16,
                      state.jobsSameCompany.isNotEmpty
                          ? ListView.separated(
                              physics: const NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              itemBuilder: (context, index) => JobCard(
                                  item: state.jobsSameCompany[index],
                                  jobBloc: jobBloc,
                                  authBloc: authBloc),
                              separatorBuilder: (context, index) => spaceH16,
                              itemCount: state.jobsSameCompany.length)
                          : const EmptyJobDetail(),
                    ],
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}

class EmptyJobDetail extends StatelessWidget {
  const EmptyJobDetail({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppFormat.height(context),
      width: AppFormat.width(context),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            AppAsset.empty,
            height: 200.h,
            width: 200.w,
          ),
          spaceH32,
          Text(
            'Empty list',
            style: TxtStyles.semiBold16,
          )
        ],
      ),
    );
  }
}

class RelatedJobsBody extends StatelessWidget {
  final JobBloc jobBloc;
  const RelatedJobsBody({super.key, required this.jobBloc});

  @override
  Widget build(BuildContext context) {
    final authBloc = context.read<AuthBloc>();

    // final jobBlocc = context.read<JobBloc>() = jobBloc;

    // jobBloc.add(const GetJobSameTypeRequest());
    return ColoredBox(
        color: AppColor.backgroundWhite,
        child: BlocBuilder<JobBloc, JobState>(
          bloc: jobBloc,
          // buildWhen: (previous, current) =>
          //     previous.jobsSameType != current.jobsSameType,
          builder: (context, state) {
            print('22222 ${state.isShimmer}');
            print('2224444 ${jobBloc.state.isShimmer}');
            return SingleChildScrollView(
              padding: EdgeInsets.only(
                  left: 16.w, right: 16.w, top: 16.h, bottom: 100.h),
              child: state.isShimmer
                  ? const TopCompanyCardShimmer()
                  : state.jobsSameType.isNotEmpty
                      ? ListView.separated(
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemBuilder: (context, index) => JobCard(
                              item: state.jobsSameType[index],
                              jobBloc: jobBloc,
                              authBloc: authBloc),
                          separatorBuilder: (context, index) => spaceH16,
                          itemCount: state.jobsSameType.length)
                      : const EmptyJobDetail(),
            );
          },
        ));
  }
}

class InformationJob extends StatelessWidget {
  final JobsModel job;
  const InformationJob({
    super.key,
    required this.job,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const NeverScrollableScrollPhysics(),
      padding:
          EdgeInsets.only(left: 16.w, right: 16.w, top: 16.h, bottom: 100.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          spaceH16,
          Text(
            'General information',
            style: TxtStyles.semiBold18,
          ),
          spaceH16,
          Row(
            children: [
              IconWidget(size: 28.r, icon: AppAsset.type),
              spaceW16,
              Expanded(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Type',
                    style: TxtStyles.regular14
                        .copyWith(color: AppColor.textGreyColor),
                  ),
                  Text(
                    job.type,
                    style: TxtStyles.semiBold16,
                  ),
                ],
              ))
            ],
          ),
          spaceH16,
          Row(
            children: [
              IconWidget(size: 28.r, icon: AppAsset.employee),
              spaceW16,
              Expanded(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Number of recruits',
                    style: TxtStyles.regular14
                        .copyWith(color: AppColor.textGreyColor),
                  ),
                  Text(
                    '${job.quantity} people',
                    style: TxtStyles.semiBold16,
                  ),
                ],
              ))
            ],
          ),
          spaceH16,
          Row(
            children: [
              IconWidget(size: 28.r, icon: AppAsset.user),
              spaceW16,
              Expanded(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Gender',
                    style: TxtStyles.regular14
                        .copyWith(color: AppColor.textGreyColor),
                  ),
                  Text(
                    AppFormat.parseGender(job.gender),
                    style: TxtStyles.semiBold16,
                  ),
                ],
              ))
            ],
          ),
          spaceH16,
          Text(
            'Job description',
            style: TxtStyles.semiBold18,
          ),
          spaceH8,
          Text(
            job.description,
            style: TxtStyles.regular14,
          ),
          spaceH16,
          Text(
            'Job requirements',
            style: TxtStyles.semiBold18,
          ),
          spaceH8,
          Text(
            job.requirement,
            style: TxtStyles.regular14,
          ),
          spaceH16,
          Text(
            'Benefits',
            style: TxtStyles.semiBold18,
          ),
          spaceH8,
          Text(
            job.benefit,
            style: TxtStyles.regular14,
          ),
          spaceH16,
          Text(
            'Work location',
            style: TxtStyles.semiBold18,
          ),
          spaceH8,
          Text(
            job.companyLocation,
            style: TxtStyles.regular14,
          ),
        ],
      ),
    );
  }
}

class JobDetailHeader extends StatelessWidget {
  final JobsModel jobsModel;

  const JobDetailHeader({
    super.key,
    required this.jobsModel,
  });

  @override
  Widget build(BuildContext context) {
    final jobBloc = context.read<JobBloc>();
    final authBloc = context.read<AuthBloc>();
    authBloc.add(const AuthEvent.getUser());
    return BlocBuilder<JobBloc, JobState>(
      builder: (context, state) {
        return Column(
          children: [
            Stack(
              children: [
                Container(
                  padding: EdgeInsets.only(bottom: 16.h),
                  width: double.infinity,
                  child: Image.asset(
                    AppAsset.profileBackground,
                    fit: BoxFit.cover,
                    height: 190.h,
                  ),
                ),
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.only(top: 72.h, left: 16.w, right: 16.w),
                  padding:
                      EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.r),
                      color: AppColor.white,
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black26,
                          offset: Offset(0, 1),
                          blurRadius: 1.0,
                        ),
                      ]),
                  child: Column(children: [
                    spaceH32,
                    Text(
                      jobsModel.title,
                      style: TxtStyles.semiBold18,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                    ),
                    spaceH8,
                    Text(
                      jobsModel.companyName,
                      style: TxtStyles.regular14,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                    ),
                    spaceH16,
                    const Divider(
                      height: 0,
                    ),
                    spaceH16,
                    IntrinsicHeight(
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                IconWidget(size: 32.r, icon: AppAsset.salary),
                                spaceH8,
                                Text(
                                  'Salary',
                                  style: TxtStyles.regular12
                                      .copyWith(color: AppColor.textGreyColor),
                                ),
                                spaceH4,
                                Text(
                                  jobsModel.salary,
                                  style: TxtStyles.semiBold14
                                      .copyWith(color: AppColor.secondary),
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                )
                              ],
                            ),
                          ),
                          const VerticalDivider(),
                          Expanded(
                            child: Column(
                              children: [
                                IconWidget(size: 32.r, icon: AppAsset.location),
                                spaceH8,
                                Text(
                                  'Location',
                                  style: TxtStyles.regular12
                                      .copyWith(color: AppColor.textGreyColor),
                                ),
                                spaceH4,
                                Text(
                                  jobsModel.location,
                                  style: TxtStyles.semiBold14
                                      .copyWith(color: AppColor.secondary),
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                )
                              ],
                            ),
                          ),
                          const VerticalDivider(),
                          Expanded(
                            child: Column(
                              children: [
                                IconWidget(
                                    size: 32.r, icon: AppAsset.experience),
                                spaceH8,
                                Text(
                                  'Experience',
                                  style: TxtStyles.regular12
                                      .copyWith(color: AppColor.textGreyColor),
                                ),
                                spaceH4,
                                Text(
                                  jobsModel.experienceYear,
                                  style: TxtStyles.semiBold14
                                      .copyWith(color: AppColor.secondary),
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ]),
                ),
                Positioned.fill(
                  child: Padding(
                    padding: EdgeInsets.only(top: 36.h),
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: AvatarCompany(
                        sizeAvatar: 72.r,
                        avatarUrl: jobsModel.companyImage,
                      ),
                    ),
                  ),
                ),
              ],
            ),

            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //   children: [
            //     Row(
            //       children: [
            //         const IconWidget(icon: AppAsset.employee),
            //         spaceW8,
            //         Text(
            //           '${jobsModel.length} followers',
            //           style: TxtStyles.regular14,
            //         )
            //       ],
            //     ),
            //     Row(
            //       children: [
            //         const IconWidget(icon: AppAsset.company),
            //         spaceW8,
            //         Text(
            //           '${companyModel.employee}+ employees',
            //           style: TxtStyles.regular14,
            //         )
            //       ],
            //     )
            //   ],
            // ),
            spaceH16,
          ],
        );
      },
    );
  }
}
