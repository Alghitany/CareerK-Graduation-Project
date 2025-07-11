import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../../../../core/networking/api_error_handler.dart';
import '../../data/model/specific_course_overview_models/specific_course_overview_response_body.dart';

part 'specific_course_overview_state.freezed.dart';

@freezed
class SpecificCourseOverviewState with _$SpecificCourseOverviewState {
  const factory SpecificCourseOverviewState.initial() = _Initial;

  const factory SpecificCourseOverviewState.loading() =
      SpecificCourseOverviewLoading;

  const factory SpecificCourseOverviewState.success(
    SpecificCourseOverviewResponseBody data,
  ) = SpecificCourseOverviewSuccess;

  const factory SpecificCourseOverviewState.error(
    ErrorHandler errorHandler,
  ) = SpecificCourseOverviewError;
}
