
part of '../screen/home_screen.dart';


class IconBottomNarvigationBar extends StatelessWidget {
  final String iconUrl;
  final String title;
  final VoidCallback onPressed;
  final bool isFocus;
  const IconBottomNarvigationBar({
    super.key,
    required this.iconUrl,
    required this.onPressed,
    required this.isFocus,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            iconUrl,
            height: 24.r,
            width: 24.r,
            color: isFocus ? AppColor.primary : AppColor.unSelected,
          ),
          Text(
            title,
            style: isFocus
                ? TxtStyles.semiBold14.copyWith(color: AppColor.primary)
                : TxtStyles.regular14.copyWith(color: AppColor.unSelected),
          ),
        ],
      ),
    );
  }
}