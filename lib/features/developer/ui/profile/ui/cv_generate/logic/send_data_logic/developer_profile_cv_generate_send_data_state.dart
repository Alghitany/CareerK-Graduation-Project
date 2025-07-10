import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/models/send_data_models/developer_profile_cv_generate_send_data_response.dart';

part 'developer_profile_cv_generate_send_data_state.freezed.dart';

@freezed
class DeveloperProfileCVGenerateSendDataState
    with _$DeveloperProfileCVGenerateSendDataState {
  const factory DeveloperProfileCVGenerateSendDataState.initial() = _Initial;

  const factory DeveloperProfileCVGenerateSendDataState.loading() = Loading;

  const factory DeveloperProfileCVGenerateSendDataState.success(
    DeveloperProfileCVGenerateSendDataResponse data,
  ) = Success;

  const factory DeveloperProfileCVGenerateSendDataState.error({
    required String error,
  }) = Error;
}
