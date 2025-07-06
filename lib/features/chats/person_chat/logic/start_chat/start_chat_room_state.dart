import 'package:freezed_annotation/freezed_annotation.dart';

part 'start_chat_room_state.freezed.dart';

@freezed
class StartChatRoomState<T> with _$StartChatRoomState<T> {
  const factory StartChatRoomState.initial() = _Initial;

  const factory StartChatRoomState.loading() = Loading;

  const factory StartChatRoomState.success(T data) = Success<T>;

  const factory StartChatRoomState.error({required String error}) = Error;
}
