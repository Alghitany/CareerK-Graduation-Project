// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'start_chat_room_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StartChatRoomResponse _$StartChatRoomResponseFromJson(
        Map<String, dynamic> json) =>
    StartChatRoomResponse(
      chatRoomId: json['chatRoomId'] as String,
      existing: json['existing'] as bool,
    );

Map<String, dynamic> _$StartChatRoomResponseToJson(
        StartChatRoomResponse instance) =>
    <String, dynamic>{
      'chatRoomId': instance.chatRoomId,
      'existing': instance.existing,
    };
