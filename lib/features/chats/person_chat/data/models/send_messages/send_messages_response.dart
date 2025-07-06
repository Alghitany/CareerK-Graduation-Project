import 'package:json_annotation/json_annotation.dart';

part 'send_messages_response.g.dart';

@JsonSerializable()
class SendMessagesResponse {
  final String? id;
  final String? chatRoomId;
  final String? senderId;
  final String? senderRole;
  final String? message;
  final String? fileUrl;
  final String? fileType;
  final String? senderName;
  final String? senderProfilePicture;

  SendMessagesResponse({
    this.id,
    this.chatRoomId,
    this.senderId,
    this.senderRole,
    this.message,
    this.fileUrl,
    this.fileType,
    this.senderName,
    this.senderProfilePicture,
  });

  factory SendMessagesResponse.fromJson(Map<String, dynamic> json) =>
      _$SendMessagesResponseFromJson(json);

  Map<String, dynamic> toJson() => _$SendMessagesResponseToJson(this);
}
