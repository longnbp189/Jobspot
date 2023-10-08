import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:jobspot/common/widgets/enum/load_status_enum.dart';
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

class BookmarkScreen extends StatelessWidget {
  const BookmarkScreen({super.key});

  @override
  Widget build(BuildContext context) {
    BuildContext? dialogContext;
    final jobBloc = context.read<JobBloc>();
    final authBloc = context.read<AuthBloc>();
    jobBloc.add(GetListJobMaxRequested(authBloc.state.user!));
    return BlocConsumer<JobBloc, JobState>(
      listener: (context, state) {
        if (state.updateSuccess) {
          authBloc.add(InitUserRequested(state.user!));
        }
        if (state.loadStatus == LoadStatusEnum.loading) {
          showDialog(
              context: context,
              barrierDismissible: false,
              builder: (context) {
                dialogContext = context;

                return Container(
                    color: AppColor.black.withOpacity(0.4),
                    child: const Center(child: CircularProgressIndicator()));
              });
        }
        if (state.loadStatus == LoadStatusEnum.loaded) {
          if (dialogContext != null) {
            Navigator.of(dialogContext!).pop();
          }
        }
      },
      buildWhen: (previous, current) =>
          previous.jobBookmark != current.jobBookmark,
      builder: (context, state) {
        return Scaffold(
            backgroundColor: AppColor.backgroundWhite,
            appBar: AppBar(
              title: Text(
                'Bookmark',
                style: TxtStyles.semiBold20,
              ),
              actions: [
                GestureDetector(
                  onTap: state.jobBookmark.isNotEmpty
                      ? () {
                          jobBloc.add(const RemoveListBookmarkRequested());
                        }
                      : null,
                  child: Padding(
                    padding: EdgeInsets.only(right: 16.w),
                    child: IconWidget(
                        icon: AppAsset.readAll,
                        size: 36.r,
                        color: state.jobBookmark.isNotEmpty
                            ? AppColor.black
                            : AppColor.unSelected),
                  ),
                )
              ],
              centerTitle: true,
            ),
            body: SafeArea(
                child: SingleChildScrollView(
                    physics: state.jobBookmark.isEmpty
                        ? const NeverScrollableScrollPhysics()
                        : null,
                    padding: EdgeInsets.only(
                        left: 16.w, right: 16.w, top: 16.h, bottom: 42.h),
                    child: state.isShimmer
                        ? const TopCompanyCardShimmer()
                        : state.jobBookmark.isNotEmpty
                            ? ListView.separated(
                                separatorBuilder: (context, index) => spaceH16,
                                physics: const NeverScrollableScrollPhysics(),
                                padding: EdgeInsets.zero,
                                shrinkWrap: true,
                                itemCount: state.jobBookmark.length,
                                itemBuilder: (context, index) => JobCard(
                                    item: state.jobBookmark[index],
                                    jobBloc: jobBloc,
                                    userModel: authBloc.state.user??UserModel()),
                              )
                            : const JobEmpty())));
      },
    );
  }
}

class JobEmpty extends StatelessWidget {
  const JobEmpty({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppFormat.height(context) - 200.h,
      width: AppFormat.width(context),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'No Savings',
            style: TxtStyles.semiBold16,
          ),
          spaceH16,
          Text(
            "You don't have any jobs saved, please find it in search to save jobs",
            style: TxtStyles.regular14.copyWith(color: AppColor.textGreyColor),
            textAlign: TextAlign.center,
          ),
          spaceH32,
          Image.asset(
            AppAsset.bookmarkImage,
            height: 200.h,
            width: 200.w,
          ),
        ],
      ),
    );
  }
}
