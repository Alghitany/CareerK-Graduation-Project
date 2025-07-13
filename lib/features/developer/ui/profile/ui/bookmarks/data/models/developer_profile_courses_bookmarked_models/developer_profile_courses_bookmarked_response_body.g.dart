// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'developer_profile_courses_bookmarked_response_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DeveloperProfileCoursesBookmarkedResponseBody
    _$DeveloperProfileCoursesBookmarkedResponseBodyFromJson(
            Map<String, dynamic> json) =>
        DeveloperProfileCoursesBookmarkedResponseBody(
          courseId: json['course_id'] as String?,
          name: json['name'] as String?,
          imageUrl: json['image_url'] as String?,
          description: json['description'] as String?,
          averageRating: json['average_rating'] as String?,
          totalLessons: json['total_lessons'] as String?,
          duration: json['duration'] as String?,
          bookmarkedAt: json['bookmarked_at'] as String?,
        );

Map<String, dynamic> _$DeveloperProfileCoursesBookmarkedResponseBodyToJson(
        DeveloperProfileCoursesBookmarkedResponseBody instance) =>
    <String, dynamic>{
      'course_id': instance.courseId,
      'name': instance.name,
      'image_url': instance.imageUrl,
      'description': instance.description,
      'average_rating': instance.averageRating,
      'total_lessons': instance.totalLessons,
      'duration': instance.duration,
      'bookmarked_at': instance.bookmarkedAt,
    };
