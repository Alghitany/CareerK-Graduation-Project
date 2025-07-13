// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'developer_courses_ongoing_response_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DeveloperCoursesOngoingResponseBody
    _$DeveloperCoursesOngoingResponseBodyFromJson(Map<String, dynamic> json) =>
        DeveloperCoursesOngoingResponseBody(
          courseId: json['course_id'] as String,
          name: json['name'] as String,
          imageUrl: json['image_url'] as String,
          description: json['description'] as String?,
          difficulty: json['difficulty'] as String?,
          progressPercentage: (json['progress_percentage'] as num).toInt(),
          resumeLessonId: json['resume_lesson_id'] as String?,
          lastAccessedAt: json['last_accessed_at'] as String?,
          totalCount: (json['totalCount'] as num).toInt(),
          completedCount: (json['completedCount'] as num).toInt(),
        );

Map<String, dynamic> _$DeveloperCoursesOngoingResponseBodyToJson(
        DeveloperCoursesOngoingResponseBody instance) =>
    <String, dynamic>{
      'course_id': instance.courseId,
      'name': instance.name,
      'image_url': instance.imageUrl,
      'description': instance.description,
      'difficulty': instance.difficulty,
      'progress_percentage': instance.progressPercentage,
      'resume_lesson_id': instance.resumeLessonId,
      'last_accessed_at': instance.lastAccessedAt,
      'totalCount': instance.totalCount,
      'completedCount': instance.completedCount,
    };
