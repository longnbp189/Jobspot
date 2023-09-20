part of '../screens/company_detail_screen.dart';

class TopCompaniesBody extends StatelessWidget {
  const TopCompaniesBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<CompanyBloc>(context);
    final authBloc = context.read<AuthBloc>();

    final PagingController<int, CompanyModel> pagingController =
        PagingController(firstPageKey: 0);
    pagingController.addPageRequestListener((pageKey) {
      bloc.add(GetListCompanySameTypeRequested(pageKey));
    });

    return BlocConsumer<CompanyBloc, CompanyState>(
      listenWhen: (previous, current) =>
          previous.companies != current.companies,
      listener: (context, state) {
        if (state.isFollow) {
          var index = pagingController.itemList!
              .indexWhere((element) => element.id == state.company!.id);
          if (index != -1) {
            pagingController.itemList![index] = state.company!;
          }
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
        return ColoredBox(
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
                    // onTapFollow: () {
                    //   bloc.add(const ResetLastDocumentRequested());

                    //   pagingController.refresh();
                    // },
                    companyModel: item,
                  );
                },
              ),
              separatorBuilder: (context, index) => spaceH16,
            ));
      },
    );
  }
}

class TopCompanyEmpty extends StatelessWidget {
  const TopCompanyEmpty({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppFormat.height(context) - 200.h,
      width: AppFormat.width(context),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
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

class TopCompanyCard extends StatelessWidget {
  final CompanyModel companyModel;
  const TopCompanyCard({
    super.key,
    required this.companyModel,
  });

  @override
  Widget build(BuildContext context) {
    final authBloc = context.read<AuthBloc>();
    final companyBloc = context.read<CompanyBloc>();
    return BlocBuilder<CompanyBloc, CompanyState>(
      builder: (context, state) {
        return InkWell(
          onTap: () {
            FocusManager.instance.primaryFocus?.unfocus();
            companyBloc.add(CompanyEvent.getCompanyById(
                companyModel, authBloc.state.user ?? UserModel()));
            context.pushNamed(AppRouterName.companyDetail, extra: companyModel);
          },
          child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
              decoration: BoxDecoration(
                  color: AppColor.white,
                  borderRadius: BorderRadius.circular(24.r)),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AvatarCompany(
                    sizeAvatar: 72.r,
                    avatarUrl: companyModel.image,
                  ),
                  spaceW16,
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          companyModel.displayName,
                          style: TxtStyles.extraBold14,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                        ),
                        spaceH8,
                        Text(
                          companyModel.type,
                          style: TxtStyles.extraBold14
                              .copyWith(fontWeight: FontWeight.normal),
                        ),
                        spaceH8,
                        Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 16.w, vertical: 6.h),
                          decoration: BoxDecoration(
                              color: AppColor.backgroundChip.withOpacity(0.4),
                              borderRadius: BorderRadius.circular(8.r)),
                          child: Text(
                            '36 Jobs',
                            style: TxtStyles.regular14,
                          ),
                        ),
                        spaceH16,
                        InkWell(
                          onTap: () {
                            companyBloc.add(CompanyEvent.getCompanyById(
                                companyModel,
                                authBloc.state.user ?? UserModel()));
                            Future.delayed(const Duration(milliseconds: 400),
                                () {
                              companyBloc
                                  .add(const CompanyEvent.followCompany());
                            });
                          },
                          child: AppFormat.isFollow(
                                  companyModel, authBloc.state.user!)
                              ? Container(
                                  width: double.infinity,
                                  alignment: Alignment.bottomCenter,
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 16.w, vertical: 6.h),
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: AppColor.backgroundChip),
                                      color: AppColor.white,
                                      borderRadius:
                                          BorderRadius.circular(24.r)),
                                  child: Text(
                                    'Following',
                                    style: TxtStyles.semiBold14,
                                  ),
                                )
                              : Container(
                                  width: double.infinity,
                                  alignment: Alignment.bottomCenter,
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 16.w, vertical: 6.h),
                                  decoration: BoxDecoration(
                                      border:
                                          Border.all(color: AppColor.primary),
                                      color: AppColor.white,
                                      borderRadius:
                                          BorderRadius.circular(24.r)),
                                  child: Text(
                                    '+ Follow',
                                    style: TxtStyles.semiBold14
                                        .copyWith(color: AppColor.primary),
                                  ),
                                ),
                        ),
                      ],
                    ),
                  )
                ],
              )),
        );
      },
    );
  }
}

class TopCompanyCardShimmer extends StatelessWidget {
  const TopCompanyCardShimmer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ShimmerEffect(
      child: Column(
        children: [
          Container(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
              decoration: BoxDecoration(
                  color: AppColor.white,
                  borderRadius: BorderRadius.circular(24.r)),
              child: Row(
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
                          'Coong ty abc',
                          style: TxtStyles.extraBold14,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                        ),
                        spaceH8,
                        Text(
                          'Logic',
                          style: TxtStyles.extraBold14
                              .copyWith(fontWeight: FontWeight.normal),
                        ),
                        spaceH8,
                        Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 16.w, vertical: 6.h),
                          decoration: BoxDecoration(
                              color: AppColor.backgroundChip.withOpacity(0.4),
                              borderRadius: BorderRadius.circular(8.r)),
                          child: Text(
                            '36 Jobs',
                            style: TxtStyles.regular14,
                          ),
                        ),
                        spaceH16,
                        Container(
                          width: double.infinity,
                          alignment: Alignment.bottomCenter,
                          padding: EdgeInsets.symmetric(
                              horizontal: 16.w, vertical: 6.h),
                          decoration: BoxDecoration(
                              border: Border.all(color: AppColor.primary),
                              color: AppColor.white,
                              borderRadius: BorderRadius.circular(24.r)),
                          child: Text(
                            '+ Follow',
                            style: TxtStyles.semiBold14
                                .copyWith(color: AppColor.primary),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              )),
          spaceH16,
          Container(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
              decoration: BoxDecoration(
                  color: AppColor.white,
                  borderRadius: BorderRadius.circular(24.r)),
              child: Row(
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
                          'Coong ty abc',
                          style: TxtStyles.extraBold14,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                        ),
                        spaceH8,
                        Text(
                          'Logic',
                          style: TxtStyles.extraBold14
                              .copyWith(fontWeight: FontWeight.normal),
                        ),
                        spaceH8,
                        Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 16.w, vertical: 6.h),
                          decoration: BoxDecoration(
                              color: AppColor.backgroundChip.withOpacity(0.4),
                              borderRadius: BorderRadius.circular(8.r)),
                          child: Text(
                            '36 Jobs',
                            style: TxtStyles.regular14,
                          ),
                        ),
                        spaceH16,
                        Container(
                          width: double.infinity,
                          alignment: Alignment.bottomCenter,
                          padding: EdgeInsets.symmetric(
                              horizontal: 16.w, vertical: 6.h),
                          decoration: BoxDecoration(
                              border: Border.all(color: AppColor.primary),
                              color: AppColor.white,
                              borderRadius: BorderRadius.circular(24.r)),
                          child: Text(
                            '+ Follow',
                            style: TxtStyles.semiBold14
                                .copyWith(color: AppColor.primary),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              )),
        ],
      ),
    );
  }
}
