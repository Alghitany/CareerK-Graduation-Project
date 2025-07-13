import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/models/by_interest_models/developer_community_by_interest_response_body.dart';

part 'developer_community_by_interest_state.freezed.dart';

@freezed
class DeveloperCommunityByInterestState
    with _$DeveloperCommunityByInterestState {
  const factory DeveloperCommunityByInterestState.initial() =
      _DeveloperCommunityByInterestInitial;

  const factory DeveloperCommunityByInterestState.loading() =
      DeveloperCommunityByInterestLoading;

  const factory DeveloperCommunityByInterestState.success(
    List<DeveloperCommunityByInterestGroup> groups,
  ) = DeveloperCommunityByInterestSuccess;

  const factory DeveloperCommunityByInterestState.error(
      {required String error}) = DeveloperCommunityByInterestError;
}
