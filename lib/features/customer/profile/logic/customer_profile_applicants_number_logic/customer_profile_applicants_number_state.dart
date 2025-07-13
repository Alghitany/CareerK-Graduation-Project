import 'package:carrerk/features/customer/profile/data/model/customer_profile_applicants_number_models/customer_profile_applicants_number_response_body.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'customer_profile_applicants_number_state.freezed.dart';

@freezed
class CustomerProfileApplicantsNumberState
    with _$CustomerProfileApplicantsNumberState {
  const factory CustomerProfileApplicantsNumberState.initial() =
      _CustomerProfileApplicantsNumberInitial;

  const factory CustomerProfileApplicantsNumberState.loading() =
      CustomerProfileApplicantsNumberLoading;

  const factory CustomerProfileApplicantsNumberState.success(
    CustomerProfileApplicantsNumberResponseBody response,
  ) = CustomerProfileApplicantsNumberSuccess;

  const factory CustomerProfileApplicantsNumberState.error(
    String error,
  ) = CustomerProfileApplicantsNumberError;
}
