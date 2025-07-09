import 'package:json_annotation/json_annotation.dart';

part 'developer_courses_main_page_ongoing_courses_response_body.g.dart';

@JsonSerializable()
class DeveloperCoursesMainPageOngoingCoursesResponseBody {
  @JsonKey(name: 'course_id')
  final String courseId;

  final String name;

  @JsonKey(name: 'image_url')
  final String imageUrl;

  @JsonKey(name: 'progress_percentage')
  final int progressPercentage;

  @JsonKey(name: 'resume_lesson_id')
  final String resumeLessonId;

  @JsonKey(name: 'last_accessed_at')
  final String lastAccessedAt;

  final int totalCount;
  final int completedCount;

  DeveloperCoursesMainPageOngoingCoursesResponseBody({
    required this.courseId,
    required this.name,
    required this.imageUrl,
    required this.progressPercentage,
    required this.resumeLessonId,
    required this.lastAccessedAt,
    required this.totalCount,
    required this.completedCount,
  });

  factory DeveloperCoursesMainPageOngoingCoursesResponseBody.fromJson(
          Map<String, dynamic> json) =>
      _$DeveloperCoursesMainPageOngoingCoursesResponseBodyFromJson(json);

  Map<String, dynamic> toJson() =>
      _$DeveloperCoursesMainPageOngoingCoursesResponseBodyToJson(this);
}
