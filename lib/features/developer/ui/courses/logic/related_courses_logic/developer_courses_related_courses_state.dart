import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/models/related_courses/developer_courses_related_courses_response_body.dart';

part 'developer_courses_related_courses_state.freezed.dart';

@freezed
class DeveloperCoursesRelatedCoursesState
    with _$DeveloperCoursesRelatedCoursesState {
  const factory DeveloperCoursesRelatedCoursesState.initial() =
      _DeveloperCoursesRelatedCoursesInitial;

  const factory DeveloperCoursesRelatedCoursesState.loading() =
      DeveloperCoursesRelatedCoursesLoading;

  const factory DeveloperCoursesRelatedCoursesState.success(
    List<DeveloperCoursesRelatedCoursesResponseBody> courses,
  ) = DeveloperCoursesRelatedCoursesSuccess;

  const factory DeveloperCoursesRelatedCoursesState.error(
      {required String error}) = DeveloperCoursesRelatedCoursesError;
}
