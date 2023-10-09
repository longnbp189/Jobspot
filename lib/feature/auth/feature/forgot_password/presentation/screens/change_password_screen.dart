import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:jobspot/common/widgets/enum/load_status_enum.dart';
import 'package:jobspot/common/widgets/stateful/custom_text_form_field_password.dart';
import 'package:jobspot/common/widgets/stateless/button_medium.dart';
import 'package:jobspot/design/app_color.dart';
import 'package:jobspot/design/app_format.dart';
import 'package:jobspot/design/spaces.dart';
import 'package:jobspot/design/typography.dart';
import 'package:jobspot/feature/auth/feature/login/data/models/user_model.dart';
import 'package:jobspot/feature/auth/feature/login/presentation/bloc/auth_bloc.dart';
import 'package:jobspot/feature/auth/feature/profile/presentation/bloc/profile_bloc.dart';

class ChangePasswordScreen extends StatefulWidget {
  const ChangePasswordScreen({super.key});

  @override
  State<ChangePasswordScreen> createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<ChangePasswordScreen> {
  bool _passwordVisible = true;
  bool _confirmPasswordVisible = true;
  bool _newPasswordVisible = true;
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  final _newPasswordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  void _togglePassword() {
    setState(() {
      _passwordVisible = !_passwordVisible;
    });
  }

  void _toggleConfirmPassword() {
    setState(() {
      _confirmPasswordVisible = !_confirmPasswordVisible;
    });
  }

  void _toggleNewPassword() {
    setState(() {
      _newPasswordVisible = !_newPasswordVisible;
    });
  }

  @override
  void dispose() {
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    _newPasswordController.dispose();
    super.dispose();
  }

  BuildContext? dialogContext;

  @override
  Widget build(BuildContext context) {
    final profileBloc = context.read<ProfileBloc>();
    final authBloc = context.read<AuthBloc>();
    return Scaffold(
      backgroundColor: AppColor.backgroundWhite,
      appBar: AppBar(
        title: Text(
          'Change Password',
          style: TxtStyles.semiBold20,
        ),
      ),
      body: SafeArea(
        child: BlocConsumer<ProfileBloc, ProfileState>(
          listener: (context, state) {
            if (state.loadStatus == LoadStatusEnum.loading) {
              showDialog(
                  context: context,
                  barrierDismissible: false,
                  builder: (context) {
                    dialogContext = context;

                    return Container(
                        color: AppColor.black.withOpacity(0.4),
                        child:
                            const Center(child: CircularProgressIndicator()));
                  });
            }
            if (state.loadStatus == LoadStatusEnum.loaded) {
              if (dialogContext != null) {
                Navigator.of(dialogContext!).pop();
              }
              if (state.changePasswordSuccess == true) {
                if (!authBloc.state.user!.isPassword) {
                  var user = authBloc.state.user?.copyWith(isPassword: true) ??
                      UserModel();
                  authBloc.add(InitUserRequested(user));
                }
                AppFormat.showSnackBar(
                  context,
                  'Change Password success.',
                  2,
                );
                context.pop();
              }
            }
            if (state.error.isNotEmpty) {
              AppFormat.showSnackBar(
                context,
                'Duplicate email. Please use another email.',
                0,
              );
            }
          },
          builder: (context, state) {
            return SingleChildScrollView(
              child: Form(
                key: _formKey,
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 24.w, vertical: 24.h),
                  child: authBloc.state.user!.isPassword
                      ? Column(
                          children: [
                            spaceH16,
                            CustomTextFormFieldPassword(
                              // stateBloc: '',
                              // stateValue: '',
                              hide: _passwordVisible,
                              title: 'Old Password',
                              textController: _passwordController,
                              onTap: _togglePassword,
                              onChanged: (value) => profileBloc
                                  .add(ProfileEvent.passwordChanged(value)),
                            ),
                            spaceH16,
                            CustomTextFormFieldPassword(
                              // stateBloc: '',
                              // stateValue: '',
                              hide: _newPasswordVisible,
                              title: 'New Password',
                              textController: _newPasswordController,
                              onTap: _toggleNewPassword,
                              isCorrectOldPassword:
                                  state.isCorrectOldPassword(),

                              onChanged: (value) => profileBloc
                                  .add(ProfileEvent.newPasswordChanged(value)),
                            ),
                            spaceH16,
                            CustomTextFormFieldPassword(
                              // stateBloc: '',
                              // stateValue: '',
                              hide: _confirmPasswordVisible,
                              title: 'Confirm New Password',
                              textController: _confirmPasswordController,
                              onTap: _toggleConfirmPassword,
                              onChanged: (value) => profileBloc.add(
                                  ProfileEvent.confirmPasswordChanged(value)),
                              isCorrectPassword: state.isCorrectPassword(),
                            ),
                            spaceH32,
                            ButtonMedium(
                              title: 'Change password',
                              onTap: state.isPasswordEmpty() ||
                                      !state.isCorrectPassword() ||
                                      state.isCorrectOldPassword()
                                  ? null
                                  : () async {
                                      // FocusManager.instance.primaryFocus?.unfocus();
                                      if (_formKey.currentState!.validate()) {
                                        profileBloc.add(
                                            ProfileEvent.changePassword(
                                                authBloc.state.user ??
                                                    UserModel()));
                                      }

                                      // AppFormat.showSnackBar(
                                      //   context,
                                      //   'Tạo tài khoản thành công',
                                      //   2,
                                      // );
                                    },
                            ),
                          ],
                        )
                      : Column(
                          children: [
                            spaceH16,
                            CustomTextFormFieldPassword(
                              // stateBloc: '',
                              // stateValue: '',
                              hide: _newPasswordVisible,
                              title: 'New Password',
                              textController: _newPasswordController,
                              onTap: _toggleNewPassword,

                              onChanged: (value) => profileBloc
                                  .add(ProfileEvent.newPasswordChanged(value)),
                            ),
                            spaceH32,
                            ButtonMedium(
                              title: 'Change password',
                              onTap: state.isNewPasswordEmpty()
                                  ? null
                                  : () async {
                                      // FocusManager.instance.primaryFocus?.unfocus();
                                      if (_formKey.currentState!.validate()) {
                                        profileBloc.add(
                                            ProfileEvent.changePassword(
                                                authBloc.state.user ??
                                                    UserModel()));
                                      }

                                      // AppFormat.showSnackBar(
                                      //   context,
                                      //   'Tạo tài khoản thành công',
                                      //   2,
                                      // );
                                    },
                            ),
                          ],
                        ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
