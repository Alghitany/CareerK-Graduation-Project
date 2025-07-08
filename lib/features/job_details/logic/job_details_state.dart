import 'package:freezed_annotation/freezed_annotation.dart';

import '../data/models/job_details_response_body.dart';

part 'job_details_state.freezed.dart';

@freezed
class JobDetailsState with _$JobDetailsState {
  const factory JobDetailsState.initial() = _Initial;

  const factory JobDetailsState.jobDetailsLoading() = JobDetailsLoading;

  const factory JobDetailsState.jobDetailsSuccess(
    JobDetailsResponseBody data,
  ) = JobDetailsSuccess;

  const factory JobDetailsState.jobDetailsError({
    required String error,
  }) = JobDetailsError;
}
