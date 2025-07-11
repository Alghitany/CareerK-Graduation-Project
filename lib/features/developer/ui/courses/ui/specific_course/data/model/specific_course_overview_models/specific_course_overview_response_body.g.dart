// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'specific_course_overview_response_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SpecificCourseOverviewResponseBody _$SpecificCourseOverviewResponseBodyFromJson(
        Map<String, dynamic> json) =>
    SpecificCourseOverviewResponseBody(
      totalVideoTime: json['totalVideoTime'] as String,
      hasCertificate: json['hasCertificate'] as bool,
      difficulty: json['difficulty'] as String,
      description: json['description'] as String,
    );

Map<String, dynamic> _$SpecificCourseOverviewResponseBodyToJson(
        SpecificCourseOverviewResponseBody instance) =>
    <String, dynamic>{
      'totalVideoTime': instance.totalVideoTime,
      'hasCertificate': instance.hasCertificate,
      'difficulty': instance.difficulty,
      'description': instance.description,
    };
