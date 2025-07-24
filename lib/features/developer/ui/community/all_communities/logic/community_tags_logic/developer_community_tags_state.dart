import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../../../core/networking/api_error_model.dart';

part 'developer_community_tags_state.freezed.dart';

@freezed
class DeveloperCommunityTagsState with _$DeveloperCommunityTagsState {
  const factory DeveloperCommunityTagsState.initial() =
      _DeveloperCommunityTagsInitial;

  const factory DeveloperCommunityTagsState.loading() =
      DeveloperCommunityTagsLoading;

  const factory DeveloperCommunityTagsState.success(
    List<String> tags,
  ) = DeveloperCommunityTagsSuccess;

  const factory DeveloperCommunityTagsState.error(ApiErrorModel apiErrorModel) = DeveloperCommunityTagsError;
}
