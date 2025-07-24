import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/networking/api_error_model.dart';

part 'send_messages_state.freezed.dart';

@freezed
class SendMessagesState<T> with _$SendMessagesState<T> {
  const factory SendMessagesState.initial() = _Initial;

  const factory SendMessagesState.sendMessageLoading() = SendMessageLoading;

  const factory SendMessagesState.sendMessageSuccess(T data) =
      SendMessageSuccess<T>;

  const factory SendMessagesState.sendMessageError(ApiErrorModel apiErrorModel) = SendMessageError;
}
