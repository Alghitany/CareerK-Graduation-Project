// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'community_tags_response_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CommunityTagsResponseBody _$CommunityTagsResponseBodyFromJson(
        Map<String, dynamic> json) =>
    CommunityTagsResponseBody(
      tags: (json['tag'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$CommunityTagsResponseBodyToJson(
        CommunityTagsResponseBody instance) =>
    <String, dynamic>{
      'tag': instance.tags,
    };
