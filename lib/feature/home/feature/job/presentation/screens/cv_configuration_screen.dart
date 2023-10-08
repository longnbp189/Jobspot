import 'dart:async';

import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:jobspot/common/widgets/enum/load_status_enum.dart';
import 'package:jobspot/common/widgets/stateful/custom_text_form_field.dart';
import 'package:jobspot/design/app_color.dart';
import 'package:jobspot/design/app_format.dart';
import 'package:jobspot/design/spaces.dart';
import 'package:jobspot/design/typography.dart';
import 'package:jobspot/feature/auth/feature/login/presentation/bloc/auth_bloc.dart';
import 'package:jobspot/feature/auth/feature/profile/data/models/cv_info_model.dart';
import 'package:jobspot/feature/home/feature/cv/data/models/cv_model.dart';
import 'package:jobspot/feature/home/feature/cv/presentation/bloc/cv_bloc.dart';
import 'package:jobspot/feature/home/feature/job/presentation/bloc/job_bloc.dart';

class CVConfigurationScreen extends StatefulWidget {
  const CVConfigurationScreen({super.key});

  @override
  State<CVConfigurationScreen> createState() => _CVConfigurationScreenState();
}

class _CVConfigurationScreenState extends State<CVConfigurationScreen> {
  bool _isKeyboardVisible = false;
  late StreamSubscription<bool> keyboardSubscription;
  final _nameController = TextEditingController();
  final _phoneController = TextEditingController();
  final _emailController = TextEditingController();
  final _introController = TextEditingController();
  var authBloc = AuthBloc();
  CVModel? selectedValue;
  @override
  void initState() {
    super.initState();
    var keyboardVisibilityController = KeyboardVisibilityController();

    authBloc = context.read<AuthBloc>();
    _nameController.text = authBloc.state.user?.displayName ?? '';
    _phoneController.text = authBloc.state.user?.phoneNumber ?? '';
    _emailController.text = authBloc.state.user?.email ?? '';
    _introController.text = authBloc.state.user?.introducingLetter ?? '';

    keyboardSubscription =
        keyboardVisibilityController.onChange.listen((bool visible) {
      _isKeyboardVisible = visible;
      print(visible);
    });
  }

  @override
  void dispose() {
    keyboardSubscription.cancel();
    _nameController.dispose();
    _phoneController.dispose();
    _emailController.dispose();
    _introController.dispose();
    super.dispose();
  }

  BuildContext? dialogContext;

  @override
  Widget build(BuildContext context) {
    final cvBloc = context.read<CvBloc>();
    final jobBloc = context.read<JobBloc>();
    var cvList = cvBloc.state.cvList;
    var isHasMainCV = cvList.firstWhereOrNull(
          (element) => element.isMainCV,
        ) ??
        CVModel();
    if (isHasMainCV.id.isNotEmpty) {
      selectedValue = isHasMainCV;
    }
    bool isInValidCV = selectedValue == null ||
        _nameController.text.isEmpty ||
        _phoneController.text.isEmpty ||
        _emailController.text.isEmpty ||
        _introController.text.isEmpty;
    return BlocListener<JobBloc, JobState>(
      listener: (context, state) {
        // if (state.updateSuccess) {
        //   print('pop');
        //   context.pop();
        //   AppFormat.showSnackBar(context, 'CV submitted successfully', 2);
        //   authBloc.add(InitUserRequested(state.user!));
        // }
        if (state.loadStatus == LoadStatusEnum.loading) {
          showDialog(
            context: context,
            barrierDismissible: false,
            builder: (context) {
              dialogContext = context;

              return Container(
                  color: AppColor.black.withOpacity(0.4),
                  child: const Center(child: CircularProgressIndicator()));
            },
          );
        }
        if (state.loadStatus == LoadStatusEnum.loaded) {
          print('close');
          if (dialogContext != null) {
            Navigator.of(dialogContext!).pop();
          }
        }
      },
      child: GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: Scaffold(
            backgroundColor: AppColor.backgroundWhite,
            appBar: AppBar(
              title: Text(
                'Apply CV',
                style: TxtStyles.semiBold20,
              ),
              centerTitle: true,
            ),
            bottomSheet: _isKeyboardVisible
                ? null
                : Container(
                    height: 80.h,
                    color: AppColor.white,
                    padding:
                        EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
                    child: Row(
                      children: [
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              context.pop();
                            },
                            child: Container(
                              padding: EdgeInsets.symmetric(vertical: 12.h),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12.r),
                                border: Border.all(color: AppColor.primary),
                              ),
                              child: Text(
                                'Back',
                                style: TxtStyles.semiBold16
                                    .copyWith(color: AppColor.primary),
                              ),
                            ),
                          ),
                        ),
                        spaceW16,
                        Expanded(
                          child: InkWell(
                            onTap: isInValidCV
                                ? null
                                : () {
                                    jobBloc.add(JobEvent.submitCV(CVInfoModel(
                                        id: AppFormat.generateRandomString(),
                                        jobId: jobBloc.state.job?.id ?? '',
                                        cvId: selectedValue?.id ?? '',
                                        cvLink: selectedValue?.url ?? '',
                                        cvName: selectedValue?.name ?? '',
                                        displayName: _nameController.text,
                                        userId: authBloc.state.user?.id ?? '',
                                        email: _emailController.text,
                                        introducingLetter:
                                            _introController.text,
                                        phoneNumber: _phoneController.text,
                                        sendDate: DateTime.now())));
                                  },
                            child: Container(
                              padding: EdgeInsets.symmetric(vertical: 12.h),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12.r),
                                  color: isInValidCV
                                      ? AppColor.primary.withOpacity(0.7)
                                      : AppColor.primary),
                              child: Text(
                                'Apply',
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
                child: SingleChildScrollView(
                    physics: const AlwaysScrollableScrollPhysics(),
                    padding: EdgeInsets.only(
                        left: 16.w,
                        right: 16.w,
                        top: 16.h,
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 16.w, vertical: 16.h),
                      color: AppColor.white,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Select CV',
                            style: TxtStyles.extraBold14,
                          ),
                          spaceH8,
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 16.w),
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: AppColor.grey,
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(12.r)),
                            child: DropdownButton<CVModel>(
                              hint: (selectedValue != null)
                                  ? null
                                  : const Text('Please select CV'),
                              value: selectedValue,
                              items: cvBloc.state.cvList.map((e) {
                                return DropdownMenuItem<CVModel>(
                                  value: e,
                                  child: Text(
                                    e.name,
                                    style: TxtStyles.regular16,
                                  ),
                                );
                              }).toList(),
                              style: TxtStyles.regular16,
                              icon: const Icon(Icons.arrow_drop_down),
                              isExpanded: true,
                              underline: const SizedBox(),
                              onChanged: (value) {
                                setState(() {
                                  selectedValue = value;
                                });
                              },
                            ),
                          ),
                          spaceH16,
                          CustomTextFormField(
                              title: 'Fullname',
                              onChanged: (value) =>
                                  jobBloc.add(JobEvent.getTextNameJob(value)),
                              textController: _nameController),
                          spaceH16,
                          CustomTextFormField(
                              title: 'Phone number',
                              type: TextInputType.number,
                              onChanged: (value) =>
                                  jobBloc.add(JobEvent.getTextPhoneJob(value)),
                              textController: _phoneController),
                          spaceH16,
                          CustomTextFormField(
                              onChanged: (value) =>
                                  jobBloc.add(JobEvent.getTextEmailJob(value)),
                              title: 'Email',
                              textController: _emailController),
                          spaceH16,
                          CustomTextFormField(
                              maxLength: 300,
                              maxLine: 8,
                              // type: TextInputType.multiline,
                              onChanged: (value) => jobBloc
                                  .add(JobEvent.getTextIntroLetterJob(value)),
                              title: 'Introducing letter',
                              textController: _introController),
                          spaceH100,
                          spaceH100
                        ],
                      ),
                    )))),
      ),
    );
  }
}

List listItem = ["Empty", "Item 1", "Item 2", "Item 3", "Item 4"];
