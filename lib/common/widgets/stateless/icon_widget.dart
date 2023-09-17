import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobspot/design/app_color.dart';

class IconWidget extends StatelessWidget {
  final Color? color;
  final double? size;
  final String icon;
  const IconWidget({
    Key? key,
    this.color = AppColor.black,
    this.size = 20,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      icon,
      height: size,
      width: size,
      color: color,
    );
  }
}
