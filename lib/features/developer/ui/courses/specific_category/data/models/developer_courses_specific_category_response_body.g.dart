// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'developer_courses_specific_category_response_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DeveloperCoursesSpecificCategoryResponseBody
    _$DeveloperCoursesSpecificCategoryResponseBodyFromJson(
            Map<String, dynamic> json) =>
        DeveloperCoursesSpecificCategoryResponseBody(
          courseId: json['course_id'] as String,
          name: json['name'] as String,
          imageUrl: json['image_url'] as String,
          totalLessons: (json['total_lessons'] as num).toInt(),
          duration: json['duration'] as String,
        );

Map<String, dynamic> _$DeveloperCoursesSpecificCategoryResponseBodyToJson(
        DeveloperCoursesSpecificCategoryResponseBody instance) =>
    <String, dynamic>{
      'course_id': instance.courseId,
      'name': instance.name,
      'image_url': instance.imageUrl,
      'total_lessons': instance.totalLessons,
      'duration': instance.duration,
    };
