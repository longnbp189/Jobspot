import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobspot/design/app_color.dart';

class AvatarCompany extends StatelessWidget {
  final String? avatarUrl;
  final double sizeAvatar;
  const AvatarCompany({
    Key? key,
    this.avatarUrl,
    this.sizeAvatar = 46,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 4.h),
      width: sizeAvatar,
      height: sizeAvatar,
      decoration: BoxDecoration(
        color: AppColor.white,
        borderRadius: BorderRadius.circular(8.r),
        boxShadow: const [
          BoxShadow(
            color: Colors.black26,
            offset: Offset(0, 1),
            blurRadius: 1.0,
          ),
        ],
      ),
      child: CachedNetworkImage(
        fit: BoxFit.contain,
        imageUrl: (avatarUrl != null && avatarUrl!.isNotEmpty)
            ? avatarUrl!
            : 'https://cdn-icons-png.flaticon.com/512/2815/2815428.png',
        placeholder: (context, url) => const CircularProgressIndicator(),
        errorWidget: (context, url, error) => const Icon(Icons.error),
      ),
    );
    // return
  }
}
