import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/models/developer_profile_applied_jobs_models/developer_profile_applied_jobs_response_body.dart';

part 'developer_profile_applied_jobs_state.freezed.dart';

@freezed
class DeveloperProfileAppliedJobsState with _$DeveloperProfileAppliedJobsState {
  const factory DeveloperProfileAppliedJobsState.initial() = Initial;

  const factory DeveloperProfileAppliedJobsState.loading() = Loading;

  const factory DeveloperProfileAppliedJobsState.success(
    DeveloperProfileAppliedJobsResponseBody data,
  ) = Success;

  const factory DeveloperProfileAppliedJobsState.error({
    required String error,
  }) = Error;
}
