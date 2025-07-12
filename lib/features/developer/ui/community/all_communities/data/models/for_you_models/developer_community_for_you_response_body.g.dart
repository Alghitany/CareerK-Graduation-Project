// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'developer_community_for_you_response_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DeveloperCommunityForYouResponseBody
    _$DeveloperCommunityForYouResponseBodyFromJson(Map<String, dynamic> json) =>
        DeveloperCommunityForYouResponseBody(
          success: json['success'] as bool,
          groups: (json['groups'] as List<dynamic>)
              .map((e) =>
                  DeveloperCommunityGroup.fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$DeveloperCommunityForYouResponseBodyToJson(
        DeveloperCommunityForYouResponseBody instance) =>
    <String, dynamic>{
      'success': instance.success,
      'groups': instance.groups,
    };

DeveloperCommunityGroup _$DeveloperCommunityGroupFromJson(
        Map<String, dynamic> json) =>
    DeveloperCommunityGroup(
      id: json['id'] as String,
      chatRoomId: json['chat_room_id'] as String,
      interestTag: json['interest_tag'] as String,
      createdAt: json['created_at'] as String,
      deletedAt: json['deleted_at'] as String?,
      memberCount: (json['member_count'] as num).toInt(),
      groupName: json['group_name'] as String,
      imageUrl: json['image_url'] as String,
    );

Map<String, dynamic> _$DeveloperCommunityGroupToJson(
        DeveloperCommunityGroup instance) =>
    <String, dynamic>{
      'id': instance.id,
      'chat_room_id': instance.chatRoomId,
      'interest_tag': instance.interestTag,
      'created_at': instance.createdAt,
      'deleted_at': instance.deletedAt,
      'member_count': instance.memberCount,
      'group_name': instance.groupName,
      'image_url': instance.imageUrl,
    };
