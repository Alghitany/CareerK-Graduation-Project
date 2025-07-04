import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/models/developer_courses_home_main_page_models/developer_courses_home_main_page_response_body.dart';

part 'developer_courses_home_main_page_state.freezed.dart';

@freezed
class DeveloperCoursesHomeMainPageState
    with _$DeveloperCoursesHomeMainPageState {
  const factory DeveloperCoursesHomeMainPageState.initial() = _Initial;

  const factory DeveloperCoursesHomeMainPageState.developerCoursesLoading() =
      DeveloperCoursesLoading;

  const factory DeveloperCoursesHomeMainPageState.developerCoursesSuccess(
    List<DeveloperCoursesHomeMainPageResponseBody> data,
  ) = DeveloperCoursesSuccess;

  const factory DeveloperCoursesHomeMainPageState.developerCoursesError({
    required String error,
  }) = DeveloperCoursesError;
}
