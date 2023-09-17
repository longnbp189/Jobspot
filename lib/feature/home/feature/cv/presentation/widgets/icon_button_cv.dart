part of '../screens/cv_screen.dart';
class IconButtonCV extends StatelessWidget {
  final String icon;
  final Color? colorIcon;
  final Color colorBackground;
  final VoidCallback? onTap;

  const IconButtonCV({
    super.key,
    required this.icon,
    this.colorIcon,
    required this.colorBackground,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4.r), color: colorBackground),
        child: IconWidget(color: colorIcon, size: 20.r, icon: icon),
      ),
    );
  }
}
