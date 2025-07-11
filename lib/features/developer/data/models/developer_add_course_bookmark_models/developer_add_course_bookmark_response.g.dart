// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'developer_add_course_bookmark_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DeveloperAddCourseBookmarkResponse _$DeveloperAddCourseBookmarkResponseFromJson(
        Map<String, dynamic> json) =>
    DeveloperAddCourseBookmarkResponse(
      success: json['success'] as bool,
      message: json['message'] as String,
      bookmarked: json['bookmarked'] as bool,
    );

Map<String, dynamic> _$DeveloperAddCourseBookmarkResponseToJson(
        DeveloperAddCourseBookmarkResponse instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'bookmarked': instance.bookmarked,
    };
