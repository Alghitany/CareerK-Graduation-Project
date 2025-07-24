import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../../../core/networking/api_error_model.dart';
import '../../data/models/specific_community_models/specific_community_response_body.dart';

part 'specific_community_state.freezed.dart';

@freezed
class SpecificCommunityState with _$SpecificCommunityState {
  const factory SpecificCommunityState.initial() = _SpecificCommunityInitial;

  const factory SpecificCommunityState.loading() = SpecificCommunityLoading;

  const factory SpecificCommunityState.success(
    DeveloperCommunityGroup group,
  ) = SpecificCommunitySuccess;

  const factory SpecificCommunityState.error(ApiErrorModel apiErrorModel) = SpecificCommunityError;
}
