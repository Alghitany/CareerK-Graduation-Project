import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/networking/api_error_handler.dart';
import '../../data/models/developer_courses_and_jobs_main_page_profile_models/developer_courses_and_jobs_main_page_profile_response_model.dart';

part 'developer_courses_and_jobs_main_page_profile_state.freezed.dart';

@freezed
class DeveloperCoursesAndJobsMainPageProfileState
    with _$DeveloperCoursesAndJobsMainPageProfileState {
  const factory DeveloperCoursesAndJobsMainPageProfileState.initial() =
      _Initial;

  const factory DeveloperCoursesAndJobsMainPageProfileState.loading() =
      DeveloperCoursesAndJobsMainPageProfileLoading;

  const factory DeveloperCoursesAndJobsMainPageProfileState.success(
    DeveloperCoursesAndJobsMainPageProfileResponseModel responseModel,
  ) = DeveloperCoursesAndJobsMainPageProfileSuccess;

  const factory DeveloperCoursesAndJobsMainPageProfileState.error(
    ErrorHandler errorHandler,
  ) = DeveloperCoursesAndJobsMainPageProfileError;
}
