import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../../core/networking/api_error_handler.dart';
import '../data/models/developer_courses_roadmaps_response_body.dart';

part 'developer_courses_roadmaps_state.freezed.dart';

@freezed
class DeveloperCoursesRoadmapsState with _$DeveloperCoursesRoadmapsState {
  const factory DeveloperCoursesRoadmapsState.initial() = _Initial;

  const factory DeveloperCoursesRoadmapsState.loading() =
      DeveloperCoursesRoadmapsLoading;

  const factory DeveloperCoursesRoadmapsState.success(
    List<DeveloperCoursesRoadmapsResponseBody> roadmaps,
  ) = DeveloperCoursesRoadmapsSuccess;

  const factory DeveloperCoursesRoadmapsState.error(
    ErrorHandler errorHandler,
  ) = DeveloperCoursesRoadmapsError;
}
