import 'package:json_annotation/json_annotation.dart';

part 'get_chat_messages_response_body.g.dart';

@JsonSerializable()
class GetChatMessagesResponseBody {
  final List<ChatMessage> messages;

  GetChatMessagesResponseBody({
    required this.messages,
  });

  factory GetChatMessagesResponseBody.fromJson(Map<String, dynamic> json) =>
      _$GetChatMessagesResponseBodyFromJson(json);

  Map<String, dynamic> toJson() => _$GetChatMessagesResponseBodyToJson(this);
}

@JsonSerializable()
class ChatMessage {
  final String id;

  @JsonKey(name: 'sender_id')
  final String senderId;

  @JsonKey(name: 'sender_role')
  final String senderRole;

  final String message;

  @JsonKey(name: 'file_url')
  final String? fileUrl;

  @JsonKey(name: 'file_type')
  final String? fileType;

  @JsonKey(name: 'created_at')
  final DateTime createdAt;

  @JsonKey(name: 'senderName')
  final String senderName;

  @JsonKey(name: 'senderProfilePicture')
  final String? senderProfilePicture;

  ChatMessage({
    required this.id,
    required this.senderId,
    required this.senderRole,
    required this.message,
    this.fileUrl,
    this.fileType,
    required this.createdAt,
    required this.senderName,
    this.senderProfilePicture,
  });

  factory ChatMessage.fromJson(Map<String, dynamic> json) =>
      _$ChatMessageFromJson(json);

  Map<String, dynamic> toJson() => _$ChatMessageToJson(this);
}
