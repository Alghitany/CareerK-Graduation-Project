import 'package:carrerk/features/developer/ui/profile/ui/bookmarks/data/models/developer_profile_jobs_bookmarked_models/developer_profile_jobs_bookmarked_response_body.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'developer_profile_jobs_bookmarked_state.freezed.dart';

@freezed
class DeveloperProfileJobsBookmarkedState
    with _$DeveloperProfileJobsBookmarkedState {
  const factory DeveloperProfileJobsBookmarkedState.initial() = _Initial;

  const factory DeveloperProfileJobsBookmarkedState.loading() =
      DeveloperProfileJobsBookmarkedLoading;

  const factory DeveloperProfileJobsBookmarkedState.success(
    List<DeveloperProfileJobsBookmarkedResponseBody> data,
  ) = DeveloperProfileJobsBookmarkedSuccess;

  const factory DeveloperProfileJobsBookmarkedState.error({
    String? error,
  }) = DeveloperProfileJobsBookmarkedError;
}
