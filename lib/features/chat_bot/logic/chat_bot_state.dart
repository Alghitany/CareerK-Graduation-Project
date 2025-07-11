import 'package:freezed_annotation/freezed_annotation.dart';

import '../data/models/chat_bot_response.dart';

part 'chat_bot_state.freezed.dart';

@freezed
class ChatBotState with _$ChatBotState {
  const factory ChatBotState.initial() = _Initial;

  const factory ChatBotState.loading() = Loading;

  const factory ChatBotState.success(ChatBotResponse data) = Success;

  const factory ChatBotState.error({required String error}) = Error;
}
