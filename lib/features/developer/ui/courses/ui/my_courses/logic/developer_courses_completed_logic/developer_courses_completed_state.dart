import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/models/developer_courses_completed_response_body.dart';

part 'developer_courses_completed_state.freezed.dart';

@freezed
class DeveloperCoursesCompletedState with _$DeveloperCoursesCompletedState {
  const factory DeveloperCoursesCompletedState.initial() =
      _DeveloperCoursesCompletedStateInitial;

  const factory DeveloperCoursesCompletedState.loading() =
      DeveloperCoursesCompletedStateLoading;

  const factory DeveloperCoursesCompletedState.success(
    List<DeveloperCoursesCompletedResponseBody> courses,
  ) = DeveloperCoursesCompletedSuccess;

  const factory DeveloperCoursesCompletedState.error({
    required String error,
  }) = DeveloperCoursesCompletedError;
}
