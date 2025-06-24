import 'package:json_annotation/json_annotation.dart';

part 'chats_all_chats_response_body.g.dart';

@JsonSerializable()
class ChatsAllChatsResponseBody {
  @JsonKey(name: 'chats')
  final List<ChatItem> chats;

  ChatsAllChatsResponseBody({required this.chats});

  factory ChatsAllChatsResponseBody.fromJson(Map<String, dynamic> json) =>
      _$ChatsAllChatsResponseBodyFromJson(json);

  Map<String, dynamic> toJson() => _$ChatsAllChatsResponseBodyToJson(this);
}

@JsonSerializable()
class ChatItem {
  @JsonKey(name: 'chat_room_id')
  final String chatRoomId;

  @JsonKey(name: 'last_message')
  final String? lastMessage;

  @JsonKey(name: 'last_message_time')
  final String? lastMessageTime;

  @JsonKey(name: 'other_user_id')
  final String otherUserId;

  @JsonKey(name: 'other_user_role')
  final String otherUserRole;

  @JsonKey(name: 'user_name')
  final String userName;

  @JsonKey(name: 'user_profile_picture')
  final String userProfilePicture;

  ChatItem({
    required this.chatRoomId,
    this.lastMessage,
    this.lastMessageTime,
    required this.otherUserId,
    required this.otherUserRole,
    required this.userName,
    required this.userProfilePicture,
  });

  factory ChatItem.fromJson(Map<String, dynamic> json) =>
      _$ChatItemFromJson(json);

  Map<String, dynamic> toJson() => _$ChatItemToJson(this);
}
