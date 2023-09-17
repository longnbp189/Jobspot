import 'package:flutter/material.dart';
import 'package:jobspot/design/app_color.dart';

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      color: AppColor.black.withOpacity(0.4),
      child: const Center(child: CircularProgressIndicator()),
    );
  }
}
