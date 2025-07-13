import 'package:json_annotation/json_annotation.dart';

part 'developer_courses_completed_response_body.g.dart';

@JsonSerializable()
class DeveloperCoursesCompletedResponseBody {
  @JsonKey(name: 'course_id')
  final String courseId;

  final String name;

  @JsonKey(name: 'image_url')
  final String imageUrl;

  final String? description;

  final String? difficulty;

  @JsonKey(name: 'progress_percentage')
  final int progressPercentage;

  @JsonKey(name: 'resume_lesson_id')
  final String? resumeLessonId;

  @JsonKey(name: 'last_accessed_at')
  final String? lastAccessedAt;

  final int totalCount;
  final int completedCount;

  DeveloperCoursesCompletedResponseBody({
    required this.courseId,
    required this.name,
    required this.imageUrl,
    this.description,
    this.difficulty,
    required this.progressPercentage,
    this.resumeLessonId,
    this.lastAccessedAt,
    required this.totalCount,
    required this.completedCount,
  });

  factory DeveloperCoursesCompletedResponseBody.fromJson(
          Map<String, dynamic> json) =>
      _$DeveloperCoursesCompletedResponseBodyFromJson(json);

  Map<String, dynamic> toJson() =>
      _$DeveloperCoursesCompletedResponseBodyToJson(this);
}
