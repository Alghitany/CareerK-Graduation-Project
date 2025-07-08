import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/models/company_profile_models/company_profile_response_body.dart';

part 'company_profile_info_state.freezed.dart';

@freezed
class CompanyProfileInfoState with _$CompanyProfileInfoState {
  const factory CompanyProfileInfoState.initial() = _CompanyProfileInfoInitial;

  const factory CompanyProfileInfoState.loading() = CompanyProfileInfoLoading;

  const factory CompanyProfileInfoState.success(
    CompanyProfileResponseBody profile,
  ) = CompanyProfileInfoSuccess;

  const factory CompanyProfileInfoState.error({
    required String error,
  }) = CompanyProfileInfoError;
}
