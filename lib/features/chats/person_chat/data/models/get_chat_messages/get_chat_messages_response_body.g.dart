// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_chat_messages_response_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetChatMessagesResponseBody _$GetChatMessagesResponseBodyFromJson(
        Map<String, dynamic> json) =>
    GetChatMessagesResponseBody(
      messages: (json['messages'] as List<dynamic>)
          .map((e) => ChatMessage.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GetChatMessagesResponseBodyToJson(
        GetChatMessagesResponseBody instance) =>
    <String, dynamic>{
      'messages': instance.messages,
    };

ChatMessage _$ChatMessageFromJson(Map<String, dynamic> json) => ChatMessage(
      id: json['id'] as String,
      senderId: json['sender_id'] as String,
      senderRole: json['sender_role'] as String,
      message: json['message'] as String,
      fileUrl: json['file_url'] as String?,
      fileType: json['file_type'] as String?,
      createdAt: DateTime.parse(json['created_at'] as String),
      senderName: json['senderName'] as String,
      senderProfilePicture: json['senderProfilePicture'] as String?,
    );

Map<String, dynamic> _$ChatMessageToJson(ChatMessage instance) =>
    <String, dynamic>{
      'id': instance.id,
      'sender_id': instance.senderId,
      'sender_role': instance.senderRole,
      'message': instance.message,
      'file_url': instance.fileUrl,
      'file_type': instance.fileType,
      'created_at': instance.createdAt.toIso8601String(),
      'senderName': instance.senderName,
      'senderProfilePicture': instance.senderProfilePicture,
    };
