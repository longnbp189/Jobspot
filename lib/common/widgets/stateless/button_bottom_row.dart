import 'package:jobspot/design/app_color.dart';
import 'package:jobspot/design/spaces.dart';
import 'package:jobspot/design/typography.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ButtonBottomRow extends StatelessWidget {
  const ButtonBottomRow({
    super.key,
    required this.titleLeft,
    required this.titleRight,
    this.onTapLeft,
    this.onTapRight,
    this.isEnable = true,
  });
  final String titleLeft;
  final bool? isEnable;
  final String titleRight;
  final VoidCallback? onTapLeft;
  final VoidCallback? onTapRight;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: InkWell(
            onTap: onTapLeft,
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 12.h),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.r),
                  color: AppColor.greyBox.withOpacity(0.2)),
              child: Text(
                titleLeft,
                style: TxtStyles.semiBold16
                    .copyWith(color: AppColor.black.withOpacity(0.7)),
              ),
            ),
          ),
        ),
        spaceW16,
        Expanded(
          child: InkWell(
            onTap: onTapRight,
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 12.h),
              width: double.infinity,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.r),
                  color: !isEnable!
                      ? AppColor.primary.withOpacity(0.7)
                      : AppColor.primary),
              child: Text(
                titleRight,
                style: TxtStyles.semiBold16.copyWith(color: AppColor.white),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
