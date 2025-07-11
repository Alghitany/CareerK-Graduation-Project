// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'developer_courses_related_courses_response_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DeveloperCoursesRelatedCoursesResponseBody
    _$DeveloperCoursesRelatedCoursesResponseBodyFromJson(
            Map<String, dynamic> json) =>
        DeveloperCoursesRelatedCoursesResponseBody(
          courseId: json['course_id'] as String,
          name: json['name'] as String,
          imageUrl: json['image_url'] as String,
          trackId: json['track_id'] as String,
          duration: json['duration'] as String,
          rating: (json['rating'] as num?)?.toDouble(),
          totalLessons: (json['total_lessons'] as num).toInt(),
          score: (json['score'] as num).toDouble(),
        );

Map<String, dynamic> _$DeveloperCoursesRelatedCoursesResponseBodyToJson(
        DeveloperCoursesRelatedCoursesResponseBody instance) =>
    <String, dynamic>{
      'course_id': instance.courseId,
      'name': instance.name,
      'image_url': instance.imageUrl,
      'track_id': instance.trackId,
      'duration': instance.duration,
      'rating': instance.rating,
      'total_lessons': instance.totalLessons,
      'score': instance.score,
    };
