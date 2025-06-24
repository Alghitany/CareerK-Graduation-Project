// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chats_all_chats_response_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChatsAllChatsResponseBody _$ChatsAllChatsResponseBodyFromJson(
        Map<String, dynamic> json) =>
    ChatsAllChatsResponseBody(
      chats: (json['chats'] as List<dynamic>)
          .map((e) => ChatItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ChatsAllChatsResponseBodyToJson(
        ChatsAllChatsResponseBody instance) =>
    <String, dynamic>{
      'chats': instance.chats,
    };

ChatItem _$ChatItemFromJson(Map<String, dynamic> json) => ChatItem(
      chatRoomId: json['chat_room_id'] as String,
      lastMessage: json['last_message'] as String?,
      lastMessageTime: json['last_message_time'] as String?,
      otherUserId: json['other_user_id'] as String,
      otherUserRole: json['other_user_role'] as String,
      userName: json['user_name'] as String,
      userProfilePicture: json['user_profile_picture'] as String,
    );

Map<String, dynamic> _$ChatItemToJson(ChatItem instance) => <String, dynamic>{
      'chat_room_id': instance.chatRoomId,
      'last_message': instance.lastMessage,
      'last_message_time': instance.lastMessageTime,
      'other_user_id': instance.otherUserId,
      'other_user_role': instance.otherUserRole,
      'user_name': instance.userName,
      'user_profile_picture': instance.userProfilePicture,
    };
