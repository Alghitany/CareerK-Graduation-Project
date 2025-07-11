import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/models/ongoing_courses/developer_courses_ongoing_response_body.dart';

part 'developer_courses_ongoing_state.freezed.dart';

@freezed
class DeveloperCoursesOngoingState with _$DeveloperCoursesOngoingState {
  const factory DeveloperCoursesOngoingState.initial() =
      _DeveloperCoursesOngoingStateInitial;

  const factory DeveloperCoursesOngoingState.loading() =
      DeveloperCoursesOngoingStateLoading;

  const factory DeveloperCoursesOngoingState.success(
    List<DeveloperCoursesOngoingResponseBody> courses,
  ) = DeveloperCoursesOngoingSuccess;

  const factory DeveloperCoursesOngoingState.error({required String error}) =
      DeveloperCoursesOngoingError;
}
