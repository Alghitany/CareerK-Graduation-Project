import 'package:flutter/material.dart';

import '../../../../../../core/networking/api_constants.dart';
import 'receive_messages.dart';

class ChatMessagesListView extends StatelessWidget {
  final List messages;
  final String currentUserId;
  final ScrollController scrollController;

  const ChatMessagesListView({
    super.key,
    required this.messages,
    required this.currentUserId,
    required this.scrollController,
  });

  @override
  Widget build(BuildContext context) {
    if (messages.isEmpty) {
      return const Center(child: Text("No messages yet"));
    }

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (scrollController.hasClients) {
        scrollController.jumpTo(scrollController.position.maxScrollExtent);
      }
    });

    return ListView.builder(
      controller: scrollController,
      itemCount: messages.length,
      itemBuilder: (context, index) {
        final message = messages[index];
        final rawFileUrl = message.fileUrl ?? '';
        final cleanedFileUrl = rawFileUrl.startsWith('/')
            ? rawFileUrl.substring(1) // remove leading slash
            : rawFileUrl;
        final fullFileUrl = '${ApiConstants.apiBaseUrl}$cleanedFileUrl';
        return ReceiveMessage(
          messageText: message.message,
          time: message.createdAt,
          isSender: message.senderId == currentUserId,
          fileUrl: fullFileUrl,
          fileType: message.fileType,
        );
      },
    );
  }
}
