import 'package:json_annotation/json_annotation.dart';

part 'start_chat_room_request_body.g.dart';

@JsonSerializable()
class StartChatRoomRequestBody {
  @JsonKey(name: 'targetUser')
  final TargetUser targetUser;

  StartChatRoomRequestBody({required this.targetUser});

  factory StartChatRoomRequestBody.fromJson(Map<String, dynamic> json) =>
      _$StartChatRoomRequestBodyFromJson(json);

  Map<String, dynamic> toJson() => _$StartChatRoomRequestBodyToJson(this);
}

@JsonSerializable()
class TargetUser {
  @JsonKey(name: 'user_id')
  final String userId;

  final String? role;

  TargetUser({
    required this.userId,
    this.role,
  });

  factory TargetUser.fromJson(Map<String, dynamic> json) =>
      _$TargetUserFromJson(json);

  Map<String, dynamic> toJson() => _$TargetUserToJson(this);
}
