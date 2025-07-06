import 'package:carrerk/features/customer/ui/applied/data/model/reject_applications_model/reject_application_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'reject_applications_state.freezed.dart';

@freezed
class RejectApplicationsState with _$RejectApplicationsState {
  const factory RejectApplicationsState.initial() = _Initial;
  const factory RejectApplicationsState.loading() = _Loading;
  const factory RejectApplicationsState.success(
      RejectApplicationResponse response) = _Success;
  const factory RejectApplicationsState.error(String message) = _Error;
}
