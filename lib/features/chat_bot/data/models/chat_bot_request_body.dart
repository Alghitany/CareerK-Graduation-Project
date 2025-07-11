import 'package:json_annotation/json_annotation.dart';

part 'chat_bot_request_body.g.dart';

@JsonSerializable()
class ChatBotRequestBody {
  final String prompt;

  @JsonKey(name: 'user_id')
  final String userId;

  ChatBotRequestBody({
    required this.prompt,
    required this.userId,
  });

  Map<String, dynamic> toJson() => _$ChatBotRequestBodyToJson(this);
}
