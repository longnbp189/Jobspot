part of '../screen/home_screen.dart';



class TopCompanyShimmer extends StatelessWidget {
  const TopCompanyShimmer({
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
          GridView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10.w,
              mainAxisSpacing: 10.h,
              childAspectRatio:
                  (AppFormat.width(context) / AppFormat.height(context)) *
                      ((AppFormat.width(context) > 700) ? 1.1 : 1.15),
            ),
            itemCount: 2,
            itemBuilder: (context, index) => Container(
              decoration: BoxDecoration(
                color: AppColor.greyBox,
                borderRadius: BorderRadius.circular(24.r),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
