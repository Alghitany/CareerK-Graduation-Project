import 'package:json_annotation/json_annotation.dart';

part 'developer_community_for_you_response_body.g.dart';

@JsonSerializable()
class DeveloperCommunityForYouResponseBody {
  final bool success;
  final List<DeveloperCommunityGroup> groups;

  DeveloperCommunityForYouResponseBody({
    required this.success,
    required this.groups,
  });

  factory DeveloperCommunityForYouResponseBody.fromJson(
          Map<String, dynamic> json) =>
      _$DeveloperCommunityForYouResponseBodyFromJson(json);

  Map<String, dynamic> toJson() =>
      _$DeveloperCommunityForYouResponseBodyToJson(this);
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
  final String? groupName;

  @JsonKey(name: 'image_url')
  final String? imageUrl;

  DeveloperCommunityGroup({
    required this.id,
    required this.chatRoomId,
    required this.interestTag,
    required this.createdAt,
    this.deletedAt,
    required this.memberCount,
    this.groupName,
    this.imageUrl,
  });

  factory DeveloperCommunityGroup.fromJson(Map<String, dynamic> json) =>
      _$DeveloperCommunityGroupFromJson(json);

  Map<String, dynamic> toJson() => _$DeveloperCommunityGroupToJson(this);
}
