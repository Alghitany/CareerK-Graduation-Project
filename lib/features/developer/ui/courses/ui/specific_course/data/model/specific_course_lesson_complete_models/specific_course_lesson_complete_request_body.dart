import 'package:json_annotation/json_annotation.dart';

part 'specific_course_lesson_complete_request_body.g.dart';

@JsonSerializable()
class SpecificCourseLessonCompleteRequestBody {
  @JsonKey(name: 'lessonId')
  final String lessonId;

  SpecificCourseLessonCompleteRequestBody({
    required this.lessonId,
  });

  factory SpecificCourseLessonCompleteRequestBody.fromJson(
          Map<String, dynamic> json) =>
      _$SpecificCourseLessonCompleteRequestBodyFromJson(json);

  Map<String, dynamic> toJson() =>
      _$SpecificCourseLessonCompleteRequestBodyToJson(this);
}
