import 'package:freezed_annotation/freezed_annotation.dart';

import '../data/model/developer_jobs_service_details_response_body.dart';

part 'developer_jobs_service_details_state.freezed.dart';

@freezed
class DeveloperJobsServiceDetailsState with _$DeveloperJobsServiceDetailsState {
  const factory DeveloperJobsServiceDetailsState.initial() = _Initial;

  const factory DeveloperJobsServiceDetailsState.serviceDetailsLoading() =
      ServiceDetailsLoading;

  const factory DeveloperJobsServiceDetailsState.serviceDetailsSuccess(
    DeveloperJobsServiceDetailsResponseBody data,
  ) = ServiceDetailsSuccess;

  const factory DeveloperJobsServiceDetailsState.serviceDetailsError({
    required String error,
  }) = ServiceDetailsError;
}
