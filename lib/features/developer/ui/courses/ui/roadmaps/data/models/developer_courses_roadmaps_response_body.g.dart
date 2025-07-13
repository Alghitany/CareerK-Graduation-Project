// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'developer_courses_roadmaps_response_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DeveloperCoursesRoadmapsResponseBody
    _$DeveloperCoursesRoadmapsResponseBodyFromJson(Map<String, dynamic> json) =>
        DeveloperCoursesRoadmapsResponseBody(
          trackId: json['track_id'] as String,
          trackTitle: json['track_title'] as String,
          imageUrl: json['image_url'] as String,
          totalDuration: json['total_duration'] as String,
          startCourse: json['start_course'] as String,
          endCourse: json['end_course'] as String,
        );

Map<String, dynamic> _$DeveloperCoursesRoadmapsResponseBodyToJson(
        DeveloperCoursesRoadmapsResponseBody instance) =>
    <String, dynamic>{
      'track_id': instance.trackId,
      'track_title': instance.trackTitle,
      'image_url': instance.imageUrl,
      'total_duration': instance.totalDuration,
      'start_course': instance.startCourse,
      'end_course': instance.endCourse,
    };
