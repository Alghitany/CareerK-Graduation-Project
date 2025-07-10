import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/models/generate_models/developer_profile_cv_generate_generated_response.dart';

part 'developer_profile_cv_generate_generated_state.freezed.dart';

@freezed
class DeveloperProfileCVGenerateGeneratedState
    with _$DeveloperProfileCVGenerateGeneratedState {
  const factory DeveloperProfileCVGenerateGeneratedState.initial() = _Initial;

  const factory DeveloperProfileCVGenerateGeneratedState.loading() = Loading;

  const factory DeveloperProfileCVGenerateGeneratedState.success(
    DeveloperProfileCVGenerateGeneratedResponse data,
  ) = Success;

  const factory DeveloperProfileCVGenerateGeneratedState.error({
    required String error,
  }) = Error;
}
