import 'package:json_annotation/json_annotation.dart';

part 'specific_course_lectures_response_body.g.dart';

@JsonSerializable()
class SpecificCourseLecturesResponseBody {
  final String type;
  final String title;

  @JsonKey(name: 'video_time')
  final String? videoTime;

  @JsonKey(name: 'video_url')
  final String? videoUrl;

  final List<QuizQuestion>? questions;

  SpecificCourseLecturesResponseBody({
    required this.type,
    required this.title,
    this.videoTime,
    this.videoUrl,
    this.questions,
  });

  factory SpecificCourseLecturesResponseBody.fromJson(
          Map<String, dynamic> json) =>
      _$SpecificCourseLecturesResponseBodyFromJson(json);

  Map<String, dynamic> toJson() =>
      _$SpecificCourseLecturesResponseBodyToJson(this);
}

@JsonSerializable()
class QuizQuestion {
  final String question;
  final List<String> options;
  final String correct;

  QuizQuestion({
    required this.question,
    required this.options,
    required this.correct,
  });

  factory QuizQuestion.fromJson(Map<String, dynamic> json) =>
      _$QuizQuestionFromJson(json);

  Map<String, dynamic> toJson() => _$QuizQuestionToJson(this);
}
