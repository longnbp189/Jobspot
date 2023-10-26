import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:jobspot/common/widgets/stateless/avatar_company.dart';
import 'package:jobspot/common/widgets/stateless/shimmer_effect.dart';
import 'package:jobspot/design/app_color.dart';
import 'package:jobspot/design/app_format.dart';
import 'package:jobspot/design/spaces.dart';
import 'package:jobspot/design/typography.dart';
import 'package:jobspot/feature/auth/feature/login/data/models/user_model.dart';
import 'package:jobspot/feature/auth/feature/login/presentation/bloc/auth_bloc.dart';
import 'package:jobspot/feature/home/feature/chat/data/model/message_model.dart';
import 'package:jobspot/feature/home/feature/chat/presentation/bloc/chat_bloc.dart';
import 'package:jobspot/feature/home/feature/company/data/models/company_model.dart';
import 'package:jobspot/services/chat_service.dart';

class ChatDetailScreen extends StatefulWidget {
  const ChatDetailScreen({super.key});

  @override
  State<ChatDetailScreen> createState() => _ChatDetailScreenState();
}

class _ChatDetailScreenState extends State<ChatDetailScreen> {
  final ScrollController _controller = ScrollController();
  final _messageController = TextEditingController();
  final chatService = ChatService();
  MessageModel? lastMessage;
  bool isInitScroll = false;

  void sendMessage() async {
    if (_messageController.text.isNotEmpty) {
      await chatService.sendMessage(
          company?.id ?? '', _messageController.text, user!.id);
      final DateTime sendTime = DateTime.now();

      _controller.animateTo(_controller.position.maxScrollExtent,
          duration: const Duration(milliseconds: 300), curve: Curves.easeOut);

      lastMessage = MessageModel(
          message: _messageController.text,
          receiverId: company?.id ?? '',
          senderId: user!.id,
          senderEmail: '',
          sendTime: sendTime);
      _messageController.clear();
    }
  }

  @override
  void dispose() {
    _messageController.dispose();
    // _controller.dispose();
    super.dispose();
  }

  List<MessageModel> messageList = [];
  UserModel? user;
  CompanyModel? company;
  @override
  Widget build(BuildContext context) {
    user = context.read<AuthBloc>().state.user!;
    company = context.read<ChatBloc>().state.company!;
    return WillPopScope(
      onWillPop: () async {
        context.pop(lastMessage);
        return true;
      },
      child: BlocConsumer<ChatBloc, ChatState>(
        listener: (context, state) {},
        builder: (context, state) {
          return Scaffold(
              backgroundColor: AppColor.backgroundWhite,
              appBar: AppBar(
                title: Text(
                  state.company?.displayName ?? '',
                  style: TxtStyles.semiBold16,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              body: Column(
                children: [
                  Expanded(child: _buildMessageList(state)),
                  _buildMessageInput(),
                  spaceH16
                ],
              ));
        },
      ),
    );
  }

  Widget _buildMessageList(ChatState state) {
    return StreamBuilder(
      stream: chatService.getMessages(user?.id ?? '', company?.id ?? ''),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          var doc = snapshot.data!.docs;
          if (doc.isNotEmpty) {
            messageList = AppFormat.parseDocToMes(doc);
            lastMessage = messageList.last;
            // if (_controller.hasClients) {
            if (!isInitScroll) {
              Future.delayed(const Duration(milliseconds: 300), () {
                isInitScroll = true;
                _controller.animateTo(
                  _controller.position.maxScrollExtent,
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeOut,
                );
              });
            }

            // }

            return ListView.builder(
              shrinkWrap: true,
              controller: _controller,
              padding: EdgeInsets.only(top: 16.h, left: 16.w, right: 16.w),
              itemCount: messageList.length,
              itemBuilder: (context, index) => _buildMessageItem(
                  messageList[index],
                  AppFormat.checkSameSender(messageList),
                  index - 1 == -1
                      ? false
                      : AppFormat.isTimeDifferenceGreaterThanOneHour(
                          messageList[index - 1].sendTime!,
                          messageList[index].sendTime!)),
            );
          } else {
            return Padding(
              padding: EdgeInsets.only(left: 16.w, right: 16.w),
              child: Column(
                children: [
                  spaceH16,
                  AvatarCompany(
                    avatarUrl: state.company?.image,
                    sizeAvatar: 72.r,
                  ),
                  spaceH8,
                  Text(
                    state.company?.displayName ?? '',
                    style: TxtStyles.extraBold14,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  ),
                  spaceH8,
                  Text(
                    state.company?.type ?? '',
                    style: TxtStyles.extraBold14
                        .copyWith(fontWeight: FontWeight.normal),
                  ),
                ],
              ),
            );
          }
        } else {
          return ListView.builder(
            padding: EdgeInsets.only(top: 16.h, left: 16.w, right: 16.w),
            itemCount: 3,
            itemBuilder: (context, index) => ShimmerEffect(
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 8.h),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 12.w, vertical: 12.h),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12.r),
                                    color: AppColor.grey),
                                child: Text('message message',
                                    style: TxtStyles.regular14
                                        .copyWith(color: AppColor.white))),
                          ]),
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 8.h),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 12.w, vertical: 12.h),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12.r),
                                    color: AppColor.grey),
                                child: Text('message message',
                                    style: TxtStyles.regular14
                                        .copyWith(color: AppColor.white))),
                          ]),
                    ),
                  ),
                ],
              ),
            ),
          );
        }
      },
    );
  }

  Widget _buildMessageItem(
    MessageModel message,
    bool isSameSender,
    bool isMessageContinuous,
  ) {
    bool isSender = (message.senderId == user!.id);

    return Column(
      children: [
        if (!isMessageContinuous)
          Column(
            children: [
              spaceH8,
              Text(AppFormat.formatTime(message.sendTime!)),
              spaceH8
            ],
          ),
        Container(
          alignment: isSender ? Alignment.centerRight : Alignment.centerLeft,
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: isSameSender ? 1.h : 8.h),
            child: Column(
                crossAxisAlignment: isSender
                    ? CrossAxisAlignment.end
                    : CrossAxisAlignment.start,
                mainAxisAlignment:
                    isSender ? MainAxisAlignment.end : MainAxisAlignment.start,
                children: [
                  Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 12.w, vertical: 12.h),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.r),
                          color: isSender ? AppColor.primary : AppColor.grey),
                      child: Text(message.message,
                          style: TxtStyles.regular14
                              .copyWith(color: AppColor.white))),
                ]),
          ),
        ),
      ],
    );
  }

  _buildMessageInput() {
    return Row(
      children: [
        spaceW16,
        Expanded(
          child: TextFormField(
            onTapOutside: (event) =>
                FocusManager.instance.primaryFocus?.unfocus(),
            controller: _messageController,
            decoration: InputDecoration(
              hintText: 'Texting',
              contentPadding: EdgeInsets.symmetric(horizontal: 12.w),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12.r),
                borderSide: const BorderSide(color: AppColor.primary),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12.r),
                borderSide: const BorderSide(color: AppColor.primary),
              ),
            ),
          ),
        ),
        IconButton(
            onPressed: sendMessage,
            icon: Icon(
              Icons.arrow_circle_right_rounded,
              size: 52.r,
              color: AppColor.primary,
            ))
      ],
    );
  }
}
