// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_bot_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChatBotRequestBody _$ChatBotRequestBodyFromJson(Map<String, dynamic> json) =>
    ChatBotRequestBody(
      prompt: json['prompt'] as String,
      userId: json['user_id'] as String,
    );

Map<String, dynamic> _$ChatBotRequestBodyToJson(ChatBotRequestBody instance) =>
    <String, dynamic>{
      'prompt': instance.prompt,
      'user_id': instance.userId,
    };
