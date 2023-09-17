import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:jobspot/common/widgets/stateless/button_medium.dart';
import 'package:jobspot/common/widgets/stateful/custom_text_form_field.dart';
import 'package:jobspot/common/widgets/stateless/loading_screen.dart';
import 'package:jobspot/design/app_asset.dart';
import 'package:jobspot/design/app_format.dart';
import 'package:jobspot/design/spaces.dart';
import 'package:jobspot/design/typography.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobspot/feature/auth/feature/login/presentation/bloc/auth_bloc.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  final _emailController = TextEditingController();

  bool _isLocked = false;
  int _remainingTime = 10; // Countdown in seconds
  Timer? _countdownTimer;

  void _startCountdown() {
    if (_countdownTimer != null) {
      _countdownTimer!.cancel();
    }

    setState(() {
      _isLocked = true;
      _remainingTime = 10; // Reset countdown
    });

    _countdownTimer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        if (_remainingTime > 0) {
          _remainingTime--;
        } else {
          _isLocked = false;
          _countdownTimer!.cancel();
        }
      });
    });
  }

  void _sendEmailAndStartCountdown() {
    // Perform email sending logic here

    // Start the countdown after sending the email
    _startCountdown();
  }

  @override
  Widget build(BuildContext context) {
    final authBloc = context.read<AuthBloc>();

    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        body: SafeArea(
          child: BlocConsumer<AuthBloc, AuthState>(
            listenWhen: (previous, current) =>
                previous.error != current.error || current.sendEmailSuccess,
            listener: (context, state) {
              if (state.sendEmailSuccess) {
                _sendEmailAndStartCountdown();
                AppFormat.showSnackBar(
                  context,
                  'Please check your email to change your password.',
                  2,
                );
              }
              if (state.error.isNotEmpty) {
                AppFormat.showSnackBar(
                  context,
                  'The current email does not exist in the system.',
                  0,
                );
              }
            },
            builder: (context, state) {
              return Stack(
                children: [
                  SingleChildScrollView(
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 24.w, vertical: 24.h),
                      child: Column(
                        children: [
                          Text(
                            'Forgot Password?',
                            style: TxtStyles.semiBold32,
                          ),
                          spaceH8,
                          Text(
                            'To reset your password, you need your email or mobile number that can be authenticated',
                            style: TxtStyles.regular12,
                            textAlign: TextAlign.center,
                          ),
                          spaceH40,
                          Image.asset(
                            AppAsset.forgetPassword,
                            height: 109.h,
                            width: 125.w,
                          ),
                          spaceH40,
                          CustomTextFormField(
                            title: 'Email',
                            // stateBloc: authBloc.state.error,
                            // stateValue: authBloc.state.email,
                            // isCanEmpty: false,
                            textController: _emailController,
                            onChanged: (value) => authBloc
                                .add(AuthEvent.forgotEmailChanged(value)),
                          ),
                          spaceH32,
                          ButtonMedium(
                            title: _isLocked
                                ? 'Reset Password ${_remainingTime}s'
                                : 'Reset Password',
                            onTap: authBloc.state.isForgotEmailEmpty() ||
                                    _isLocked
                                ? null
                                : () {
                                    FocusManager.instance.primaryFocus
                                        ?.unfocus();
                                    authBloc
                                        .add(const AuthEvent.forgotPassword());
                                  },
                          ),
                          spaceH16,
                          ButtonMedium(
                            title: 'Back To Login',
                            onTap: () {
                              FocusManager.instance.primaryFocus?.unfocus();

                              context.pop();
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                  if (state.isLoading) const LoadingScreen()
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
