import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/model/reject_application/reject_application_response.dart';

part 'reject_applications_state.freezed.dart';

@freezed
class RejectApplicationsState with _$RejectApplicationsState {
  const factory RejectApplicationsState.initial() = _Initial;
  const factory RejectApplicationsState.loading() = _Loading;
  const factory RejectApplicationsState.success(
      RejectApplicationResponse response) = _Success;
  const factory RejectApplicationsState.error(String message) = _Error;
}
