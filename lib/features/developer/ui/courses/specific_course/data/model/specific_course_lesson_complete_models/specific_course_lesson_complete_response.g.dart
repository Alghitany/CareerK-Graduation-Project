// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'specific_course_lesson_complete_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SpecificCourseLessonCompleteResponse
    _$SpecificCourseLessonCompleteResponseFromJson(Map<String, dynamic> json) =>
        SpecificCourseLessonCompleteResponse(
          status: (json['status'] as num).toInt(),
          message: json['message'] as String,
          progressPercentage: (json['progressPercentage'] as num).toInt(),
          completedCount: (json['completedCount'] as num).toInt(),
          totalCount: (json['totalCount'] as num).toInt(),
        );

Map<String, dynamic> _$SpecificCourseLessonCompleteResponseToJson(
        SpecificCourseLessonCompleteResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'progressPercentage': instance.progressPercentage,
      'completedCount': instance.completedCount,
      'totalCount': instance.totalCount,
    };
