import 'package:json_annotation/json_annotation.dart';

part 'specific_community_response_body.g.dart';

@JsonSerializable()
class SpecificCommunityResponseBody {
  final bool success;
  final DeveloperCommunityGroup group;

  SpecificCommunityResponseBody({
    required this.success,
    required this.group,
  });

  factory SpecificCommunityResponseBody.fromJson(Map<String, dynamic> json) =>
      _$SpecificCommunityResponseBodyFromJson(json);

  Map<String, dynamic> toJson() => _$SpecificCommunityResponseBodyToJson(this);
}

@JsonSerializable()
class DeveloperCommunityGroup {
  final String id;

  @JsonKey(name: 'chat_room_id')
  final String chatRoomId;

  @JsonKey(name: 'interest_tag')
  final String interestTag;

  @JsonKey(name: 'created_at')
  final String createdAt;

  @JsonKey(name: 'deleted_at')
  final String? deletedAt;

  @JsonKey(name: 'member_count')
  final int memberCount;

  @JsonKey(name: 'group_name')
  final String groupName;

  @JsonKey(name: 'image_url')
  final String imageUrl;

  DeveloperCommunityGroup({
    required this.id,
    required this.chatRoomId,
    required this.interestTag,
    required this.createdAt,
    this.deletedAt,
    required this.memberCount,
    required this.groupName,
    required this.imageUrl,
  });

  factory DeveloperCommunityGroup.fromJson(Map<String, dynamic> json) =>
      _$DeveloperCommunityGroupFromJson(json);

  Map<String, dynamic> toJson() => _$DeveloperCommunityGroupToJson(this);
}
