import 'package:jobspot/design/app_asset.dart';
import 'package:jobspot/design/app_color.dart';
import 'package:jobspot/design/spaces.dart';
import 'package:jobspot/design/typography.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomTextFormFieldPassword extends StatefulWidget {
  const CustomTextFormFieldPassword({
    required TextEditingController textController,
    required this.title,
    this.type,
    this.hintText,
    this.onTap,
    this.hide = true,
    this.onChanged,
    this.isCorrectPassword,
    // required this.stateValue,
    // required this.stateBloc,
    super.key,
  }) : _textController = textController;

  final TextEditingController _textController;
  final String title;
  final bool? hide;
  final VoidCallback? onTap;
  final ValueChanged<String>? onChanged;
  final TextInputType? type;
  final String? hintText;
  // final String stateValue;
  // final String stateBloc;
  final bool? isCorrectPassword;

  @override
  State<CustomTextFormFieldPassword> createState() =>
      _CustomTextFormFieldPasswordState();
}

class _CustomTextFormFieldPasswordState
    extends State<CustomTextFormFieldPassword> {
  FocusNode focus = FocusNode();
  @override
  void initState() {
    focus.addListener(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.title,
          style: TxtStyles.extraBold14,
        ),
        spaceH8,
        TextFormField(
          focusNode: focus,
          obscureText: widget.hide!,
          keyboardType: widget.type ?? TextInputType.text,
          controller: widget._textController,
          onChanged: widget.onChanged,
          decoration: InputDecoration(
              suffixIcon: IconButton(
                  onPressed: widget.onTap,
                  splashColor: Colors.transparent,
                  icon: widget.hide!
                      // true
                      ? SvgPicture.asset(
                          AppAsset.hidePassword,
                          height: 24.w,
                          width: 24.w,
                          color:
                              focus.hasFocus ? AppColor.primary : AppColor.grey,
                        )
                      : SvgPicture.asset(
                          AppAsset.showPassword,
                          height: 24.w,
                          width: 24.w,
                          color:
                              focus.hasFocus ? AppColor.primary : AppColor.grey,
                        )),
              errorText:
                  // widget.stateBloc.isNotEmpty && widget.stateValue.isEmpty
                  widget.isCorrectPassword == false
                      ? "Password cannot be empty"
                      : null,
              hintText: widget.hintText,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12.r),
                borderSide: const BorderSide(color: AppColor.primary),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12.r),
                borderSide: const BorderSide(color: AppColor.primary),
              )),
          // autovalidateMode: AutovalidateMode.onUserInteraction,
          // validator: (value) {
          //   if (value == null || value.isEmpty || value.trim() == "") {
          //     return "Mật khẩu không được để trống.";
          //   } else {
          //     return null;
          //   }
          // },
        )
      ],
    );
  }
}
