import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/models/main_page_related_courses/developer_courses_main_page_related_courses_response_body.dart';

part 'developer_courses_main_page_related_courses_state.freezed.dart';

@freezed
class DeveloperCoursesMainPageRelatedCoursesState
    with _$DeveloperCoursesMainPageRelatedCoursesState {
  const factory DeveloperCoursesMainPageRelatedCoursesState.initial() =
      _DeveloperCoursesMainPageRelatedCoursesInitial;

  const factory DeveloperCoursesMainPageRelatedCoursesState.loading() =
      DeveloperCoursesMainPageRelatedCoursesLoading;

  const factory DeveloperCoursesMainPageRelatedCoursesState.success(
    List<DeveloperCoursesMainPageRelatedCoursesResponseBody> courses,
  ) = DeveloperCoursesMainPageRelatedCoursesSuccess;

  const factory DeveloperCoursesMainPageRelatedCoursesState.error(
      {required String error}) = DeveloperCoursesMainPageRelatedCoursesError;
}
