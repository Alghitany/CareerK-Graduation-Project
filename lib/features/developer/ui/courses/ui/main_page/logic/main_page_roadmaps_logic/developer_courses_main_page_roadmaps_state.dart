import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/models/main_page_roadmaps_models/developer_courses_main_page_roadmaps_response_model.dart';

part 'developer_courses_main_page_roadmaps_state.freezed.dart';

@freezed
class DeveloperCoursesMainPageRoadmapsState
    with _$DeveloperCoursesMainPageRoadmapsState {
  const factory DeveloperCoursesMainPageRoadmapsState.initial() = _Initial;

  const factory DeveloperCoursesMainPageRoadmapsState.loading() =
      DeveloperCoursesMainPageRoadmapsLoading;

  const factory DeveloperCoursesMainPageRoadmapsState.success(
    List<DeveloperCoursesMainPageRoadmapsResponseModel> roadmaps,
  ) = DeveloperCoursesMainPageRoadmapsSuccess;

  const factory DeveloperCoursesMainPageRoadmapsState.error({
    required String error,
  }) = DeveloperCoursesMainPageRoadmapsError;
}
