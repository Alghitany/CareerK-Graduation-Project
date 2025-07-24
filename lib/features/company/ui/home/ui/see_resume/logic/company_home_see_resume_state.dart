import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../../../core/networking/api_error_model.dart';

part 'company_home_see_resume_state.freezed.dart';

@freezed
class CompanyHomeSeeResumeState<T> with _$CompanyHomeSeeResumeState<T> {
  const factory CompanyHomeSeeResumeState.initial() = _Initial;

  const factory CompanyHomeSeeResumeState.loading() = Loading;

  const factory CompanyHomeSeeResumeState.success(T data) = Success<T>;

  const factory CompanyHomeSeeResumeState.error(ApiErrorModel apiErrorModel) =
      Error;
}
