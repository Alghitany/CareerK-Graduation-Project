import 'package:json_annotation/json_annotation.dart';

part 'start_chat_room_response.g.dart';

@JsonSerializable()
class StartChatRoomResponse {
  final String chatRoomId;
  final bool existing;

  StartChatRoomResponse({
    required this.chatRoomId,
    required this.existing,
  });

  factory StartChatRoomResponse.fromJson(Map<String, dynamic> json) =>
      _$StartChatRoomResponseFromJson(json);

  Map<String, dynamic> toJson() => _$StartChatRoomResponseToJson(this);
}
