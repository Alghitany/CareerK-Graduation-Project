import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/models/developer_profile_settings_get_my_cv_models/developer_profile_settings_get_my_cv_response_body.dart';

part 'developer_profile_sittings_get_my_cv_state.freezed.dart';

@freezed
class DeveloperProfileSettingsGetMyCVState
    with _$DeveloperProfileSettingsGetMyCVState {
  const factory DeveloperProfileSettingsGetMyCVState.initial() =
      _DeveloperProfileSittingsMyCVInitial;

  const factory DeveloperProfileSettingsGetMyCVState.loading() =
      DeveloperProfileSittingsMyCVLoading;

  const factory DeveloperProfileSettingsGetMyCVState.success(
          DeveloperProfileSettingsGetMyCVResponseBody data) =
      DeveloperProfileSittingsMyCVSuccess;

  const factory DeveloperProfileSettingsGetMyCVState.error(
      {required String error}) = DeveloperProfileSittingsMyCVError;
}
