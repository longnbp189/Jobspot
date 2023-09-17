part of '../screens/company_detail_screen.dart';

class RecruitmentNewsBody extends StatelessWidget {
  const RecruitmentNewsBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: AppColor.backgroundWhite,
      child: ListView.separated(
        shrinkWrap: true,
        itemBuilder: (context, index) => const JobCard(),
        itemCount: 2,
        separatorBuilder: (context, index) => spaceH16,
        padding:
            EdgeInsets.only(top: 16.h, left: 16.w, right: 16.w, bottom: 42.h),
      ),
    );
  }
}
