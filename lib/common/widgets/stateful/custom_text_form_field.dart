import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobspot/design/app_asset.dart';
import 'package:jobspot/design/app_color.dart';
import 'package:jobspot/design/spaces.dart';
import 'package:jobspot/design/typography.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextFormField extends StatefulWidget {
  const CustomTextFormField({
    super.key,
    required this.title,
    this.type,
    this.hintText,
    this.hide = false,
    this.isPassword = false,
    this.enabled = true,
    this.onTap,
    this.onChanged,
    this.isCorrectPassword,
    required TextEditingController textController,
  }) : _textController = textController;
  final String title;
  final TextEditingController _textController;
  final TextInputType? type;
  final String? hintText;
  final VoidCallback? onTap;
  final bool? enabled;
  final ValueChanged<String>? onChanged;
  final bool? hide;
  final bool? isPassword;
  final bool? isCorrectPassword;

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  FocusNode focus = FocusNode();
  @override
  void initState() {
    focus.addListener(() {
      setState(() {});
    });
    super.initState();
  }

  List<TextInputFormatter> get inputFormatters {
    if (widget.type == TextInputType.number) {
      return [PhoneSeparatorInputFormatter()];
    }
    // else if (type == TextInputType.emailAddress) {
    // return [FilteringTextInputFormatter.singleLineFormatter];
    // }
    return [];
  }

  String? validator(String? value) {
    if (widget.type == TextInputType.number) {
      if (value == null || value.isEmpty) {
        return '${widget.title} cannot be empty';
      } else if (!value.startsWith('0')) {
        return 'Phone number must start with 0';
      } else if (value.length < 12) {
        return 'Phone number should have at least 10 digits';
      }
    } else if (widget.type == TextInputType.text) {
      if (value == null || value.isEmpty) {
        return '${widget.title} cannot be empty';
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
          enabled: widget.enabled,
          focusNode: focus,
          obscureText: widget.hide!,
          controller: widget._textController,
          keyboardType: widget.type ?? TextInputType.text,
          inputFormatters: inputFormatters,
          validator: validator,
          decoration: InputDecoration(
            errorText: isChange
                ? (widget.isCorrectPassword == false)
                    ? 'Confirm Password and password do not match'
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
            ),
            suffixIcon: widget.isPassword!
                ? IconButton(
                    onPressed: widget.onTap,
                    splashColor: Colors.transparent,
                    icon: widget.hide!
                        // true
                        ? SvgPicture.asset(
                            AppAsset.hidePassword,
                            height: 24.w,
                            width: 24.w,
                            color: focus.hasFocus
                                ? AppColor.primary
                                : AppColor.grey,
                          )
                        : SvgPicture.asset(
                            AppAsset.showPassword,
                            height: 24.w,
                            width: 24.w,
                            color: focus.hasFocus
                                ? AppColor.primary
                                : AppColor.grey,
                          ))
                : null,
          ),
        ),
      ],
    );
  }
}

class PhoneSeparatorInputFormatter extends TextInputFormatter {
  static const separator = ' '; // Change this to '.' for other locales

  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    // Short-circuit if the new value is empty
    if (newValue.text.isEmpty) {
      return newValue.copyWith(text: '');
    }
    var newValueText = newValue.text;
    var oldValueText = oldValue.text;
    if (newValueText.length > 12) {
      return oldValue;
    }
    if (newValueText.contains(".") ||
        newValueText.contains("-") ||
        newValueText.contains(",")) {
      return oldValue;
    }
    int deleteSpace = 0;
    if (oldValueText.length > newValueText.length &&
        newValueText.length >= 8 &&
        newValueText[7] != ' ' &&
        newValueText.split(' ').length < 3) {
      newValueText = newValueText.substring(0, 6) + newValueText.substring(7);
      deleteSpace = 2;
    }
    if (oldValueText.length > newValueText.length &&
        newValueText.length >= 4 &&
        newValueText[3] != ' ' &&
        newValueText.split(' ').length < 2) {
      newValueText = newValueText.substring(0, 2) + newValueText.substring(3);
      if (newValueText.length > 7) {
        deleteSpace = 3;
      } else {
        deleteSpace = 2;
      }
    }
    var numbers = newValueText.replaceAll(' ', '');
    String newString = '';
    for (int i = numbers.length - 1; i >= 0; i--) {
      if ((i == 2 || i == 5) && i != numbers.length - 1) {
        newString = ' $newString';
      }
      newString = numbers[i] + newString;
    }
    int selectionIndex =
        newValueText.length - newValue.selection.extentOffset + deleteSpace;
    return TextEditingValue(
      text: newString.toString(),
      selection: TextSelection.collapsed(
        offset: newString.length - selectionIndex,
      ),
    );
  }
}
