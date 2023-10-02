import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive/hive.dart';
import 'package:jobspot/core/service_locator.dart';
import 'package:jobspot/design/app_asset.dart';
import 'package:jobspot/design/app_color.dart';
import 'package:jobspot/design/app_format.dart';
import 'package:jobspot/design/typography.dart';
import 'package:jobspot/feature/auth/feature/login/domain/usecases/login_use_case.dart';
import 'package:jobspot/feature/home/feature/job/presentation/bloc/job_bloc.dart';
import 'package:jobspot/router/app_router_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:jobspot/services/messaging_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  // final bool isFirst = checkIsFirst();
//  checkIsFirst() async {

  // return isFirst;
  // }

  var jobBloc = JobBloc();
  final _messagingServices = MessagingService();

  Future<void> initBox() async {
    if (await AppFormat.isCacheAddress()) {
    } else {
      jobBloc.add(const JobEvent.getAddress());
    }
  }

  @override
  void initState() {
    initBox();
    _messagingServices.init(context);
    Future.delayed(
      const Duration(seconds: 3),
      () async {
        final SharedPreferences prefs = await SharedPreferences.getInstance();
        final bool? isFirst = prefs.getBool('isFirst');
        if (isFirst == true) {
          serviceLocator<LoginUsecase>().checkIfUserLoggedIn().then((user) =>
              context.pushReplacementNamed(
                  user != null ? AppRouterName.home : AppRouterName.login));
        } else {
          if (mounted) {
            context.pushReplacementNamed(AppRouterName.intro);
          }
        }
      },
    );
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarIconBrightness:
          Brightness.light, // You can customize the status bar icon color
    ));
    super.initState();
  }

  @override
  void dispose() {
    // Restore the status bar color when leaving this screen
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarIconBrightness:
          Brightness.dark, // You can customize the default icon color
    ));
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   systemOverlayStyle: const SystemUiOverlayStyle(
        //     statusBarColor: Colors.red,

        //     statusBarBrightness: Brightness.light, // For iOS (dark icons)
        //   ),
        // ),
        body: Container(
      color: AppColor.primary,
      height: double.infinity,
      width: double.infinity,
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        SvgPicture.asset(
          AppAsset.logo,
          // semanticsLabel: 'Acme Logo'
        ),
        // Image.asset(
        //     cacheHeight: 100, cacheWidth: 100, 'assets/images/logo.png'),
        Text(
          'Jobspot',
          style: TxtStyles.extraBold32.copyWith(color: AppColor.white),
        )
      ]),
    ));
  }
}
