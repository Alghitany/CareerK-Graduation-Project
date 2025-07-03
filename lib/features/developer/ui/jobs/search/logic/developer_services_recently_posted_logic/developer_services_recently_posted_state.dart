import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/models/developer_services_recently_posted_models/developer_services_recently_posted_response_body.dart';

part 'developer_services_recently_posted_state.freezed.dart';

@freezed
class DeveloperServicesRecentlyPostedState
    with _$DeveloperServicesRecentlyPostedState {
  const factory DeveloperServicesRecentlyPostedState.initial() = _Initial;

  const factory DeveloperServicesRecentlyPostedState.recentlyPostedLoading() =
      RecentlyPostedLoading;

  const factory DeveloperServicesRecentlyPostedState.recentlyPostedSuccess(
    List<DeveloperServicesRecentlyPostedResponseBody> data,
  ) = RecentlyPostedSuccess;

  const factory DeveloperServicesRecentlyPostedState.recentlyPostedError({
    required String error,
  }) = RecentlyPostedError;
}
