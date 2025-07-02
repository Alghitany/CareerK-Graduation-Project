import 'package:freezed_annotation/freezed_annotation.dart';

import '../data/models/developer_jobs_job_details_response_body.dart';

part 'developer_jobs_job_details_state.freezed.dart';

@freezed
class DeveloperJobsJobDetailsState with _$DeveloperJobsJobDetailsState {
  const factory DeveloperJobsJobDetailsState.initial() = _Initial;

  const factory DeveloperJobsJobDetailsState.jobDetailsLoading() =
  JobDetailsLoading;

  const factory DeveloperJobsJobDetailsState.jobDetailsSuccess(
      DeveloperJobsJobDetailsResponseBody data,
      ) = JobDetailsSuccess;

  const factory DeveloperJobsJobDetailsState.jobDetailsError({
    required String error,
  }) = JobDetailsError;
}
