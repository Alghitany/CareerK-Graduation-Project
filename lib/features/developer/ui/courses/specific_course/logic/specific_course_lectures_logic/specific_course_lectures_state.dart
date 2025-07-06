import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../../../core/networking/api_error_handler.dart';
import '../../data/model/specific_course_lectures_models/specific_course_lectures_response_body.dart';

part 'specific_course_lectures_state.freezed.dart';

@freezed
class SpecificCourseLecturesState with _$SpecificCourseLecturesState {
  const factory SpecificCourseLecturesState.initial() = _Initial;

  const factory SpecificCourseLecturesState.loading() =
      SpecificCourseLecturesLoading;

  const factory SpecificCourseLecturesState.success(
    List<SpecificCourseLecturesResponseBody> data,
  ) = SpecificCourseLecturesSuccess;

  const factory SpecificCourseLecturesState.error(
    ErrorHandler errorHandler,
  ) = SpecificCourseLecturesError;
}
