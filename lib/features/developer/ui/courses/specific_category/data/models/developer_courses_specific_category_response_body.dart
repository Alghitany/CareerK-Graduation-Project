import 'package:json_annotation/json_annotation.dart';

part 'developer_courses_specific_category_response_body.g.dart';

@JsonSerializable()
class DeveloperCoursesSpecificCategoryResponseBody {
  @JsonKey(name: 'course_id')
  final String courseId;

  @JsonKey(name: 'name')
  final String name;

  @JsonKey(name: 'image_url')
  final String imageUrl;

  @JsonKey(name: 'total_lessons')
  final int totalLessons;

  @JsonKey(name: 'duration')
  final String duration;

  DeveloperCoursesSpecificCategoryResponseBody({
    required this.courseId,
    required this.name,
    required this.imageUrl,
    required this.totalLessons,
    required this.duration,
  });

  factory DeveloperCoursesSpecificCategoryResponseBody.fromJson(
          Map<String, dynamic> json) =>
      _$DeveloperCoursesSpecificCategoryResponseBodyFromJson(json);

  Map<String, dynamic> toJson() =>
      _$DeveloperCoursesSpecificCategoryResponseBodyToJson(this);
}
