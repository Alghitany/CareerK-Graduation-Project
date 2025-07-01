import 'package:json_annotation/json_annotation.dart';

part 'developer_courses_specific_course_response_body.g.dart';

@JsonSerializable()
class DeveloperCoursesSpecificCourseResponseBody {
  @JsonKey(name: 'name')
  final String name;

  @JsonKey(name: 'averageRating')
  final double averageRating;

  @JsonKey(name: 'totalLessons')
  final int totalLessons;

  DeveloperCoursesSpecificCourseResponseBody({
    required this.name,
    required this.averageRating,
    required this.totalLessons,
  });

  factory DeveloperCoursesSpecificCourseResponseBody.fromJson(Map<String, dynamic> json) =>
      _$DeveloperCoursesSpecificCourseResponseBodyFromJson(json);

  Map<String, dynamic> toJson() =>
      _$DeveloperCoursesSpecificCourseResponseBodyToJson(this);
}
