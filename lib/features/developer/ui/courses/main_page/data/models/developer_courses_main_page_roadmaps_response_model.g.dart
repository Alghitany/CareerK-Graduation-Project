// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'developer_courses_main_page_roadmaps_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DeveloperCoursesMainPageRoadmapsResponseModel
    _$DeveloperCoursesMainPageRoadmapsResponseModelFromJson(
            Map<String, dynamic> json) =>
        DeveloperCoursesMainPageRoadmapsResponseModel(
          trackId: json['track_id'] as String,
          trackName: json['track_name'] as String,
          description: json['description'] as String,
          imageUrl: json['image_url'] as String,
        );

Map<String, dynamic> _$DeveloperCoursesMainPageRoadmapsResponseModelToJson(
        DeveloperCoursesMainPageRoadmapsResponseModel instance) =>
    <String, dynamic>{
      'track_id': instance.trackId,
      'track_name': instance.trackName,
      'description': instance.description,
      'image_url': instance.imageUrl,
    };
