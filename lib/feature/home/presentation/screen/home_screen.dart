import 'dart:isolate';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_downloader/flutter_downloader.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:jobspot/common/widgets/stateless/avatar.dart';
import 'package:jobspot/common/widgets/stateless/avatar_company.dart';
import 'package:jobspot/common/widgets/stateless/shimmer_effect.dart';
import 'package:jobspot/design/app_asset.dart';
import 'package:jobspot/design/app_color.dart';
import 'package:jobspot/design/app_format.dart';
import 'package:jobspot/design/spaces.dart';
import 'package:jobspot/design/typography.dart';
import 'package:jobspot/feature/auth/feature/login/data/models/user_model.dart';
import 'package:jobspot/feature/auth/feature/login/presentation/bloc/auth_bloc.dart';
import 'package:jobspot/feature/auth/feature/profile/presentation/screens/profile_screen.dart';
import 'package:jobspot/feature/home/feature/company/data/models/company_model.dart';
import 'package:jobspot/feature/home/feature/company/presentation/bloc/company_bloc.dart';
import 'package:jobspot/feature/home/feature/cv/presentation/bloc/cv_bloc.dart';
import 'package:jobspot/feature/home/feature/cv/presentation/screens/cv_screen.dart';
import 'package:jobspot/feature/home/feature/job/presentation/bloc/job_bloc.dart';
import 'package:jobspot/feature/home/feature/notification/presentation/bloc/notification_bloc.dart';
import 'package:jobspot/feature/home/feature/notification/presentation/screens/notification_screen.dart';
import 'package:jobspot/feature/home/presentation/widgets/bookmark_screen.dart';
import 'package:jobspot/router/app_router_name.dart';

part '../widgets/bottom_bar.dart';
part '../widgets/company_card.dart';
part '../widgets/home_body.dart';
part '../widgets/icon_bottom_navigation_bar.dart';
part '../widgets/job_card.dart';
part '../widgets/top_company_shimmer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final ReceivePort _port = ReceivePort();
  // void _onTabTapped(int index) {
  //   setState(() {
  //     curentIndex = index;
  //   });
  // }

  int curentIndex = 0;

  @override
  void initState() {
    IsolateNameServer.registerPortWithName(
        _port.sendPort, 'downloader_send_port');
    _port.listen((dynamic data) {
      String id = data[0];
      int status = data[1];

      int progress = data[2];
      setState(() {});
    });

    FlutterDownloader.registerCallback(downloadCallback);
    super.initState();
  }

  @pragma('vm:entry-point')
  static void downloadCallback(String id, int status, int progress) {
    final SendPort send =
        IsolateNameServer.lookupPortByName('downloader_send_port')!;
    send.send([id, status, progress]);
  }

  @override
  void dispose() {
    IsolateNameServer.removePortNameMapping('downloader_send_port');
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final authBloc = context.read<AuthBloc>();
    authBloc.add(const AuthEvent.getUser());

    List<Widget> body = [
      BlocProvider(
        create: (context) => CompanyBloc(),
        child: HomeBody(authBloc: authBloc),
      ),
      BlocProvider(
        create: (context) => CvBloc(),
        child: const CVScreen(),
      ),
      BlocProvider(
        create: (context) => NotificationBloc(),
        child: const NotificationScreen(),
      ),
      BlocProvider(
        create: (context) => JobBloc(),
        child: const BookmarkScreen(),
      ),
    ];
    return Scaffold(
        backgroundColor: AppColor.backgroundWhite,
        // bottomNavigationBar: _buildBottomNavigationBar(),
        bottomNavigationBar: BottomNavBar(
          indexChange: (value) {
            setState(() {
              curentIndex = value;
            });
          },
        ),
        body: BlocConsumer<AuthBloc, AuthState>(
          listenWhen: (previous, current) =>
              previous.user != current.user && current.user == null,
          listener: (context, state) {
            context.pushReplacementNamed(AppRouterName.login);
          },
          builder: (context, state) {
            return body[curentIndex];
          },
        ));
  }

  // Widget _buildBottomNavigationBar() {
  //   return Container(
  //       height: 60.h,
  //       decoration: BoxDecoration(
  //         color: AppColor.white,
  //         boxShadow: [
  //           BoxShadow(
  //             color: AppColor.black.withOpacity(0.2),
  //             blurRadius: 2.0,
  //           ),
  //         ],
  //       ),
  //       child: Row(
  //         // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  //         children: [
  //           Expanded(
  //               child: IconBottomNarvigationBar(
  //             title: 'Home',
  //             iconUrl: curentIndex == 0 ? AppAsset.homeBold : AppAsset.home,
  //             onPressed: () => _onTabTapped(0),
  //             isFocus: curentIndex == 0,
  //           )),
  //           Expanded(
  //               child: IconBottomNarvigationBar(
  //             title: 'CV',
  //             iconUrl: curentIndex == 1 ? AppAsset.cvBold : AppAsset.cv,
  //             onPressed: () => _onTabTapped(1),
  //             isFocus: curentIndex == 1,
  //           )),
  //           // const ButtonBetween(),
  //           Expanded(
  //               child: IconBottomNarvigationBar(
  //             title: 'Notification',
  //             iconUrl: curentIndex == 2 ? AppAsset.bellBold : AppAsset.bell,
  //             onPressed: () => _onTabTapped(2),
  //             isFocus: curentIndex == 2,
  //           )),
  //           Expanded(
  //               child: IconBottomNarvigationBar(
  //             title: 'Bookmark',
  //             iconUrl:
  //                 curentIndex == 3 ? AppAsset.bookmarkBold : AppAsset.bookmark,
  //             onPressed: () => _onTabTapped(3),
  //             isFocus: curentIndex == 3,
  //           )),
  //         ],
  //       ));
  // }
}

// class ButtonBetween extends StatelessWidget {
//   const ButtonBetween({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
//       decoration:
//           const BoxDecoration(color: AppColor.primary, shape: BoxShape.circle),
//       child: const Icon(
//         Icons.add,
//         color: AppColor.white,
//       ),
//     );
//   }
// }





