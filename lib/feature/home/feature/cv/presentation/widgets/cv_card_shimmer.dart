part of '../screens/cv_screen.dart';

class CvCardShimmer extends StatelessWidget {
  const CvCardShimmer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ShimmerEffect(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ColoredBox(
                  color: AppColor.grey,
                  child: Text(
                    'Total cv',
                    style: TxtStyles.extraBold18,
                  ),
                ),
                ColoredBox(
                  color: AppColor.grey,
                  child: Text('1/3', style: TxtStyles.regular16),
                ),
              ],
            ),
            spaceH16,
            ListView.separated(
              separatorBuilder: (context, index) => spaceH16,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 2,
              itemBuilder: (context, index) => Container(
                padding: EdgeInsets.symmetric(
                    horizontal: 16.w, vertical: 16.h),
                decoration: BoxDecoration(
                  color: AppColor.white,
                  borderRadius: BorderRadius.circular(12.r),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        SvgPicture.asset(
                          AppAsset.pdf,
                          height: 52.r,
                          width: 52.r,
                        ),
                        spaceW8,
                        Expanded(
                          child: Column(
                            crossAxisAlignment:
                                CrossAxisAlignment.start,
                            children: [
                              Text(
                                'file nay la lam a nha',
                                style: TxtStyles.semiBold14,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                              spaceH4,
                              Row(
                                children: [
                                  Text(
                                    '23.kb',
                                    style: TxtStyles.regular14
                                        .copyWith(
                                            color: AppColor
                                                .textGreyColor),
                                  ),
                                  Text(' . ',
                                      style: TxtStyles.regular14
                                          .copyWith(
                                              color: AppColor
                                                  .textGreyColor)),
                                  Text('12/20/2023',
                                      style: TxtStyles.regular14
                                          .copyWith(
                                              color: AppColor
                                                  .textGreyColor)),
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    spaceH8,
                    Row(
                      children: [
                        IconButtonCV(
                            icon: AppAsset.edit,
                            colorIcon: AppColor.black,
                            colorBackground: AppColor
                                .backgroundChip
                                .withOpacity(0.4)),
                        spaceW8,
                        IconButtonCV(
                            icon: AppAsset.download,
                            colorIcon: AppColor.black,
                            colorBackground: AppColor
                                .backgroundChip
                                .withOpacity(0.4)),
                        const Expanded(child: SizedBox.shrink()),
                        IconButtonCV(
                            icon: AppAsset.trash,
                            colorIcon: AppColor.red,
                            colorBackground:
                                AppColor.red.withOpacity(0.1)),
                      ],
                    )
                  ],
                ),
              ),
            ),
            spaceH16,
            ColoredBox(
              color: Colors.black,
              child: Text(
                'Upload files in PDF format up to 5 MB. Just upload it once and you can use it in your next application. You can only upload up to 3 files',
                style: TxtStyles.regular14,
              ),
            )
          ],
        ),
      );
  }
}

