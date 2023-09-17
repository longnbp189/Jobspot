import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:jobspot/common/widgets/stateless/button_medium.dart';
import 'package:jobspot/common/widgets/stateful/custom_text_form_field.dart';
import 'package:jobspot/design/app_format.dart';
import 'package:jobspot/design/spaces.dart';
import 'package:jobspot/design/typography.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobspot/feature/auth/feature/sign_up/presentation/bloc/bloc/sign_up_bloc.dart';
import 'package:jobspot/router/app_router_name.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool _passwordVisible = true;
  bool _confirmPasswordVisible = true;
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  final _emailController = TextEditingController();
  final _fullNameController = TextEditingController();
  final _phoneController = TextEditingController();
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

  @override
  void dispose() {
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    _emailController.dispose();
    _fullNameController.dispose();
    _phoneController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        body: SafeArea(
          child: BlocProvider(
            create: (context) => SignUpBloc(),
            child: BlocConsumer<SignUpBloc, SignUpState>(
              listener: (context, state) {
                if (state.signUpSuccess == true) {
                  AppFormat.showSnackBar(
                    context,
                    'Sign up success.',
                    2,
                  );
                  context.pushReplacementNamed(AppRouterName.login);
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
                final signUpBloc = context.read<SignUpBloc>();

                return SingleChildScrollView(
                  child: Form(
                    key: _formKey,
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 24.w, vertical: 24.h),
                      child: Column(
                        children: [
                          Text(
                            'Create an Account',
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
                            title: 'Email',
                            // isCanEmpty: false,
                            textController: _emailController,
                            // stateBloc: '',
                            // stateValue: '',
                            onChanged: (value) =>
                                signUpBloc.add(SignUpEvent.emailChanged(value)),
                          ),
                          spaceH16,
                          CustomTextFormField(
                            // stateBloc: '',
                            // stateValue: '',
                            hide: _passwordVisible,
                            title: 'Password',
                            textController: _passwordController,
                            onTap: _togglePassword,
                            onChanged: (value) => signUpBloc
                                .add(SignUpEvent.passwordChanged(value)),
                            isPassword: true,
                          ),
                          spaceH16,
                          CustomTextFormField(
                            // stateBloc: '',
                            // stateValue: '',
                            hide: _confirmPasswordVisible,
                            title: 'Confirm Password',
                            textController: _confirmPasswordController,
                            onTap: _toggleConfirmPassword,
                            onChanged: (value) => signUpBloc
                                .add(SignUpEvent.confirmPasswordChanged(value)),
                            isPassword: true,
                            isCorrectPassword: state.isCorrectPassword(),
                          ),
                          spaceH16,
                          CustomTextFormField(
                            title: 'Full name',
                            // isCanEmpty: false,
                            textController: _fullNameController,
                            // stateBloc: '',
                            // stateValue: '',
                            onChanged: (value) => signUpBloc
                                .add(SignUpEvent.fullnameChanged(value)),
                          ),
                          spaceH16,
                          CustomTextFormField(
                            title: 'Phone number',
                            // isCanEmpty: false,
                            type: TextInputType.number,
                            textController: _phoneController,
                            // stateBloc: '',
                            // stateValue: '',
                            // isError:
                            //     state.isCorrectPhone() && state.phone.isNotEmpty,
                            onChanged: (value) => signUpBloc
                                .add(SignUpEvent.phoneNumberChanged(value)),
                          ),
                          spaceH32,
                          ButtonMedium(
                            title: 'Sign up',
                            onTap:
                                // state.isSignUpEmpty() ||
                                //         !state.isCorrectPassword()
                                //     ? null
                                //     :
                                () async {
                              FocusManager.instance.primaryFocus?.unfocus();
                              if (_formKey.currentState!.validate()) {
                                signUpBloc.add(const SignUpEvent.signUp());
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
        ),
      ),
    );
  }
}
