import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_chat_messages_state.freezed.dart';

@freezed
class GetChatMessagesState<T> with _$GetChatMessagesState<T> {
  const factory GetChatMessagesState.initial() = _Initial;

  const factory GetChatMessagesState.loading() = Loading;

  const factory GetChatMessagesState.success(T data) = Success<T>;

  const factory GetChatMessagesState.error({required String error}) = Error;
}
