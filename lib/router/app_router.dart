import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobspot/feature/auth/feature/forgot_password/presentation/screens/check_mail_screen.dart';
import 'package:jobspot/feature/auth/feature/forgot_password/presentation/screens/forgot_password_screen.dart';
import 'package:jobspot/feature/auth/feature/login/presentation/screens/login_screen.dart';
import 'package:jobspot/feature/auth/feature/profile/presentation/bloc/profile_bloc.dart';
import 'package:jobspot/feature/home/feature/job/presentation/screens/cv_configuration_screen.dart';
import 'package:jobspot/feature/auth/feature/profile/presentation/screens/edit_profile_screen.dart';
import 'package:jobspot/feature/auth/feature/profile/presentation/screens/profile_screen.dart';
import 'package:jobspot/feature/auth/feature/sign_up/presentation/screens/sign_up_screen.dart';
import 'package:jobspot/feature/home/feature/company/data/models/company_model.dart';
import 'package:jobspot/feature/home/feature/company/presentation/bloc/company_bloc.dart';
import 'package:jobspot/feature/home/feature/company/presentation/screens/company_detail_screen.dart';
import 'package:jobspot/feature/home/feature/company/presentation/screens/company_screen.dart';
import 'package:jobspot/feature/home/feature/company/presentation/screens/search_company.dart';
import 'package:jobspot/feature/home/feature/cv/presentation/bloc/cv_bloc.dart';
import 'package:jobspot/feature/home/feature/cv/presentation/screens/cv_screen.dart';
import 'package:jobspot/feature/home/feature/job/data/models/jobs_model.dart';
import 'package:jobspot/feature/home/feature/job/presentation/bloc/job_bloc.dart';
import 'package:jobspot/feature/home/feature/job/presentation/screens/filter_job_screen.dart';
import 'package:jobspot/feature/home/feature/job/presentation/screens/job_detail_screen.dart';
import 'package:jobspot/feature/home/feature/job/presentation/screens/job_screen.dart';
import 'package:jobspot/feature/home/feature/job/presentation/screens/search_job_screen.dart';
import 'package:jobspot/feature/home/feature/notification/presentation/bloc/notification_bloc.dart';
import 'package:jobspot/feature/home/feature/notification/presentation/screens/notification_screen.dart';
import 'package:jobspot/feature/home/presentation/screen/home_screen.dart';
import 'package:jobspot/feature/splash/presentation/screen/intro_screen.dart';
import 'package:jobspot/feature/splash/presentation/screen/splash_screen.dart';
import 'package:jobspot/router/app_router_name.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static var navigationKey = GlobalKey<NavigatorState>();

  // static GoRouter get router => _router;

  static final GoRouter router = GoRouter(
    initialLocation: '/',
    debugLogDiagnostics: true,
    // refreshListenable: GoRouterRefreshStream(stream),
    routes: <GoRoute>[
      GoRoute(
          path: '/',
          pageBuilder: (context, state) =>
              const MaterialPage(child: SplashScreen()),
          routes: [
            GoRoute(
                name: AppRouterName.home,
                path: 'home',
                pageBuilder: (context, state) =>
                    const MaterialPage(child: HomeScreen()),
                routes: [
                  GoRoute(
                      name: AppRouterName.profile,
                      path: 'profile',
                      pageBuilder: (context, state) =>
                          const MaterialPage(child: ProfileScreen()),
                      routes: [
                        GoRoute(
                          name: AppRouterName.editProfile,
                          path: 'edit-profile',
                          pageBuilder: (context, state) {
                            final arguments = state.extra as ProfileBloc;

                            return MaterialPage(
                                child: BlocProvider.value(
                              value: arguments,
                              child: const EditProfileScreen(),
                            ));
                          },
                        ),
                        GoRoute(
                          name: AppRouterName.cvConfiguration,
                          path: 'cv-configuration',
                          pageBuilder: (context, state) {
                            final arguments = state.extra as SubmitJob;

                            return MaterialPage(
                                child: MultiBlocProvider(
                              providers: [
                                BlocProvider.value(
                                  value: arguments.jobBloc,
                                ),
                                BlocProvider.value(
                                  value: arguments.cvBloc,
                                ),
                              ],
                              child: const CVConfigurationScreen(),
                            ));
                          },
                        ),
                        
                      ]),
                  GoRoute(
                    name: AppRouterName.companyDetail,
                    path: 'conpany-detail',
                    pageBuilder: (context, state) {
                      final arguments = state.extra as CompanyModel;
                      return MaterialPage(
                          child: CompanyDetailScreen(companyModel: arguments));
                    },
                  ),
                  GoRoute(
                    name: AppRouterName.cv,
                    path: 'cv',
                    pageBuilder: (context, state) {
                      return MaterialPage(
                          child: BlocProvider(
                        create: (context) => CvBloc(),
                        child: const CVScreen(),
                      ));
                    },
                  ),
                  GoRoute(
                    name: AppRouterName.notification,
                    path: 'notification',
                    pageBuilder: (context, state) {
                      return MaterialPage(
                          child: BlocProvider(
                        create: (context) => NotificationBloc(),
                        child: const NotificationScreen(),
                      ));
                    },
                  ),
                  GoRoute(
                      name: AppRouterName.company,
                      path: 'company',
                      pageBuilder: (context, state) {
                        return MaterialPage(
                            child: BlocProvider(
                          create: (context) => CompanyBloc(),
                          child: const CompanyScreen(),
                        ));
                      },
                      routes: [
                        GoRoute(
                          name: AppRouterName.searchCompany,
                          path: 'search-company',
                          pageBuilder: (context, state) {
                            return MaterialPage(
                                child: BlocProvider(
                              create: (context) => CompanyBloc(),
                              child: const SearchCompany(),
                            ));
                          },
                        ),
                      ]),
                  GoRoute(
                      name: AppRouterName.job,
                      path: 'job',
                      pageBuilder: (context, state) {
                        return MaterialPage(
                            child: BlocProvider(
                          create: (context) => JobBloc(),
                          child: const JobScreen(),
                        ));
                      },
                      routes: [
                        GoRoute(
                          name: AppRouterName.jobDetail,
                          path: 'job-detail',
                          pageBuilder: (context, state) {
                            final arguments = state.extra as JobBloc;

                            return MaterialPage(
                                child: BlocProvider.value(
                              value: arguments,
                              child: const JobDetailScreen(
                                  // jobBloc: arguments.jobBloc,
                                  ),
                            ));
                          },
                        )
                      ]),
                  GoRoute(
                      name: AppRouterName.searchJob,
                      path: 'search-job',
                      pageBuilder: (context, state) {
                        return MaterialPage(
                            child: BlocProvider(
                          create: (context) => JobBloc(),
                          child: const SearchJobScreen(),
                        ));
                      },
                      routes: [
                        GoRoute(
                          name: AppRouterName.filterJob,
                          path: 'filter-job',
                          pageBuilder: (context, state) {
                            return MaterialPage(
                                child: BlocProvider(
                              create: (context) => JobBloc()
                                ..add(const GetProvincesRequested())
                                ..add(const GetJobCategoryRequested()),
                              child: const FilterJobScreen(),
                            ));
                          },
                        ),
                      ]),
                ]
                // builder: (context, state) => const MyHomePage(title: 'a'),
                ),
            GoRoute(
              name: AppRouterName.intro,
              path: 'intro',
              pageBuilder: (context, state) =>
                  const MaterialPage(child: IntroScreen()),
              // builder: (context, state) => const IntroScreen(),
            )
          ]
          // builder: (context, state) => const SplashScreen(),
          ),
      GoRoute(
          name: AppRouterName.login,
          path: '/login',
          builder: (context, state) => const LoginScreen(),
          routes: [
            GoRoute(
              name: AppRouterName.signUp,
              path: 'sign-up',
              pageBuilder: (context, state) =>
                  const MaterialPage(child: SignUpScreen()),
            ),
            GoRoute(
                name: AppRouterName.forgotPassword,
                path: 'forgot-password',
                pageBuilder: (context, state) =>
                    const MaterialPage(child: ForgotPasswordScreen()),
                routes: [
                  GoRoute(
                    name: AppRouterName.checkYourEmail,
                    path: 'check-your-email',
                    pageBuilder: (context, state) =>
                        const MaterialPage(child: CheckMailScreen()),
                  ),
                ]),
          ]),
      // GoRoute(
      //   name: AppRouterName.intro,
      //   path: '/intro',
      //   pageBuilder: (context, state) =>
      //       const MaterialPage(child: IntroScreen()),
      //   // builder: (context, state) => const IntroScreen(),
      // )
    ],
    // redirect: (context, state) {
    //   return null;
    // },
    errorPageBuilder: (context, state) => const MaterialPage(
        child: Scaffold(
      body: Center(child: Text('Error 404')),
    )),
  );
}

class GoRouterRefreshStream extends ChangeNotifier {
  GoRouterRefreshStream(Stream<dynamic> stream) {
    notifyListeners();
    _subscription = stream.asBroadcastStream().listen(
      (dynamic _) {
        notifyListeners();
      },
    );
  }

  late final StreamSubscription<dynamic> _subscription;

  @override
  void dispose() {
    _subscription.cancel();
    super.dispose();
  }
}

class InterNetChecker extends StatefulWidget {
  final Widget child;
  const InterNetChecker({super.key, required this.child});

  @override
  State<InterNetChecker> createState() => _InterNetCheckerState();
}

class _InterNetCheckerState extends State<InterNetChecker> {
  late StreamSubscription<ConnectivityResult> subscription;
  StreamController<bool> internetStatusController = StreamController<bool>();

  @override
  void initState() {
    super.initState();
    subscription = Connectivity().onConnectivityChanged.listen((result) {
      internetStatusController.add(result != ConnectivityResult.none);
    });
  }

  @override
  void dispose() {
    subscription.cancel();
    internetStatusController.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<bool>(
      stream: internetStatusController.stream,
      initialData: true, // Initially assuming the device is online
      builder: (context, snapshot) {
        if (!snapshot.data!) {
          // Show a dialog when there's no internet connection
          WidgetsBinding.instance.addPostFrameCallback((_) {
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: const Text('No Internet Connection'),
                  content: const Text(
                      'Please check your internet connection and try again.'),
                  actions: <Widget>[
                    TextButton(
                      child: const Text('OK'),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ],
                );
              },
            );
          });
        }

        return widget.child;
      },
    );
  }
}
