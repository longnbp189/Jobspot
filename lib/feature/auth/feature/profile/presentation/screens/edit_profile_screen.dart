import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';
import 'package:jobspot/common/widgets/enum/load_status_enum.dart';
import 'package:jobspot/common/widgets/stateful/custom_text_form_field.dart';
import 'package:jobspot/common/widgets/stateless/avatar.dart';
import 'package:jobspot/common/widgets/stateless/button_medium.dart';
import 'package:jobspot/design/app_asset.dart';
import 'package:jobspot/design/app_color.dart';
import 'package:jobspot/design/app_format.dart';
import 'package:jobspot/design/spaces.dart';
import 'package:jobspot/design/typography.dart';
import 'package:jobspot/feature/auth/feature/login/presentation/bloc/auth_bloc.dart';
import 'package:jobspot/feature/auth/feature/profile/presentation/bloc/profile_bloc.dart';
import 'package:permission_handler/permission_handler.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  final _fullNameController = TextEditingController();
  final _emailController = TextEditingController();
  final _phoneController = TextEditingController();

  @override
  void dispose() {
    _fullNameController.dispose();
    _emailController.dispose();
    _phoneController.dispose();
    super.dispose();
  }

  final FirebaseStorage storage = FirebaseStorage.instance;
  final ImagePicker picker = ImagePicker();
  File? avatarImage;
  String avatarName = '';
  // UserModel? user;
  BuildContext? dialogContext;
  // final authState = AuthBloc().state;
  var profileBloc = ProfileBloc();
  var authBloc = AuthBloc();

  @override
  void initState() {
    profileBloc = context.read<ProfileBloc>();
    authBloc = context.read<AuthBloc>();
    // user = authState.user;
    profileBloc.add(ProfileEvent.fullnameChanged(
        profileBloc.state.userModel?.displayName ?? ''));
    profileBloc.add(ProfileEvent.phoneNumberChanged(
        profileBloc.state.userModel?.phoneNumber ?? ''));
    _emailController.text = profileBloc.state.userModel?.email ?? '';
    _fullNameController.text = profileBloc.state.userModel?.displayName ?? '';
    _phoneController.text = profileBloc.state.userModel?.phoneNumber ?? '';
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<ProfileBloc, ProfileState>(
        bloc: profileBloc,
        listener: (context, state) {
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
              if (avatarImage != null) {
                Navigator.of(dialogContext!).pop();
                Navigator.of(dialogContext!).pop();
              } else {
                Navigator.of(dialogContext!).pop();
              }
            }

            if (state.updateSuccess) {
              authBloc.add(InitUserRequested(state.userModel!));

              AppFormat.showSnackBar(context, 'Update success', 2);

              context.pop();
            }
          }
        },
        builder: (context, state) {
          // final profileBloc = context.read<ProfileBloc>();
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
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 24.w, vertical: 24.h),
                        child: Column(children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  avatarImage != null
                                      ? ClipOval(
                                          child: Image.file(
                                            fit: BoxFit.cover,
                                            avatarImage!,
                                            width: 60.r,
                                            height: 60.r,
                                          ),
                                        )
                                      : Avatar(
                                          sizeAvatar: 60.r,
                                          avatarUrl: state.userModel?.image,
                                        ),
                                  spaceH8,
                                  Text(
                                    state.userModel?.displayName ?? '',
                                    style: TxtStyles.semiBold16
                                        .copyWith(color: AppColor.white),
                                  ),
                                  spaceH24,
                                  InkWell(
                                    onTap: () async {
                                      dialogContext = context;
                                      if (await AppFormat()
                                          .checkPermission(dialogContext!)) {
                                        pickImage();
                                      }

                                      // await checkPermission();
                                    },
                                    child: Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 12.w, vertical: 6.h),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(8.r),
                                          color:
                                              AppColor.white.withOpacity(0.3)),
                                      child: Text(
                                        'Change image',
                                        style: TxtStyles.regular14
                                            .copyWith(color: AppColor.white),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              GestureDetector(
                                onTap: () {
                                  context.pop();
                                  // profileBloc
                                  //     .add(const ProfileEvent.updateUser());
                                },
                                child: Text(
                                  'Cancel',
                                  style: TxtStyles.semiBold14
                                      .copyWith(color: AppColor.white),
                                ),
                              ),
                            ],
                          ),
                        ]),
                      )
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24.w),
                    child: Column(
                      children: [
                        CustomTextFormField(
                          title: 'Full name',
                          // isCanEmpty: false,
                          textController: _fullNameController,
                          // stateBloc: '',
                          // stateValue: '',
                          onChanged: (value) => profileBloc
                              .add(ProfileEvent.fullnameChanged(value)),
                        ),
                        spaceH16,
                        CustomTextFormField(
                          title: 'Phone number',

                          // isCanEmpty: false,
                          type: TextInputType.number,
                          textController: _phoneController,
                          // stateBloc: '',
                          // stateValue: '',
                          onChanged: (value) => profileBloc
                              .add(ProfileEvent.phoneNumberChanged(value)),
                        ),
                        spaceH16,
                        CustomTextFormField(
                          enabled: false,
                          title: 'Email address',

                          // isCanEmpty: false,
                          textController: _emailController,

                          // stateBloc: '',
                          // stateValue: '',
                          // onChanged: (value) =>
                          //     authBloc.add(SignUpEvent.fullnameChanged(value)),
                        ),
                        spaceH32,
                        ButtonMedium(
                          title: 'Save',
                          onTap: state.isUpdateEmpty()
                              ? null
                              : () async {
                                  if (avatarImage != null) {
                                    profileBloc
                                        .add(const ProfileEvent.loading());

                                    await uploadAvatar(profileBloc);
                                  }

                                  profileBloc
                                      .add(const ProfileEvent.updateUser());
                                },
                        ),
                      ],
                    ),
                  )
                ],
              )),
            ),
          );
        },
      ),
    );
  }

  Future<void> checkPermission() async {
    PermissionStatus storageStatus = await Permission.storage.request();
    if (storageStatus.isGranted) {
      pickImage();
    } else {
      if (storageStatus.isDenied || storageStatus.isPermanentlyDenied) {
        print('Access denied');
        showPermissionDialog();
      } else {
        print('Exception occured!');
      }
    }
  }

  Future<void> pickImage() async {
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      setState(() {
        avatarImage = File(pickedFile.path);
        avatarName = pickedFile.name;
      });
    }
  }

  Future<void> uploadAvatar(ProfileBloc profileBloc) async {
    // if (user != null) {
    final storageRef = storage
        .ref()
        .child('avatars/${profileBloc.state.userModel?.id}/$avatarName');
    await storageRef.putFile(avatarImage!).whenComplete(() async {
      final String downloadURL = await storageRef.getDownloadURL();
      profileBloc.add(ProfileEvent.imageChanged(downloadURL));
      // Save the downloadURL in your user's profile or database
      print('Avatar URL: $downloadURL');
    });
    // }
  }

  showPermissionDialog() {
    return showDialog(
      context: dialogContext!,
      builder: (context) => AlertDialog(
        title: const Text('Permission Denied'),
        content: const Text('Allow access to gallery and photos'),
        actions: [
          TextButton(
            onPressed: () {
              context.pop();
            },
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () => openAppSettings(),
            child: const Text('Settings'),
          ),
        ],
      ),
    );
  }
}
