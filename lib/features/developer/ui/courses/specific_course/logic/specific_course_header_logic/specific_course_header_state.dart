import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../../../core/networking/api_error_handler.dart';
import '../../data/model/specific_course_header_models/specific_course_header_response_body.dart';
part 'specific_course_header_state.freezed.dart';

@freezed
class SpecificCourseHeaderState with _$SpecificCourseHeaderState {
  const factory SpecificCourseHeaderState.initial() = _Initial;

  const factory SpecificCourseHeaderState.loading() =
      SpecificCourseHeaderLoading;

  const factory SpecificCourseHeaderState.success(
    SpecificCourseHeaderResponseBody data,
  ) = SpecificCourseHeaderSuccess;

  const factory SpecificCourseHeaderState.error(
    ErrorHandler errorHandler,
  ) = SpecificCourseHeaderError;
}
