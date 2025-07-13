import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/models/developer_profile_courses_bookmarked_models/developer_profile_courses_bookmarked_response_body.dart';

part 'developer_profile_courses_bookmarked_state.freezed.dart';

@freezed
class DeveloperProfileCoursesBookmarkedState
    with _$DeveloperProfileCoursesBookmarkedState {
  const factory DeveloperProfileCoursesBookmarkedState.initial() = _Initial;

  const factory DeveloperProfileCoursesBookmarkedState.loading() =
      DeveloperProfileCoursesBookmarkedLoading;

  const factory DeveloperProfileCoursesBookmarkedState.success(
          List<DeveloperProfileCoursesBookmarkedResponseBody> data) =
      DeveloperProfileCoursesBookmarkedSuccess;

  const factory DeveloperProfileCoursesBookmarkedState.error({
    String? error,
  }) = DeveloperProfileCoursesBookmarkedError;
}
