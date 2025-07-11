// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'specific_course_enroll_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SpecificCourseEnrollResponse _$SpecificCourseEnrollResponseFromJson(
        Map<String, dynamic> json) =>
    SpecificCourseEnrollResponse(
      status: (json['status'] as num).toInt(),
      message: json['message'] as String,
    );

Map<String, dynamic> _$SpecificCourseEnrollResponseToJson(
        SpecificCourseEnrollResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
    };
