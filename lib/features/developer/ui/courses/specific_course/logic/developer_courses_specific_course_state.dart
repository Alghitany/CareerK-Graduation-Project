import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../../core/networking/api_error_handler.dart';
import '../data/models/developer_courses_specific_course_response_body.dart';

part 'developer_courses_specific_course_state.freezed.dart';

@freezed
class DeveloperCoursesSpecificCourseState
    with _$DeveloperCoursesSpecificCourseState {
  const factory DeveloperCoursesSpecificCourseState.initial() = _Initial;

  const factory DeveloperCoursesSpecificCourseState.loading() =
      DeveloperCoursesSpecificCourseLoading;

  const factory DeveloperCoursesSpecificCourseState.success(
    DeveloperCoursesSpecificCourseResponseBody course,
  ) = DeveloperCoursesSpecificCourseSuccess;

  const factory DeveloperCoursesSpecificCourseState.error(
    ErrorHandler errorHandler,
  ) = DeveloperCoursesSpecificCourseError;
}
