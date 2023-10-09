import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobspot/design/app_asset.dart';
import 'package:jobspot/design/app_color.dart';
import 'package:jobspot/design/spaces.dart';
import 'package:jobspot/design/typography.dart';

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
    this.isCorrectOldPassword,
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
  final bool? isCorrectOldPassword;

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

  String? validator(String? value) {
    if (widget.type == TextInputType.text) {
      if (value == null || value.isEmpty) {
        return '${widget.title} cannot be empty';
      }
      if (value.length < 5) {
        return '${widget.title} should have at least 6 characters';
      }
    }
    return null; // No validation issues
  }

  bool isChange = false;

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
          onChanged: (value) {
            if (widget.onChanged != null) {
              if (!isChange) {
                setState(() {
                  isChange = true;
                });
              }

              widget.onChanged!.call(value);
            }
          },

          onTapOutside: (event) =>
              FocusManager.instance.primaryFocus?.unfocus(),

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
              errorText: isChange
                  ? (widget.isCorrectOldPassword == true)
                      ? 'Old Password and new password must different'
                      : (widget.isCorrectPassword == false)
                          ? 'Password and comfirm password is different'
                          : validator(widget._textController.text)
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
