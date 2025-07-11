// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'specific_course_header_response_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SpecificCourseHeaderResponseBody _$SpecificCourseHeaderResponseBodyFromJson(
        Map<String, dynamic> json) =>
    SpecificCourseHeaderResponseBody(
      name: json['name'] as String,
      imageUrl: json['imageUrl'] as String,
      averageRating: (json['averageRating'] as num).toDouble(),
      videoLessons: _dynamicToInt(json['videoLessons']),
      previewVideoUrl: json['previewVideoUrl'] as String?,
    );

Map<String, dynamic> _$SpecificCourseHeaderResponseBodyToJson(
        SpecificCourseHeaderResponseBody instance) =>
    <String, dynamic>{
      'name': instance.name,
      'imageUrl': instance.imageUrl,
      'averageRating': instance.averageRating,
      'videoLessons': _intToString(instance.videoLessons),
      'previewVideoUrl': instance.previewVideoUrl,
    };
