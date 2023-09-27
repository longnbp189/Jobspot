part of '../screen/home_screen.dart';

class TopJobShimmer extends StatelessWidget {
  const TopJobShimmer({
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
                  color: AppColor.greyBox,
                  child: Text(
                    'Top company',
                    style: TxtStyles.extraBold18,
                  )),
              ColoredBox(
                  color: AppColor.greyBox,
                  child: Text(
                    'View all',
                    style: TxtStyles.extraBold18,
                  )),
            ],
          ),
          spaceH16,
          Container(
            height: 250.h,
            decoration: BoxDecoration(
              color: AppColor.greyBox,
              borderRadius: BorderRadius.circular(24.r),
            ),
          ),
        ],
      ),
    );
  }
}
