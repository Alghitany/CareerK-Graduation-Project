import 'package:freezed_annotation/freezed_annotation.dart';
import '../../data/models/main_page_ongoing_courses/developer_courses_main_page_ongoing_courses_response_body.dart';

part 'developer_courses_main_page_ongoing_courses_state.freezed.dart';

@freezed
class DeveloperCoursesMainPageOngoingCoursesState
    with _$DeveloperCoursesMainPageOngoingCoursesState {
  const factory DeveloperCoursesMainPageOngoingCoursesState.initial() =
      _DeveloperCoursesMainPageOngoingCoursesInitial;

  const factory DeveloperCoursesMainPageOngoingCoursesState.loading() =
      DeveloperCoursesMainPageOngoingCoursesLoading;

  const factory DeveloperCoursesMainPageOngoingCoursesState.success(
    List<DeveloperCoursesMainPageOngoingCoursesResponseBody> courses,
  ) = DeveloperCoursesMainPageOngoingCoursesSuccess;

  const factory DeveloperCoursesMainPageOngoingCoursesState.error({
    required String error
}) = DeveloperCoursesMainPageOngoingCoursesError;
}
