import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/models/job_withdraw/developer_job_withdraw_response_body.dart';
part 'developer_job_withdraw_state.freezed.dart';

@freezed
class DeveloperJobWithdrawState with _$DeveloperJobWithdrawState {
  const factory DeveloperJobWithdrawState.initial() = Initial;

  const factory DeveloperJobWithdrawState.loading() = Loading;

  const factory DeveloperJobWithdrawState.success(
    DeveloperJobWithdrawResponseBody data,
  ) = Success;

  const factory DeveloperJobWithdrawState.error({
    required String error,
  }) = Error;
}
