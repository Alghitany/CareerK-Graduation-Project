import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/models/developer_profile_settings_delete_cv/developer_profile_settings_delete_cv_response.dart';

part 'developer_profile_settings_delete_cv_state.freezed.dart';

@freezed
class DeveloperProfileSettingsDeleteCVState
    with _$DeveloperProfileSettingsDeleteCVState {
  const factory DeveloperProfileSettingsDeleteCVState.initial() =
      _DeveloperProfileSettingsDeleteCVInitial;

  const factory DeveloperProfileSettingsDeleteCVState.loading() =
      DeveloperProfileSettingsDeleteCVLoading;

  const factory DeveloperProfileSettingsDeleteCVState.success(
    DeveloperProfileSettingsDeleteCVResponseBody response,
  ) = DeveloperProfileSettingsDeleteCVSuccess;

  const factory DeveloperProfileSettingsDeleteCVState.error({
    required String error,
  }) = DeveloperProfileSettingsDeleteCVError;
}
