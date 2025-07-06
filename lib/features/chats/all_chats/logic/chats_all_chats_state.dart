import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/networking/api_error_handler.dart';
import '../data/model/chats_all_chats_response_body.dart';

part 'chats_all_chats_state.freezed.dart';

@freezed
class ChatsAllChatsState with _$ChatsAllChatsState {
  const factory ChatsAllChatsState.initial() = _Initial;

  const factory ChatsAllChatsState.loading() = ChatsAllChatsLoading;

  const factory ChatsAllChatsState.success(
    ChatsAllChatsResponseBody chats,
  ) = ChatsAllChatsSuccess;

  const factory ChatsAllChatsState.error(
    ErrorHandler errorHandler,
  ) = ChatsAllChatsError;
}
