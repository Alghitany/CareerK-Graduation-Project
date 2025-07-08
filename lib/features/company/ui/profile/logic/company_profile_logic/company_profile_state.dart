import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/models/company_profile_models/company_profile_response_body.dart';

part 'company_profile_state.freezed.dart';

@freezed
class CompanyProfileState with _$CompanyProfileState {
  const factory CompanyProfileState.initial() = _CompanyProfileInitial;

  const factory CompanyProfileState.loading() = CompanyProfileLoading;

  const factory CompanyProfileState.success(
    CompanyProfileResponseBody profile,
  ) = CompanyProfileSuccess;

  const factory CompanyProfileState.error({
    required String error,
  }) = CompanyProfileError;
}
