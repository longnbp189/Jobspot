part of '../screens/company_detail_screen.dart';

class CompanyDetailHeader extends StatelessWidget {
  final CompanyModel companyModel;

  const CompanyDetailHeader({
    super.key,
    required this.companyModel,
  });

  @override
  Widget build(BuildContext context) {
    var dialogContext = context;
    final companyBloc = context.read<CompanyBloc>();
    final authBloc = context.read<AuthBloc>();
    authBloc.add(const AuthEvent.getUser());
    return BlocBuilder<CompanyBloc, CompanyState>(
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
                    height: 160.h,
                  ),
                ),
                Positioned.fill(
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: AvatarCompany(
                      sizeAvatar: 72.r,
                      avatarUrl: state.company?.image,
                    ),
                  ),
                ),
              ],
            ),
            spaceH16,
            Text(
              companyModel.displayName,
              style: TxtStyles.extraBold16,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            if (companyModel.link.isNotEmpty)
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: Column(
                  children: [
                    spaceH8,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const IconWidget(icon: AppAsset.internet),
                        spaceW8,
                        companyModel.link.length > 40
                            ? Expanded(
                                child: GestureDetector(
                                  onTap: () => AppFormat.launchLink(
                                      companyModel.link, context),
                                  child: Text(
                                    companyModel.link,
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: TxtStyles.regular14,
                                  ),
                                ),
                              )
                            : GestureDetector(
                                onTap: () => AppFormat.launchLink(
                                    companyModel.link, context),
                                child: Text(
                                  companyModel.link,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: TxtStyles.regular14,
                                ),
                              )
                      ],
                    ),
                  ],
                ),
              ),
            spaceH8,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  children: [
                    const IconWidget(icon: AppAsset.employee),
                    spaceW8,
                    Text(
                      '${companyModel.followerIds.length} followers',
                      style: TxtStyles.regular14,
                    )
                  ],
                ),
                Row(
                  children: [
                    const IconWidget(icon: AppAsset.company),
                    spaceW8,
                    Text(
                      '${companyModel.employee}+ employees',
                      style: TxtStyles.regular14,
                    )
                  ],
                )
              ],
            ),
            spaceH16,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Row(
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        if (AppFormat.isFollow(
                            companyModel, authBloc.state.user!)) {
                          showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                contentPadding: EdgeInsets.symmetric(
                                    horizontal: 16.w, vertical: 16.h),
                                content: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    SvgPicture.asset(
                                      AppAsset.unfollow,
                                      height: 160.h,
                                      width: 160.w,
                                    ),
                                    spaceH16,
                                    RichText(
                                      text: TextSpan(
                                        text:
                                            'Once you unfollow, you will no longer receive recruitment communications from ',
                                        style: TxtStyles.semiBold14.copyWith(
                                            color: AppColor.textGreyColor),
                                        children: [
                                          TextSpan(
                                            text:
                                                '${companyModel.displayName} company. ',
                                            style: TxtStyles.semiBold14
                                                .copyWith(
                                                    color: AppColor.black
                                                        .withOpacity(0.7)),
                                          ),
                                          TextSpan(
                                            text: 'Do you want to continue?',
                                            style: TxtStyles.semiBold14
                                                .copyWith(
                                                    color:
                                                        AppColor.textGreyColor),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                actions: [
                                  ButtonBottomRow(
                                    titleLeft: 'Cancel',
                                    titleRight: 'Unfollow',
                                    onTapLeft: () => Navigator.pop(context),
                                    onTapRight: () {
                                      Navigator.pop(context);
                                      companyBloc.add(
                                          const CompanyEvent.followCompany());
                                    },
                                  )
                                ],
                              );
                            },
                          );
                        } else {
                          companyBloc.add(const CompanyEvent.followCompany());
                        }
                      },
                      child: AppFormat.isFollow(
                              companyModel, authBloc.state.user!)
                          ? Container(
                              padding: EdgeInsets.symmetric(vertical: 8.h),
                              decoration: BoxDecoration(
                                  border: Border.all(color: AppColor.primary),
                                  borderRadius: BorderRadius.circular(4.r),
                                  color: AppColor.white),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const IconWidget(icon: AppAsset.check),
                                  spaceW8,
                                  Text(
                                    'Followed company',
                                    textAlign: TextAlign.center,
                                    style: TxtStyles.semiBold14
                                        .copyWith(color: AppColor.primary),
                                  ),
                                ],
                              ),
                            )
                          : Container(
                              padding: EdgeInsets.symmetric(vertical: 8.h),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4.r),
                                  color: AppColor.primary),
                              child: Text(
                                '+ Follow company',
                                textAlign: TextAlign.center,
                                style: TxtStyles.semiBold14
                                    .copyWith(color: AppColor.white),
                              ),
                            ),
                    ),
                  ),
                  spaceW8,
                  InkWell(
                    onTap: () => AppFormat.sharedInfo(companyModel),
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 8.h, horizontal: 8.w),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4.r),
                          color: AppColor.greyBox.withOpacity(0.2)),
                      child: const IconWidget(icon: AppAsset.connection),
                    ),
                  ),
                ],
              ),
            )
          ],
        );
      },
    );
  }
}
