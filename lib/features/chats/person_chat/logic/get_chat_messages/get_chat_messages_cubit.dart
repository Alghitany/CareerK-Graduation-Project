import 'package:flutter_bloc/flutter_bloc.dart';

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
      success: (data) => emit(GetChatMessagesState.success(data)),
      failure: (error) => emit(GetChatMessagesState.error(
        error: error.apiErrorModel.message ?? 'Unknown error',
      )),
    );
  }
}
