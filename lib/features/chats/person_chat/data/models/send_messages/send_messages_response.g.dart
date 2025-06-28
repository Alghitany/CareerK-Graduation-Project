// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'send_messages_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SendMessagesResponse _$SendMessagesResponseFromJson(
        Map<String, dynamic> json) =>
    SendMessagesResponse(
      id: json['id'] as String?,
      chatRoomId: json['chatRoomId'] as String?,
      senderId: json['senderId'] as String?,
      senderRole: json['senderRole'] as String?,
      message: json['message'] as String?,
      fileUrl: json['fileUrl'] as String?,
      fileType: json['fileType'] as String?,
      senderName: json['senderName'] as String?,
      senderProfilePicture: json['senderProfilePicture'] as String?,
    );

Map<String, dynamic> _$SendMessagesResponseToJson(
        SendMessagesResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'chatRoomId': instance.chatRoomId,
      'senderId': instance.senderId,
      'senderRole': instance.senderRole,
      'message': instance.message,
      'fileUrl': instance.fileUrl,
      'fileType': instance.fileType,
      'senderName': instance.senderName,
      'senderProfilePicture': instance.senderProfilePicture,
    };
