import 'package:carrerk/core/helpers/extensions.dart';
import 'package:carrerk/core/routing/app_argument.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/routing/routes.dart';
import '../../data/model/conact_list_all_chats_response_body.dart';
import 'chat_card.dart';

class ChatsListView extends StatelessWidget {
  final List<ChatItem> chats;
  final void Function(ChatItem chat)? onTap;

  const ChatsListView({
    super.key,
    required this.chats,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: chats.length,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.only(bottom: 16.h),
      itemBuilder: (context, index) {
        final chat = chats[index];
        return ChatCard(
          name: chat.userName,
          jop: chat.otherUserRole,
          imagePath: chat.userProfilePicture.isNotEmpty
              ? chat.userProfilePicture
              : 'assets/images/company_home_developer_logo.png',
          onTap: () {
            context.pushNamed(Routes.chatsPersonChatScreen,
                arguments: AppArgument(
                  chatRoomId: chat.chatRoomId,
                  isExisting: true,
                ));
          },
        );
      },
    );
  }
}
