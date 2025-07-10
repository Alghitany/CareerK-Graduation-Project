import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/models/developer_profile_settings_update_uploaded_cv_models/developer_profile_settings_update_uploaded_cv_response_body.dart';

part 'developer_profile_settings_update_uploaded_cv_state.freezed.dart';

@freezed
class DeveloperProfileSettingsUpdateUploadedCVState
    with _$DeveloperProfileSettingsUpdateUploadedCVState {
  const factory DeveloperProfileSettingsUpdateUploadedCVState.initial() =
      _DeveloperProfileSittingsUpdateUploadedMyCVInitial;

  const factory DeveloperProfileSettingsUpdateUploadedCVState.loading() =
      DeveloperProfileSittingsUpdateUploadedMyCVLoading;

  const factory DeveloperProfileSettingsUpdateUploadedCVState.success(
    DeveloperProfileSettingsUpdateUploadedCVResponseBody data,
  ) = DeveloperProfileSittingsUpdateUploadedMyCVSuccess;

  const factory DeveloperProfileSettingsUpdateUploadedCVState.error({
    required String error,
  }) = DeveloperProfileSittingsUpdateUploadedMyCVError;
}
