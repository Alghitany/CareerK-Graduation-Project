import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/model/specific_course_lesson_complete_models/specific_course_lesson_complete_response.dart';

part 'specific_course_lesson_complete_state.freezed.dart';

@freezed
class SpecificCourseLessonCompleteState with _$SpecificCourseLessonCompleteState {
  const factory SpecificCourseLessonCompleteState.initial() = _Initial;

  const factory SpecificCourseLessonCompleteState.loading() = SpecificCourseLessonCompleteLoading;

  const factory SpecificCourseLessonCompleteState.success(
      SpecificCourseLessonCompleteResponse data,
      ) = SpecificCourseLessonCompleteSuccess;

  const factory SpecificCourseLessonCompleteState.error({String? error}) = SpecificCourseLessonCompleteError;
}
