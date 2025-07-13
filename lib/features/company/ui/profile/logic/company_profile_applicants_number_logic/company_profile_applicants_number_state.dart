import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../../core/networking/api_error_handler.dart';
import '../../data/models/company_profile_applicants_number_models/company_profile_applicants_number_response_body.dart';

part 'company_profile_applicants_number_state.freezed.dart';

@freezed
class CompanyProfileApplicantsNumberState
    with _$CompanyProfileApplicantsNumberState {
  const factory CompanyProfileApplicantsNumberState.initial() =
      _CompanyProfileApplicantsNumberInitial;

  const factory CompanyProfileApplicantsNumberState.loading() =
      CompanyProfileApplicantsNumberLoading;

  const factory CompanyProfileApplicantsNumberState.success(
    CompanyProfileApplicantsNumberResponseBody response,
  ) = CompanyProfileApplicantsNumberSuccess;

  const factory CompanyProfileApplicantsNumberState.error(
    ErrorHandler errorHandler,
  ) = CompanyProfileApplicantsNumberError;
}
