import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';
import 'package:jobspot/common/widgets/stateless/avatar.dart';
import 'package:jobspot/common/widgets/stateless/button_medium.dart';
import 'package:jobspot/common/widgets/stateful/custom_text_form_field.dart';
import 'package:jobspot/common/widgets/stateless/icon_widget.dart';
import 'package:jobspot/design/app_asset.dart';
import 'package:jobspot/design/app_color.dart';
import 'package:jobspot/design/app_format.dart';
import 'package:jobspot/design/spaces.dart';
import 'package:jobspot/design/typography.dart';
import 'package:jobspot/feature/auth/feature/login/data/models/user_model.dart';
import 'package:jobspot/feature/auth/feature/login/presentation/bloc/auth_bloc.dart';
import 'package:jobspot/feature/auth/feature/profile/presentation/bloc/profile_bloc.dart';
import 'package:jobspot/feature/home/feature/job/presentation/screens/filter_job_screen.dart';
import 'package:jobspot/router/app_router_name.dart';
import 'package:permission_handler/permission_handler.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    final authBloc = context.read<AuthBloc>();

    return Scaffold(
      backgroundColor: AppColor.backgroundWhite,
      body: BlocProvider(
        create: (context) => ProfileBloc()
          ..add(ProfileEvent.getUser(authBloc.state.user ?? UserModel())),
        child: BlocConsumer<ProfileBloc, ProfileState>(
          listener: (context, state) {},
          builder: (context, state) {
            final profileBloc = context.read<ProfileBloc>();
            return SafeArea(
              child: GestureDetector(
                onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
                child: SingleChildScrollView(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        SizedBox(
                          width: double.infinity,
                          child: Image.asset(
                            AppAsset.profileBackground,
                            fit: BoxFit.cover,
                            height: 200.h,
                          ),
                        ),
                        // Padding(
                        //   padding: EdgeInsets.symmetric(
                        //       horizontal: 24.w, vertical: 24.h),
                        //   child: Column(
                        //     crossAxisAlignment: CrossAxisAlignment.start,
                        //     children: [
                        //       Avatar(
                        //         sizeAvatar: 60.r,
                        //         avatarUrl: state.userModel?.image ??
                        //             authBloc.state.user!.image,
                        //       ),
                        //       spaceH8,
                        //       Text(
                        //         state.userModel?.displayName ??
                        //             authBloc.state.user!.displayName,
                        //         style: TxtStyles.semiBold16
                        //             .copyWith(color: AppColor.white),
                        //       ),
                        //     ],
                        //   ),
                        // ),
                        Positioned(
                          left: 16.w,
                          top: 16.h,
                          child: GestureDetector(
                            onTap: () => context.pop(),
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 8.w, vertical: 8.h),
                              decoration: const BoxDecoration(
                                color: Colors.white, // White background color
                                shape: BoxShape.circle,
                              ),
                              child: Icon(
                                Icons.arrow_back,
                                size: 28.r,
                                color: AppColor.primary,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 32.h,
                          left: 16.w,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Avatar(
                                sizeAvatar: 60.r,
                                avatarUrl: state.userModel?.image ??
                                    authBloc.state.user!.image,
                              ),
                              spaceH8,
                              Text(
                                state.userModel?.displayName ??
                                    authBloc.state.user!.displayName,
                                style: TxtStyles.semiBold16
                                    .copyWith(color: AppColor.white),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                            bottom: 32.h,
                            right: 16.w,
                            child: InkWell(
                              onTap: () {
                                context.pushNamed(AppRouterName.editProfile,
                                    extra: profileBloc);
                                // await checkPermission();
                              },
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 12.w, vertical: 6.h),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8.r),
                                    color: AppColor.white.withOpacity(0.3)),
                                child: Row(
                                  children: [
                                    Text(
                                      'Edit Profile',
                                      style: TxtStyles.regular14
                                          .copyWith(color: AppColor.white),
                                    ),
                                    spaceW4,
                                    const IconWidget(
                                      icon: AppAsset.edit,
                                      color: AppColor.white,
                                    )
                                  ],
                                ),
                              ),
                            ))
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 16.w, vertical: 16.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Job search management',
                            style: TxtStyles.semiBold18,
                          ),
                          spaceH16,
                          Row(
                            children: [
                              Expanded(
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 12.w, vertical: 12.h),
                                  decoration: BoxDecoration(
                                    color: AppColor.white,
                                    borderRadius: BorderRadius.circular(8.r),
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const IconWidget(
                                          icon: AppAsset.experience),
                                      spaceH8,
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'Job applied',
                                            style: TxtStyles.regular14,
                                          ),
                                          Text(
                                            authBloc.state.user!.jobIds.length
                                                .toString(),
                                            style: TxtStyles.semiBold16,
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              spaceW16,
                              Expanded(
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 12.w, vertical: 12.h),
                                  decoration: BoxDecoration(
                                    color: AppColor.white,
                                    borderRadius: BorderRadius.circular(8.r),
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const IconWidget(icon: AppAsset.company),
                                      spaceH8,
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'Following company',
                                            style: TxtStyles.regular14,
                                          ),
                                          Text(
                                            authBloc
                                                .state.user!.followerIds.length
                                                .toString(),
                                            style: TxtStyles.semiBold16,
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 16.w, vertical: 16.h),
                      color: AppColor.white,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Account Settings',
                            style: TxtStyles.semiBold18,
                          ),
                          spaceH16,
                          ListView.separated(
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              itemBuilder: (context, index) =>
                                  ProfileOptionItem(item: itemProfile[index]),
                              separatorBuilder: (context, index) => Padding(
                                    padding:
                                        EdgeInsets.symmetric(vertical: 16.h),
                                    child: const Divider(
                                      height: 0,
                                      color: AppColor.unSelected,
                                    ),
                                  ),
                              itemCount: itemProfile.length),
                        ],
                      ),
                    )
                  ],
                )),
              ),
            );
          },
        ),
      ),
    );
  }
}

class ProfileOptionItem extends StatelessWidget {
  final ProfileItem item;

  const ProfileOptionItem({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (item.ontap != null) {
          item.ontap!(context);
        }
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              IconWidget(
                icon: item.icon,
                size: 28.r,
                color: AppColor.unSelected,
              ),
              spaceW8,
              Expanded(
                child: Text(
                  item.title,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TxtStyles.regular16,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
