import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:jobspot/design/app_asset.dart';
import 'package:jobspot/design/app_color.dart';
import 'package:jobspot/design/spaces.dart';
import 'package:jobspot/design/typography.dart';
import 'package:jobspot/router/app_router_name.dart';
import 'package:shared_preferences/shared_preferences.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          shape: const CircleBorder(),

          child: Container(
            decoration: const BoxDecoration(
                shape: BoxShape.circle, color: AppColor.primary),
            child:
                Icon(Icons.arrow_right_alt, color: AppColor.white, size: 32.r),
          ),

          // shape: ,
          onPressed: () async {
            final SharedPreferences prefs =
                await SharedPreferences.getInstance();
            await prefs.setBool('isFirst', true);
            if (!context.mounted) return;
            context.pushReplacementNamed(AppRouterName.login);
          },
        ),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 24.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    'jobspot',
                    style: TxtStyles.semiBold18,
                  ),
                ),
                spaceH32,
                Image.asset(AppAsset.intro),
                spaceH32,
                RichText(
                  text: TextSpan(
                    text: 'Find your\n',
                    style: TxtStyles.extraBold32
                        .copyWith(fontSize: 40.sp, color: AppColor.black),
                    children: [
                      TextSpan(
                        text: 'Nice jobs\n',
                        style: TxtStyles.extraBold32.copyWith(
                            fontSize: 40.sp,
                            color: AppColor.secondary,
                            decoration: TextDecoration.underline),
                      ),
                      TextSpan(
                        text: 'Here!',
                        style: TxtStyles.extraBold32
                            .copyWith(fontSize: 40.sp, color: AppColor.black),
                      ),
                    ],
                  ),
                ),
                spaceH12,
                Text(
                  'Explore all the most exciting job roles based on your interest and study major.',
                  style: TxtStyles.regular14,
                )
              ],
            ),
          ),
        ));
  }
}
