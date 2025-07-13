import 'package:json_annotation/json_annotation.dart';

part 'developer_community_by_interest_response_body.g.dart';

@JsonSerializable()
class DeveloperCommunityByInterestResponseBody {
  final bool success;

  final List<DeveloperCommunityByInterestGroup> groups;

  DeveloperCommunityByInterestResponseBody({
    required this.success,
    required this.groups,
  });

  factory DeveloperCommunityByInterestResponseBody.fromJson(
          Map<String, dynamic> json) =>
      _$DeveloperCommunityByInterestResponseBodyFromJson(json);

  Map<String, dynamic> toJson() =>
      _$DeveloperCommunityByInterestResponseBodyToJson(this);
}

@JsonSerializable()
class DeveloperCommunityByInterestGroup {
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
  final String? groupName; // Made nullable

  @JsonKey(name: 'image_url')
  final String? imageUrl; // Made nullable

  @JsonKey(name: 'sim_score')
  final double simScore;

  DeveloperCommunityByInterestGroup({
    required this.id,
    required this.chatRoomId,
    required this.interestTag,
    required this.createdAt,
    this.deletedAt,
    required this.memberCount,
    this.groupName, // nullable
    this.imageUrl, // nullable
    required this.simScore,
  });

  factory DeveloperCommunityByInterestGroup.fromJson(
          Map<String, dynamic> json) =>
      _$DeveloperCommunityByInterestGroupFromJson(json);

  Map<String, dynamic> toJson() =>
      _$DeveloperCommunityByInterestGroupToJson(this);
}
