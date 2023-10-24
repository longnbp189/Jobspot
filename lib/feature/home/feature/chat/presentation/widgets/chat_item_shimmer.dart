part of '../screens/chat_screen.dart';


class ChatItemShimmer extends StatelessWidget {
  const ChatItemShimmer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        separatorBuilder: (context, index) => const Divider(
              height: 0,
            ),
        itemBuilder: (context, index) => Container(
              color: AppColor.backgroundWhite,
              padding: EdgeInsets.only(left: 16.w, right: 16.w, top: 16.h),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ShimmerEffect(
                    child: Row(
                      children: [
                        const AvatarCompany(),
                        spaceW16,
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ColoredBox(
                                color: AppColor.backgroundWhite,
                                child: Text(
                                  'company name',
                                  style: TxtStyles.regular14
                                      .copyWith(color: AppColor.black),
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                              spaceH4,
                              ColoredBox(
                                color: AppColor.backgroundWhite,
                                child: Text(
                                  'company message',
                                  style: TxtStyles.regular14
                                      .copyWith(color: AppColor.black),
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  spaceH16,
                ],
              ),
            ),
        itemCount: 3);
  }
}