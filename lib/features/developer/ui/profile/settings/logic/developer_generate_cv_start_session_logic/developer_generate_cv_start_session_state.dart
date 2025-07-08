import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/models/developer_generate_cv_start_session_models/developer_generate_cv_start_session_response.dart';

part 'developer_generate_cv_start_session_state.freezed.dart';

@freezed
class DeveloperGenerateCVStartSessionState
    with _$DeveloperGenerateCVStartSessionState {
  const factory DeveloperGenerateCVStartSessionState.initial() = _Initial;

  const factory DeveloperGenerateCVStartSessionState.sessionStarting() =
      SessionStarting;

  const factory DeveloperGenerateCVStartSessionState.sessionStartedSuccess(
    DeveloperGenerateCVStartSessionResponseBody data,
  ) = SessionStartedSuccess;

  const factory DeveloperGenerateCVStartSessionState.sessionStartError({
    required String error,
  }) = SessionStartError;
}
