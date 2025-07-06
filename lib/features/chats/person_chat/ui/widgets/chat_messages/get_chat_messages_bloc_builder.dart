import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/models/get_chat_messages/get_chat_messages_response_body.dart';
import '../../../logic/get_chat_messages/get_chat_messages_cubit.dart';
import '../../../logic/get_chat_messages/get_chat_messages_state.dart';
import 'chat_messages_list_view.dart';
import 'chat_shimmer.dart';

class GetChatMessagesBlocBuilder extends StatelessWidget {
  final String currentUserId;
  final ScrollController scrollController;

  const GetChatMessagesBlocBuilder({
    super.key,
    required this.currentUserId,
    required this.scrollController,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetChatMessagesCubit, GetChatMessagesState>(
      builder: (context, state) {
        return state.maybeWhen(
          loading: () => _setupLoading(),
          success: (data) {
            debugPrint(
                "🟢 Chat UI rebuilt with ${data.messages.length} messages");
            return _setupSuccess(data.messages);
          },
          error: (error) => _setupError(error),
          orElse: () {
            debugPrint("⚪️ No state matched, showing empty view");
            return const SizedBox.shrink();
          },
        );
      },
    );
  }

  Widget _setupLoading() {
    return const ChatShimmer();
  }

  Widget _setupSuccess(List<ChatMessage> messages) {
    return ChatMessagesListView(
      messages: messages,
      currentUserId: currentUserId,
      scrollController: scrollController,
    );
  }

  Widget _setupError(String error) {
    return Center(child: Text("❌ $error"));
  }
}
