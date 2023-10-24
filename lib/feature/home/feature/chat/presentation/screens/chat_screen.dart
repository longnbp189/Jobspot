import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:jobspot/common/widgets/stateless/avatar_company.dart';
import 'package:jobspot/common/widgets/stateless/shimmer_effect.dart';
import 'package:jobspot/design/app_asset.dart';
import 'package:jobspot/design/app_color.dart';
import 'package:jobspot/design/app_format.dart';
import 'package:jobspot/design/spaces.dart';
import 'package:jobspot/design/typography.dart';
import 'package:jobspot/feature/auth/feature/login/presentation/bloc/auth_bloc.dart';
import 'package:jobspot/feature/home/feature/chat/data/model/message_model.dart';
import 'package:jobspot/feature/home/feature/chat/presentation/bloc/chat_bloc.dart';
import 'package:jobspot/feature/home/feature/company/data/models/company_model.dart';
import 'package:jobspot/router/app_router_name.dart';

part '../widgets/chat_empty.dart';
part '../widgets/chat_item.dart';
part '../widgets/chat_item_shimmer.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  
  @override
  Widget build(BuildContext context) {
    final authBloc = context.read<AuthBloc>();
    final chatBloc = context.read<ChatBloc>();
    chatBloc.add(
        ChatEvent.getListMessage(authBloc.state.user?.companyIdsMessage ?? []));
    return BlocConsumer<ChatBloc, ChatState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        return Scaffold(
            backgroundColor: AppColor.backgroundWhite,
            appBar: AppBar(
              title: Text(
                'Chatting',
                style: TxtStyles.semiBold20,
              ),
              centerTitle: true,
            ),
            body: state.isShimmer
                ? const ChatItemShimmer()
                : state.companyList.isNotEmpty
                    ? ChatItemList(chatBloc: chatBloc,)
                    : const ChatEmpty());
      },
    );
  }
}
