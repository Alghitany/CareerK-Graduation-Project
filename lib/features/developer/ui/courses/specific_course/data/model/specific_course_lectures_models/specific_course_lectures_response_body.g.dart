// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'specific_course_lectures_response_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SpecificCourseLecturesResponseBody _$SpecificCourseLecturesResponseBodyFromJson(
        Map<String, dynamic> json) =>
    SpecificCourseLecturesResponseBody(
      type: json['type'] as String,
      title: json['title'] as String,
      videoTime: json['video_time'] as String?,
      videoUrl: json['video_url'] as String?,
      questions: (json['questions'] as List<dynamic>?)
          ?.map((e) => QuizQuestion.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SpecificCourseLecturesResponseBodyToJson(
        SpecificCourseLecturesResponseBody instance) =>
    <String, dynamic>{
      'type': instance.type,
      'title': instance.title,
      'video_time': instance.videoTime,
      'video_url': instance.videoUrl,
      'questions': instance.questions,
    };

QuizQuestion _$QuizQuestionFromJson(Map<String, dynamic> json) => QuizQuestion(
      question: json['question'] as String,
      options:
          (json['options'] as List<dynamic>).map((e) => e as String).toList(),
      correct: json['correct'] as String,
    );

Map<String, dynamic> _$QuizQuestionToJson(QuizQuestion instance) =>
    <String, dynamic>{
      'question': instance.question,
      'options': instance.options,
      'correct': instance.correct,
    };
