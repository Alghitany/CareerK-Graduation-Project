// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'start_chat_room_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StartChatRoomRequestBody _$StartChatRoomRequestBodyFromJson(
        Map<String, dynamic> json) =>
    StartChatRoomRequestBody(
      targetUser:
          TargetUser.fromJson(json['targetUser'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$StartChatRoomRequestBodyToJson(
        StartChatRoomRequestBody instance) =>
    <String, dynamic>{
      'targetUser': instance.targetUser,
    };

TargetUser _$TargetUserFromJson(Map<String, dynamic> json) => TargetUser(
      userId: json['user_id'] as String,
      role: json['role'] as String?,
    );

Map<String, dynamic> _$TargetUserToJson(TargetUser instance) =>
    <String, dynamic>{
      'user_id': instance.userId,
      'role': instance.role,
    };
