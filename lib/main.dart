import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_downloader/flutter_downloader.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobspot/core/service_locator.dart';
import 'package:jobspot/design/app_format.dart';
import 'package:jobspot/design/app_theme.dart';
import 'package:jobspot/feature/auth/feature/login/presentation/bloc/auth_bloc.dart';
import 'package:jobspot/feature/home/feature/company/presentation/bloc/company_bloc.dart';
import 'package:jobspot/feature/home/feature/cv/presentation/bloc/cv_bloc.dart';
import 'package:jobspot/feature/home/feature/job/presentation/bloc/job_bloc.dart';
import 'package:jobspot/firebase_options.dart';

import 'router/app_router.dart';

// Future<void> backgroundHandler(RemoteMessage message) async {
//   print(message.data.toString());
//   print(message.notification!.title);
// }

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  await setUpServiceLocator();

  await FlutterDownloader.initialize(
      debug:
          true, // optional: set to false to disable printing logs to console (default: true)
      ignoreSsl:
          true // option: set to false to disable working with http links (default: false)
      );

  runApp(const MyApp());
  await ScreenUtil.ensureScreenSize();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // checkInternetConnectivity(context);

    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AuthBloc(),
        ),
        BlocProvider(
          create: (context) =>
              // CompanyBloc()..add(const CompanyEvent.getListCompanyMax()),
              CompanyBloc(),
        ),
        BlocProvider(
          create: (context) =>
              // CompanyBloc()..add(const CompanyEvent.getListTopCompany()),
              CvBloc(),
        ),
        BlocProvider(
          create: (context) =>
              // CompanyBloc()..add(const CompanyEvent.getListTopCompany()),
              JobBloc(),
        ),
        // BlocProvider(
        //   create: (context) =>
        //       // CompanyBloc()..add(const CompanyEvent.getListTopCompany()),
        //       ChatBloc(),
        // ),
        // BlocProvider(
        //   create: (context) => NotificationBloc(),
        // ),
      ],
      child: ScreenUtilInit(
          designSize: const Size(375, 812),
          builder: (context, child) => const ConnectionChecker()),
    );
  }
}

class ConnectionChecker extends StatefulWidget {
  const ConnectionChecker({
    super.key,
  });

  @override
  State<ConnectionChecker> createState() => _ConnectionCheckerState();
}

class _ConnectionCheckerState extends State<ConnectionChecker> {
  var isShowDialog = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StreamBuilder<bool>(
        stream: AppFormat.checkInternetConnectivity(),
        initialData: true, // Initially assuming the device is online
        builder: (context, snapshot) {
          if (!snapshot.data! && isShowDialog) {
            isShowDialog = false;
            WidgetsBinding.instance.addPostFrameCallback((_) {
              showDialog(
                context: context,
                barrierDismissible: false,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: const Text('No Internet Connection'),
                    content: const Text(
                        'Please check your internet connection and try again.'),
                    actions: <Widget>[
                      TextButton(
                        child: const Text('OK'),
                        onPressed: () {
                          isShowDialog = true;
                          Navigator.of(context).pop();
                        },
                      ),
                    ],
                  );
                },
              );
            });
          }

          return Localizations(
            locale:
                const Locale('en', 'US'), // Replace with your desired locale
            delegates: const [
              DefaultMaterialLocalizations.delegate,
              DefaultCupertinoLocalizations.delegate,
              DefaultWidgetsLocalizations.delegate,
            ],
            child: MaterialApp.router(
              theme: AppTheme.lightTheme(context),
              routerDelegate: AppRouter.router.routerDelegate,
              routeInformationParser: AppRouter.router.routeInformationParser,
              routeInformationProvider:
                  AppRouter.router.routeInformationProvider,
            ),
          );
        },
      ),
    );
  }
}
