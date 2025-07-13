import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/models/service_delete/developer_service_delete_response_body.dart';

part 'developer_service_delete_state.freezed.dart';

@freezed
class DeveloperServiceDeleteState with _$DeveloperServiceDeleteState {
  const factory DeveloperServiceDeleteState.initial() = Initial;

  const factory DeveloperServiceDeleteState.loading() = Loading;

  const factory DeveloperServiceDeleteState.success(
    DeveloperProfileAppliedServicesResponseBody data,
  ) = Success;

  const factory DeveloperServiceDeleteState.error({
    required String error,
  }) = Error;
}
