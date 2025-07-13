import 'package:freezed_annotation/freezed_annotation.dart';
import '../../data/model/reject_applications_model/reject_application_response.dart';

part 'reject_applications_state.freezed.dart'; // ✅ fixed to match your file name

@freezed
class RejectApplicationState with _$RejectApplicationState {
  const factory RejectApplicationState.initial() = Initial;
  const factory RejectApplicationState.loading() = Loading;
  const factory RejectApplicationState.success(
      RejectApplicationResponseBody data) = Success;
  const factory RejectApplicationState.error({required String error}) = Error;
}
