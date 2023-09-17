part of '../screen/home_screen.dart';

class JobCard extends StatelessWidget {
  const JobCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
      decoration: BoxDecoration(
          color: AppColor.white, borderRadius: BorderRadius.circular(24.r)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Avatar(
                sizeAvatar: 40.r,
              ),
              SvgPicture.asset(AppAsset.save)
            ],
          ),
          spaceH8,
          Text(
            'UI/UX Designer',
            style: TxtStyles.extraBold16,
          ),
          spaceH4,
          Text(
            'Công ty abc',
            style:
                TxtStyles.extraBold14.copyWith(fontWeight: FontWeight.normal),
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
          ),
          spaceH16,
          Wrap(
            spacing: 8.0.w,
            runSpacing: 8.0.h,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 6.h),
                decoration: BoxDecoration(
                    color: AppColor.backgroundChip.withOpacity(0.4),
                    borderRadius: BorderRadius.circular(8.r)),
                child: Text(
                  'Design',
                  style: TxtStyles.regular14,
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 6.h),
                decoration: BoxDecoration(
                    color: AppColor.backgroundChip.withOpacity(0.4),
                    borderRadius: BorderRadius.circular(8.r)),
                child: Text(
                  'Design',
                  style: TxtStyles.regular14,
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 6.h),
                decoration: BoxDecoration(
                    color: AppColor.backgroundChip.withOpacity(0.4),
                    borderRadius: BorderRadius.circular(8.r)),
                child: Text(
                  'Design',
                  style: TxtStyles.regular14,
                ),
              ),
            ],
          ),
          spaceH16,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '25 minute left',
                style:
                    TxtStyles.regular12.copyWith(color: AppColor.textGreyColor),
              ),
              RichText(
                text: TextSpan(
                  text: '\$15k',
                  style: TxtStyles.extraBold14.copyWith(color: AppColor.black),
                  children: [
                    TextSpan(
                      text: '/Mo',
                      style: TxtStyles.regular14
                          .copyWith(color: AppColor.textGreyColor),
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
