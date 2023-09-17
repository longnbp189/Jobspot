part of '../screens/cv_screen.dart';

class CvEmpty extends StatelessWidget {
  const CvEmpty({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppFormat.height(context) - 200.h,
      width: AppFormat.width(context),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            AppAsset.empty,
            height: 200.h,
            width: 200.w,
          ),
          spaceH32,
          Text(
            'Empty list',
            style: TxtStyles.semiBold16,
          ),
          spaceH16,
          Text(
            'Upload files in PDF format up to 5 MB. Just upload it once and you can use it in your next application. You can only upload up to 3 files',
            style: TxtStyles.regular14,
          )
        ],
      ),
    );
  }
}
