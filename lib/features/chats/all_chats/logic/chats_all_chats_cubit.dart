import 'package:flutter_bloc/flutter_bloc.dart';

import '../data/repo/chats_all_chats_repo.dart';
import 'chats_all_chats_state.dart';

class ChatsAllChatsCubit extends Cubit<ChatsAllChatsState> {
  final ChatsAllChatsRepo _repo;

  ChatsAllChatsCubit(this._repo) : super(const ChatsAllChatsState.initial());

  void getAllChats() async {
    emit(const ChatsAllChatsState.loading());
    final response = await _repo.getAllChats();

    response.when(
      success: (chats) {
        emit(ChatsAllChatsState.success(chats));
      },
      failure: (errorHandler) {
        emit(ChatsAllChatsState.error(errorHandler));
      },
    );
  }
}
