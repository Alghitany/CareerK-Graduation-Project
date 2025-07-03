import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/models/developer_jobs_recently_posted_models/developer_jobs_recently_posted_response_body.dart';

part 'developer_jobs_recently_posted_state.freezed.dart';

@freezed
class DeveloperJobsRecentlyPostedState with _$DeveloperJobsRecentlyPostedState {
  const factory DeveloperJobsRecentlyPostedState.initial() = _Initial;

  const factory DeveloperJobsRecentlyPostedState.recentlyPostedLoading() =
      RecentlyPostedLoading;

  const factory DeveloperJobsRecentlyPostedState.recentlyPostedSuccess(
    List<DeveloperJobsRecentlyPostedResponseBody> data,
  ) = RecentlyPostedSuccess;

  const factory DeveloperJobsRecentlyPostedState.recentlyPostedError({
    required String error,
  }) = RecentlyPostedError;
}
