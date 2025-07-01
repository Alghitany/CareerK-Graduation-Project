import 'package:freezed_annotation/freezed_annotation.dart';

part 'company_sign_up_state.freezed.dart';

@freezed
class CompanySignupState<T> with _$CompanySignupState<T> {
  const factory CompanySignupState.initial() = _Initial;

  const factory CompanySignupState.companySignupLoading() =
      CompanySignupLoading;

  const factory CompanySignupState.companySignupSuccess(T data) =
      CompanySignupSuccess<T>;

  const factory CompanySignupState.companySignupError({
    required String error,
  }) = CompanySignupError;
}
