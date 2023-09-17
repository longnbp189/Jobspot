import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:jobspot/common/widgets/stateless/button_medium.dart';
import 'package:jobspot/design/app_asset.dart';
import 'package:jobspot/design/spaces.dart';
import 'package:jobspot/design/typography.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobspot/feature/auth/feature/login/presentation/bloc/auth_bloc.dart';
import 'package:jobspot/router/app_router_name.dart';

class CheckMailScreen extends StatelessWidget {
  const CheckMailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final authBloc = context.read<AuthBloc>();

    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 24.h),
          child: Column(
            children: [
              Text(
                'Check Your Email',
                style: TxtStyles.semiBold32,
              ),
              spaceH8,
              Text(
                'We have sent the reset password to the email address\n ${authBloc.state.forgotEmail}',
                style: TxtStyles.regular12,
                textAlign: TextAlign.center,
              ),
              spaceH40,
              Image.asset(
                AppAsset.checkMail,
                height: 109.h,
                width: 125.w,
              ),
              spaceH32,
              ButtonMedium(
                title: 'Open Your Email',
                onTap: () async {},
              ),
              spaceH16,
              ButtonMedium(
                title: 'Back To Login',
                onTap: () {
                  context.pushReplacementNamed(AppRouterName.login);
                },
              ),
            ],
          ),
        ),
      )),
    );
  }
}
