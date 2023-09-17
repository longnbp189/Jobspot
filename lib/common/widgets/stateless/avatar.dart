import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:jobspot/design/app_color.dart';

class Avatar extends StatelessWidget {
  final String? avatarUrl;
  final double sizeAvatar;
  const Avatar({
    Key? key,
    this.avatarUrl,
    this.sizeAvatar = 36,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: sizeAvatar,
      height: sizeAvatar,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: AppColor.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            offset: Offset(0, 1),
            blurRadius: 4.0,
          ),
        ],
      ),
      child: ClipOval(
        child: CachedNetworkImage(
          fit: BoxFit.contain,
          imageUrl: (avatarUrl != null && avatarUrl!.isNotEmpty)
              ? avatarUrl!
              : 'https://cdn-icons-png.flaticon.com/512/2815/2815428.png',
          placeholder: (context, url) => const CircularProgressIndicator(),
          errorWidget: (context, url, error) => const Icon(Icons.error),
        ),
      ),
    );
    // return
  }
}
