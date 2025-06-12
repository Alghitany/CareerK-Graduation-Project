import 'package:freezed_annotation/freezed_annotation.dart';

part 'company_sign_up_state.freezed.dart';

@freezed
class CompanySignUpState<T> with _$CompanySignUpState<T> {
  const factory CompanySignUpState.initial() = _Initial;

  const factory CompanySignUpState.companySignupLoading() =
      CompanySignupLoading;
  const factory CompanySignUpState.companySignupSuccess(T data) =
      CompanySignupSuccess<T>;
  const factory CompanySignUpState.companySignupError({
    required String error,
  }) = CompanySignupError;
}
