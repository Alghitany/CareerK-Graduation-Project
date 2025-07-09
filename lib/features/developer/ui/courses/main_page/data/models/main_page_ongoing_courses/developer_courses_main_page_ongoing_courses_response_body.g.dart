// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'developer_courses_main_page_ongoing_courses_response_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DeveloperCoursesMainPageOngoingCoursesResponseBody
    _$DeveloperCoursesMainPageOngoingCoursesResponseBodyFromJson(
            Map<String, dynamic> json) =>
        DeveloperCoursesMainPageOngoingCoursesResponseBody(
          courseId: json['course_id'] as String,
          name: json['name'] as String,
          imageUrl: json['image_url'] as String,
          progressPercentage: (json['progress_percentage'] as num).toInt(),
          resumeLessonId: json['resume_lesson_id'] as String,
          lastAccessedAt: json['last_accessed_at'] as String,
          totalCount: (json['totalCount'] as num).toInt(),
          completedCount: (json['completedCount'] as num).toInt(),
        );

Map<String, dynamic> _$DeveloperCoursesMainPageOngoingCoursesResponseBodyToJson(
        DeveloperCoursesMainPageOngoingCoursesResponseBody instance) =>
    <String, dynamic>{
      'course_id': instance.courseId,
      'name': instance.name,
      'image_url': instance.imageUrl,
      'progress_percentage': instance.progressPercentage,
      'resume_lesson_id': instance.resumeLessonId,
      'last_accessed_at': instance.lastAccessedAt,
      'totalCount': instance.totalCount,
      'completedCount': instance.completedCount,
    };
