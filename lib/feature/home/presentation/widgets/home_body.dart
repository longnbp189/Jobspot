part of '../screen/home_screen.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({
    super.key,
    required this.authBloc,
  });

  final AuthBloc authBloc;

  @override
  Widget build(BuildContext context) {
    context.read<CompanyBloc>().add(const CompanyEvent.getListTopCompany());
    return SafeArea(
        child: BlocConsumer<AuthBloc, AuthState>(
      listener: (context, state) {},
      builder: (context, state) {
        return SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                spaceH24,
                Row(
                  children: [
                    Text(
                      'Hello,\n${authBloc.state.user?.displayName}',
                      style: TxtStyles.extraBold20,
                    ),
                    const Expanded(child: SizedBox.shrink()),
                    GestureDetector(
                      onTap: () => context.pushNamed(AppRouterName.profile),
                      child: Avatar(
                        sizeAvatar: 52.r,
                        avatarUrl: authBloc.state.user?.image,
                      ),
                    )
                  ],
                ),
                spaceH16,
                GestureDetector(
                  onTap: () => context.pushNamed(AppRouterName.searchJob),
                  child: Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.r),
                      color: AppColor.white,
                    ),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.search,
                          color: AppColor.primary,
                        ),
                        spaceW8,
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'You want to find a job?',
                              style: TxtStyles.semiBold14,
                            ),
                            Text(
                              'Application position',
                              style: TxtStyles.regular14,
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                spaceH16,

                Row(
                  children: [
                    InkWell(
                      onTap: () => context.pushNamed(AppRouterName.job),
                      child: const FuntionWidget(
                        image: AppAsset.job,
                        text: 'Job',
                      ),
                    ),
                    spaceW16,
                    InkWell(
                      onTap: () => context.pushNamed(AppRouterName.company),
                      child: const FuntionWidget(
                        image: AppAsset.officeBuilding,
                        text: 'Company',
                      ),
                    ),
                  ],
                ),
                spaceH16,
                // IconButton(
                //     onPressed: () {
                //       authBloc.add(const AuthEvent.logout());
                //     },
                //     icon: const Icon(Icons.logout)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Best job',
                      style: TxtStyles.extraBold18,
                    ),
                    Text(
                      'View all',
                      style: TxtStyles.semiBold18
                          .copyWith(color: AppColor.secondary),
                    ),
                  ],
                ),
                spaceH16,

                const JobCard(),
                spaceH16,
                BlocBuilder<CompanyBloc, CompanyState>(
                  builder: (context, companyState) {
                    return companyState.isShimmer
                        ? const TopCompanyShimmer()
                        : Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Top company',
                                    style: TxtStyles.extraBold18,
                                  ),
                                  InkWell(
                                    onTap: () => context
                                        .pushNamed(AppRouterName.company),
                                    child: Text(
                                      'View all',
                                      style: TxtStyles.semiBold18
                                          .copyWith(color: AppColor.secondary),
                                    ),
                                  ),
                                ],
                              ),
                              spaceH16,
                              GridView.builder(
                                  physics: const NeverScrollableScrollPhysics(),
                                  shrinkWrap: true,
                                  gridDelegate:
                                      SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 2,
                                    crossAxisSpacing: 10.w,
                                    mainAxisSpacing: 10.h,
                                    childAspectRatio:
                                        (AppFormat.width(context) /
                                                AppFormat.height(context)) *
                                            ((AppFormat.width(context) > 700)
                                                ? 1.1
                                                : 1.15),
                                  ),
                                  itemCount: companyState.companies.length,
                                  itemBuilder: (context, index) => InkWell(
                                      onTap: () {
                                        context.pushNamed(
                                            AppRouterName.companyDetail,
                                            extra:
                                                companyState.companies[index]);
                                        context.read<CompanyBloc>().add(
                                            CompanyEvent.getCompanyById(
                                                companyState.companies[index],
                                                authBloc.state.user ??
                                                    UserModel()));
                                      },
                                      child: CompanyCard(
                                        company: companyState.companies[index],
                                      ))),
                            ],
                          );
                  },
                ),
              ],
            ),
          ),
        );
      },
    ));
  }
}

class FuntionWidget extends StatelessWidget {
  final String image;
  final String text;

  const FuntionWidget({
    super.key,
    required this.image,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
            decoration: const BoxDecoration(
                shape: BoxShape.circle, color: AppColor.backgroundChip),
            child: Image.asset(
              cacheHeight: 40,
              cacheWidth: 40,
              image,
              fit: BoxFit.cover,
            )),
        spaceH4,
        Text(
          text,
          style: TxtStyles.semiBold16,
        )
      ],
    );
  }
}
