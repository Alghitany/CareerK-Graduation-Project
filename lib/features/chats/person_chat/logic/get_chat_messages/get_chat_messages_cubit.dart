import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/models/get_chat_messages/get_chat_messages_response_body.dart';
import '../../data/repo/get_chat_messages_repo.dart';
import 'get_chat_messages_state.dart';

class GetChatMessagesCubit extends Cubit<GetChatMessagesState> {
  final GetChatMessagesRepo _repo;

  GetChatMessagesCubit(this._repo)
      : super(const GetChatMessagesState.initial());

  Future<void> getMessages(String chatRoomId) async {
    emit(const GetChatMessagesState.loading());

    final response = await _repo.getChatMessages(chatRoomId);

    response.when(
      success: (data) {
        debugPrint('✅ Initial messages fetched: ${data.messages.length}');
        emit(GetChatMessagesState.success(data));
      },
      failure: (apiErrorModel) {
        debugPrint('❌ Error fetching messages: $apiErrorModel');
        emit(GetChatMessagesState.error(
          apiErrorModel
        ));
      },
    );
  }

  void addMessage(ChatMessage newMessage) {
    final currentState = state;
    if (currentState is Success) {
      final updatedMessages = List<ChatMessage>.from(currentState.data.messages)
        ..add(newMessage);

      debugPrint('🟢 addMessage called → Total: ${updatedMessages.length}');
      emit(GetChatMessagesState.success(
        GetChatMessagesResponseBody(messages: updatedMessages),
      ));
    } else {
      debugPrint('⚠️ Tried to add message but current state is not Success');
    }
  }
}
