// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'developer_courses_home_main_page_response_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DeveloperCoursesHomeMainPageResponseBody
    _$DeveloperCoursesHomeMainPageResponseBodyFromJson(
            Map<String, dynamic> json) =>
        DeveloperCoursesHomeMainPageResponseBody(
          courseId: json['course_id'] as String?,
          name: json['name'] as String?,
          imageUrl: json['image_url'] as String?,
          totalLessons: (json['total_lessons'] as num?)?.toInt(),
          duration: json['duration'] as String?,
          averageRating: json['average_rating'] as String?,
        );

Map<String, dynamic> _$DeveloperCoursesHomeMainPageResponseBodyToJson(
        DeveloperCoursesHomeMainPageResponseBody instance) =>
    <String, dynamic>{
      'course_id': instance.courseId,
      'name': instance.name,
      'image_url': instance.imageUrl,
      'total_lessons': instance.totalLessons,
      'duration': instance.duration,
      'average_rating': instance.averageRating,
    };
