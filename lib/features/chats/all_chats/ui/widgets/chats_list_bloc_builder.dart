import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/model/chats_all_chats_response_body.dart';
import '../../logic/chats_all_chats_cubit.dart';
import '../../logic/chats_all_chats_state.dart';
import 'chats_list_shimmer.dart';
import 'chats_list_view.dart';
import 'no_chats_placeholder.dart';

class ChatsListBlocBuilder extends StatelessWidget {
  const ChatsListBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChatsAllChatsCubit, ChatsAllChatsState>(
      buildWhen: (previous, current) =>
          current is ChatsAllChatsLoading ||
          current is ChatsAllChatsSuccess ||
          current is ChatsAllChatsError,
      builder: (context, state) {
        return state.maybeWhen(
          loading: () => setupLoading(),
          success: (chatsResponse) => setupSuccess(chatsResponse),
          error: (errorHandler) => setupError(),
          orElse: () => const SizedBox.shrink(),
        );
      },
    );
  }

  Widget setupLoading() {
    return const ChatsListShimmer();
  }

  Widget setupSuccess(ChatsAllChatsResponseBody response) {
    if (response.chats.isEmpty) {
      return const NoChatsPlaceholder();
    }

    return ChatsListView(
      chats: response.chats,
      onTap: (chat) {
        // TODO: Navigate to detailed chat screen
      },
    );
  }

  Widget setupError() {
    return const Center(child: Text("Something went wrong"));
  }
}
