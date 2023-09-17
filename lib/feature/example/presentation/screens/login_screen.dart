import 'package:firebase_auth/firebase_auth.dart';
import 'package:go_router/go_router.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:jobspot/common/widgets/stateful/custom_text_form_field_password.dart';
import 'package:jobspot/common/widgets/stateless/button_medium.dart';
import 'package:jobspot/common/widgets/stateful/custom_text_form_field.dart';
import 'package:jobspot/common/widgets/stateless/loading_screen.dart';
import 'package:jobspot/design/app_asset.dart';
import 'package:jobspot/design/app_color.dart';
import 'package:jobspot/design/spaces.dart';
import 'package:jobspot/design/typography.dart';
import 'package:jobspot/feature/auth/feature/login/presentation/bloc/auth_bloc.dart';
import 'package:jobspot/router/app_router_name.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _passwordVisible = true;
  final _passwordController = TextEditingController();
  final _emailController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  void _toggle() {
    setState(() {
      _passwordVisible = !_passwordVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    final authBloc = context.read<AuthBloc>();

    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
          body: BlocConsumer<AuthBloc, AuthState>(
        listenWhen: (previous, current) =>
            previous.error != current.error || current.user != null,
        listener: (context, state) {
          if (state.error.isNotEmpty && !state.isEmpty()) {
            showDialogError(
                context, null, "Email or password is incorrect", null);
          }
          if (state.user != null) {
            context.pushReplacementNamed(AppRouterName.home);
          }
        },
        builder: (context, state) {
          return SafeArea(
              child: Stack(
            children: [
              if (state.isLoading) const LoadingScreen(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 24.h),
                child: SingleChildScrollView(
                  child: Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        Text(
                          'Welcome Back',
                          style: TxtStyles.semiBold32,
                        ),
                        spaceH8,
                        Text(
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor',
                          style: TxtStyles.regular12,
                          textAlign: TextAlign.center,
                        ),
                        spaceH40,
                        CustomTextFormField(
                          onChanged: (value) => authBloc.add(
                              LoginEmailChangedRequested(
                                  _emailController.text)),
                          title: 'Email',
                          textController: _emailController,
                          // stateBloc: state.error,
                          // stateValue: state.email,
                          // isCanEmpty: false,
                        ),
                        spaceH16,
                        CustomTextFormFieldPassword(
                          // stateBloc: state.error,
                          onChanged: (value) => authBloc.add(
                              LoginPasswordChangedRequested(
                                  _passwordController.text)),
                          hide: _passwordVisible,
                          title: 'Password',

                          // stateValue: state.password,
                          textController: _passwordController,
                          onTap: _toggle,
                        ),
                        spaceH20,
                        Row(
                          children: [
                            const Expanded(child: SizedBox()),
                            GestureDetector(
                              onTap: () => context
                                  .pushNamed(AppRouterName.forgotPassword),
                              child: Text(
                                'Forgot Password ?',
                                style: TxtStyles.semiBold12,
                              ),
                            ),
                            // TextButton(
                            //   onPressed: () => Navigator.pushNamed(
                            //       context, AppRouterName.forgotPassword),
                            //   // context.pushNamed(AppRouterName.forgotPassword),
                            //   child: Text(
                            //     'Forgot Password ?',
                            //     style: TxtStyles.semiBold12,
                            //   ),
                            // ),
                          ],
                        ),
                        spaceH32,
                        ButtonMedium(
                          title: 'Login',
                          onTap: state.isEmpty()
                              ? null
                              : () {
                                  FocusManager.instance.primaryFocus?.unfocus();

                                  // if (state.username.isNotEmpty &&
                                  // state.password.isNotEmpty) {
                                  authBloc.add(const AuthEvent
                                      .loginWithUsernameAndPassword());
                                  // }
                                },
                        ),
                        spaceH16,
                        ButtonMedium(
                          title: 'Sign in with Google',
                          onTap: () {
                            authBloc.add(const AuthEvent.login());
                            // var userCredential = await googleSignIn();
                            // if (userCredential.user != null) {
                            //   if (mounted) {
                            //     context.pushNamed(AppRouterName.home);
                            //   }
                            // }
                          },
                          icon: SvgPicture.asset(
                            AppAsset.google,
                            height: 24.w,
                            width: 24.w,
                          ),
                        ),
                        spaceH16,
                        RichText(
                          text: TextSpan(
                            text: "You don't have an account yet? ",
                            style: TxtStyles.regular12
                                .copyWith(color: AppColor.black),
                            children: [
                              TextSpan(
                                  text: 'Sign up',
                                  style: TxtStyles.regular12.copyWith(
                                      color: AppColor.secondary,
                                      decoration: TextDecoration.underline),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () => context
                                        .pushNamed(AppRouterName.signUp)),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ));
        },
      )),
    );
  }

  Future<void> showDialogError(
    BuildContext context,
    String? title,
    String error,
    VoidCallback? onPressed,
  ) {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title ?? ''),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text(error),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              onPressed: onPressed ??
                  () {
                    // authBloc.state.copyWith(error: "");
                    context.pop();
                  },
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  }

  googleSignIn() async {
    GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
    GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;
    AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken, idToken: googleAuth?.idToken);

    UserCredential userCredential =
        await FirebaseAuth.instance.signInWithCredential(credential);
    return userCredential;
  }
}
