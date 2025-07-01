// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'developer_courses_specific_course_response_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DeveloperCoursesSpecificCourseResponseBody
    _$DeveloperCoursesSpecificCourseResponseBodyFromJson(
            Map<String, dynamic> json) =>
        DeveloperCoursesSpecificCourseResponseBody(
          name: json['name'] as String,
          averageRating: (json['averageRating'] as num).toDouble(),
          totalLessons: (json['totalLessons'] as num).toInt(),
        );

Map<String, dynamic> _$DeveloperCoursesSpecificCourseResponseBodyToJson(
        DeveloperCoursesSpecificCourseResponseBody instance) =>
    <String, dynamic>{
      'name': instance.name,
      'averageRating': instance.averageRating,
      'totalLessons': instance.totalLessons,
    };
