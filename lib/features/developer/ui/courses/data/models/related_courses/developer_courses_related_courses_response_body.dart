import 'package:json_annotation/json_annotation.dart';

part 'developer_courses_related_courses_response_body.g.dart';

@JsonSerializable()
class DeveloperCoursesRelatedCoursesResponseBody {
  @JsonKey(name: 'course_id')
  final String courseId;

  final String name;

  @JsonKey(name: 'image_url')
  final String imageUrl;

  @JsonKey(name: 'track_id')
  final String trackId;

  final String duration;

  final double? rating;

  @JsonKey(name: 'total_lessons')
  final int totalLessons;

  final double score;

  DeveloperCoursesRelatedCoursesResponseBody({
    required this.courseId,
    required this.name,
    required this.imageUrl,
    required this.trackId,
    required this.duration,
    this.rating,
    required this.totalLessons,
    required this.score,
  });

  factory DeveloperCoursesRelatedCoursesResponseBody.fromJson(
          Map<String, dynamic> json) =>
      _$DeveloperCoursesRelatedCoursesResponseBodyFromJson(json);

  Map<String, dynamic> toJson() =>
      _$DeveloperCoursesRelatedCoursesResponseBodyToJson(this);
}
