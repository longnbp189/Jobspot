part of '../screens/chat_screen.dart';

class ChatItemList extends StatelessWidget {
  const ChatItemList({
    super.key,
    required this.chatBloc,
  });

  final ChatBloc chatBloc;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        separatorBuilder: (context, index) => const Divider(
              height: 0,
            ),
        itemBuilder: (context, index) {
          return ChatItem(
            chatBloc: chatBloc,
            companyModel: chatBloc.state.companyList[index],
          );
        },
        itemCount: chatBloc.state.companyList.length);
  }
}

class ChatItem extends StatefulWidget {
  const ChatItem({
    super.key,
    required this.chatBloc,
    required this.companyModel,
  });

  final ChatBloc chatBloc;

  final CompanyModel companyModel;

  @override
  State<ChatItem> createState() => _ChatItemState();
}

class _ChatItemState extends State<ChatItem> {
  var authBloc = AuthBloc();
  MessageModel? _lastMessage;

  @override
  void initState() {
    authBloc = context.read<AuthBloc>();
    _loadLastMessage();
    // TODO: implement initState
    super.initState();
  }

  void _loadLastMessage() async {
    try {
      final message = await AppFormat.getLastMessage(
          authBloc.state.user!.id, widget.companyModel.id);
      setState(() {
        _lastMessage = message;
      });
    } catch (error) {
      // Handle any errors that may occur when retrieving the last message.
      print("Error: $error");
    }
  }

  @override
  Widget build(BuildContext context) {
    // final message = AppFormat.getLastMessage(
    //     authBloc.state.user!.id, widget.companyModel.id);
    return InkWell(
      onTap: () async {
        widget.chatBloc.add(ChatEvent.getDetailCompany(widget.companyModel));
        _lastMessage = await context.pushNamed(AppRouterName.chatDetail,
            extra: widget.chatBloc);
      },
      child: Container(
        color: AppColor.backgroundWhite,
        padding: EdgeInsets.only(left: 16.w, right: 16.w, top: 16.h),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                AvatarCompany(
                  avatarUrl: widget.companyModel.image,
                ),
                spaceW16,
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.companyModel.displayName,
                        style: _lastMessage != null &&
                                _lastMessage!.senderId.isNotEmpty
                            ? _lastMessage!.senderId == authBloc.state.user!.id
                                ? TxtStyles.regular14
                                    .copyWith(color: AppColor.black)
                                : TxtStyles.semiBold14
                                    .copyWith(color: AppColor.black)
                            : TxtStyles.regular14
                                .copyWith(color: AppColor.black),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      spaceH4,
                      Text(
                        AppFormat.checkMessageSender(
                            _lastMessage, authBloc.state.user!.id),
                        style: _lastMessage != null
                            ? _lastMessage!.senderId == authBloc.state.user!.id
                                ? TxtStyles.regular12
                                    .copyWith(color: AppColor.textGreyColor)
                                : TxtStyles.semiBold14
                                    .copyWith(color: AppColor.textGreyColor)
                            : TxtStyles.regular12
                                .copyWith(color: AppColor.textGreyColor),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                      ),
                    ],
                  ),
                )
              ],
            ),
            spaceH16,
          ],
        ),
      ),
    );
  }
}
