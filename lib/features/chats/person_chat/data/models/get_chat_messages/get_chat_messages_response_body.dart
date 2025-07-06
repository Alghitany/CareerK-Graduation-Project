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

  /// Use this for parsing dynamic data safely, especially from socket
  factory ChatMessage.fromJson(Map<String, dynamic> json) {
    return ChatMessage(
      id: json['id'] as String,
      senderId: json['senderId'] ?? json['sender_id'] as String,
      senderRole: json['senderRole'] ?? json['sender_role'] as String,
      message: json['message'] as String,
      fileUrl: json['fileUrl'] ?? json['file_url'],
      fileType: json['fileType'] ?? json['file_type'],
      createdAt: json['created_at'] != null
          ? DateTime.parse(json['created_at'])
          : DateTime.now(),
      // fallback
      senderName: json['senderName'] as String,
      senderProfilePicture: json['senderProfilePicture'] as String?,
    );
  }

  Map<String, dynamic> toJson() => _$ChatMessageToJson(this);
}
