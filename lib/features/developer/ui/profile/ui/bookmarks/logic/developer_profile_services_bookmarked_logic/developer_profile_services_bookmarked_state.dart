import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/models/developer_profile_services_bookmarked_models/developer_profile_services_bookmarked_response_body.dart';

part 'developer_profile_services_bookmarked_state.freezed.dart';

@freezed
class DeveloperProfileServicesBookmarkedState
    with _$DeveloperProfileServicesBookmarkedState {
  const factory DeveloperProfileServicesBookmarkedState.initial() = _Initial;

  const factory DeveloperProfileServicesBookmarkedState.loading() =
      DeveloperProfileServicesBookmarkedLoading;

  const factory DeveloperProfileServicesBookmarkedState.success(
    List<DeveloperProfileServicesBookmarkedResponseBody> data,
  ) = DeveloperProfileServicesBookmarkedSuccess;

  const factory DeveloperProfileServicesBookmarkedState.error({String? error}) =
      DeveloperProfileServicesBookmarkedError;
}
