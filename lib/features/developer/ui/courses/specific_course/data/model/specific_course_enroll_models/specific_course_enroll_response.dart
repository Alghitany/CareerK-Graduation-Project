import 'package:json_annotation/json_annotation.dart';

part 'specific_course_enroll_response.g.dart';

@JsonSerializable()
class SpecificCourseEnrollResponse {
  final int status;
  final String message;

  SpecificCourseEnrollResponse({
    required this.status,
    required this.message,
  });

  factory SpecificCourseEnrollResponse.fromJson(Map<String, dynamic> json) =>
      _$SpecificCourseEnrollResponseFromJson(json);

  Map<String, dynamic> toJson() => _$SpecificCourseEnrollResponseToJson(this);
}
