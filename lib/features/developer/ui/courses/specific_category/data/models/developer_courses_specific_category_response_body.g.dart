// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'developer_courses_specific_category_response_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DeveloperCoursesSpecificCategoryResponseBody
    _$DeveloperCoursesSpecificCategoryResponseBodyFromJson(
            Map<String, dynamic> json) =>
        DeveloperCoursesSpecificCategoryResponseBody(
          trackName: json['track_name'] as String,
          courses: (json['courses'] as List<dynamic>)
              .map((e) => Course.fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$DeveloperCoursesSpecificCategoryResponseBodyToJson(
        DeveloperCoursesSpecificCategoryResponseBody instance) =>
    <String, dynamic>{
      'track_name': instance.trackName,
      'courses': instance.courses,
    };

Course _$CourseFromJson(Map<String, dynamic> json) => Course(
      courseId: json['course_id'] as String,
      name: json['name'] as String,
      imageUrl: json['image_url'] as String,
      totalLessons: _stringToInt(json['total_lessons']),
      duration: json['duration'] as String,
      averageRating: json['average_rating'] as String?,
    );

Map<String, dynamic> _$CourseToJson(Course instance) => <String, dynamic>{
      'course_id': instance.courseId,
      'name': instance.name,
      'image_url': instance.imageUrl,
      'total_lessons': _intToString(instance.totalLessons),
      'duration': instance.duration,
      'average_rating': instance.averageRating,
    };
