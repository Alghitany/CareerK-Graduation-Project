// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'developer_community_by_interest_response_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DeveloperCommunityByInterestResponseBody
    _$DeveloperCommunityByInterestResponseBodyFromJson(
            Map<String, dynamic> json) =>
        DeveloperCommunityByInterestResponseBody(
          success: json['success'] as bool,
          groups: (json['groups'] as List<dynamic>)
              .map((e) => DeveloperCommunityByInterestGroup.fromJson(
                  e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$DeveloperCommunityByInterestResponseBodyToJson(
        DeveloperCommunityByInterestResponseBody instance) =>
    <String, dynamic>{
      'success': instance.success,
      'groups': instance.groups,
    };

DeveloperCommunityByInterestGroup _$DeveloperCommunityByInterestGroupFromJson(
        Map<String, dynamic> json) =>
    DeveloperCommunityByInterestGroup(
      id: json['id'] as String,
      chatRoomId: json['chat_room_id'] as String,
      interestTag: json['interest_tag'] as String,
      createdAt: json['created_at'] as String,
      deletedAt: json['deleted_at'] as String?,
      memberCount: (json['member_count'] as num).toInt(),
      groupName: json['group_name'] as String?,
      imageUrl: json['image_url'] as String?,
      simScore: (json['sim_score'] as num).toDouble(),
    );

Map<String, dynamic> _$DeveloperCommunityByInterestGroupToJson(
        DeveloperCommunityByInterestGroup instance) =>
    <String, dynamic>{
      'id': instance.id,
      'chat_room_id': instance.chatRoomId,
      'interest_tag': instance.interestTag,
      'created_at': instance.createdAt,
      'deleted_at': instance.deletedAt,
      'member_count': instance.memberCount,
      'group_name': instance.groupName,
      'image_url': instance.imageUrl,
      'sim_score': instance.simScore,
    };
