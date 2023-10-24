part of '../screens/chat_screen.dart';



class ChatEmpty extends StatelessWidget {
  const ChatEmpty({
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
          Text(
            'No message',
            style: TxtStyles.semiBold16,
          ),
          spaceH16,
          Text(
            "You currently have no incoming messages.",
            style: TxtStyles.regular14.copyWith(color: AppColor.textGreyColor),
            textAlign: TextAlign.center,
          ),
          spaceH32,
          Image.asset(
            AppAsset.messageImage,
            height: 200.h,
            width: 200.w,
          ),
        ],
      ),
    );
  }
}
