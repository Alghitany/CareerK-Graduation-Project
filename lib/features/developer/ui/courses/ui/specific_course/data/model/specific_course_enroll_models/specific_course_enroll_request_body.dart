import 'package:json_annotation/json_annotation.dart';

part 'specific_course_enroll_request_body.g.dart';

@JsonSerializable()
class SpecificCourseEnrollRequestBody {
  SpecificCourseEnrollRequestBody();

  factory SpecificCourseEnrollRequestBody.fromJson(Map<String, dynamic> json) =>
      _$SpecificCourseEnrollRequestBodyFromJson(json);

  Map<String, dynamic> toJson() =>
      _$SpecificCourseEnrollRequestBodyToJson(this);
}
