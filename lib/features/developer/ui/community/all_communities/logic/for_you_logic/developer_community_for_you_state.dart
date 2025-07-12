import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/models/for_you_models/developer_community_for_you_response_body.dart';

part 'developer_community_for_you_state.freezed.dart';

@freezed
class DeveloperCommunityForYouState with _$DeveloperCommunityForYouState {
  const factory DeveloperCommunityForYouState.initial() =
      _DeveloperCommunityForYouStateInitial;

  const factory DeveloperCommunityForYouState.loading() =
      DeveloperCommunityForYouStateLoading;

  const factory DeveloperCommunityForYouState.success(
    List<DeveloperCommunityGroup> groups,
  ) = DeveloperCommunityForYouStateSuccess;

  const factory DeveloperCommunityForYouState.error({required String error}) =
      DeveloperCommunityForYouStateError;
}
