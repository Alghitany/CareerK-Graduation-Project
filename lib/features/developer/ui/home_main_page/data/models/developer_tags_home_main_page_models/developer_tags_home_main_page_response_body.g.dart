// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'developer_tags_home_main_page_response_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DeveloperTagsHomeMainPageResponseBody
    _$DeveloperTagsHomeMainPageResponseBodyFromJson(
            Map<String, dynamic> json) =>
        DeveloperTagsHomeMainPageResponseBody(
          trackId: json['track_id'] as String,
          trackName: json['track_name'] as String,
          description: json['description'] as String,
          imageUrl: json['image_url'] as String,
        );

Map<String, dynamic> _$DeveloperTagsHomeMainPageResponseBodyToJson(
        DeveloperTagsHomeMainPageResponseBody instance) =>
    <String, dynamic>{
      'track_id': instance.trackId,
      'track_name': instance.trackName,
      'description': instance.description,
      'image_url': instance.imageUrl,
    };
