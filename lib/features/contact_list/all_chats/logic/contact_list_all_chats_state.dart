import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/networking/api_error_handler.dart';
import '../data/model/conact_list_all_chats_response_body.dart';

part 'contact_list_all_chats_state.freezed.dart';

@freezed
class ContactListAllChatsState with _$ContactListAllChatsState {
  const factory ContactListAllChatsState.initial() = _Initial;

  const factory ContactListAllChatsState.loading() = ContactListAllChatsLoading;

  const factory ContactListAllChatsState.success(
    ContactListAllChatsResponseBody chats,
  ) = ContactListAllChatsSuccess;

  const factory ContactListAllChatsState.error(
    ErrorHandler errorHandler,
  ) = ContactListAllChatsError;
}
