import 'package:freezed_annotation/freezed_annotation.dart';

part 'developer_jobs_apply_state.freezed.dart';

@freezed
class DeveloperJobsApplyState<T> with _$DeveloperJobsApplyState<T> {
  const factory DeveloperJobsApplyState.initial() = _Initial;

  const factory DeveloperJobsApplyState.jobsApplyLoading() = JobsApplyLoading;

  const factory DeveloperJobsApplyState.jobsApplySuccess(T data) =
  JobsApplySuccess<T>;

  const factory DeveloperJobsApplyState.jobsApplyError({
    required String error,
  }) = JobsApplyError;
}
