import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/networking/api_error_model.dart';

part 'company_sign_up_state.freezed.dart';

@freezed
class CompanySignupState<T> with _$CompanySignupState<T> {
  const factory CompanySignupState.initial() = _Initial;

  const factory CompanySignupState.companySignupLoading() =
      CompanySignupLoading;

  const factory CompanySignupState.companySignupSuccess(T data) =
      CompanySignupSuccess<T>;

  const factory CompanySignupState.companySignupError(ApiErrorModel apiErrorModel) = CompanySignupError;
}
