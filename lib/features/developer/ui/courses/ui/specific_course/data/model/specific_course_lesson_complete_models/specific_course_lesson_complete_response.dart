import 'package:json_annotation/json_annotation.dart';

part 'specific_course_lesson_complete_response.g.dart';

@JsonSerializable()
class SpecificCourseLessonCompleteResponse {
  final int status;
  final String message;

  @JsonKey(name: 'progressPercentage')
  final int progressPercentage;

  @JsonKey(name: 'completedCount')
  final int completedCount;

  @JsonKey(name: 'totalCount')
  final int totalCount;

  SpecificCourseLessonCompleteResponse({
    required this.status,
    required this.message,
    required this.progressPercentage,
    required this.completedCount,
    required this.totalCount,
  });

  factory SpecificCourseLessonCompleteResponse.fromJson(
          Map<String, dynamic> json) =>
      _$SpecificCourseLessonCompleteResponseFromJson(json);

  Map<String, dynamic> toJson() =>
      _$SpecificCourseLessonCompleteResponseToJson(this);
}
