import 'package:freezed_annotation/freezed_annotation.dart';

part 'company_update_application_status_state.freezed.dart';

@freezed
class CompanyUpdateApplicationStatusState<T>
    with _$CompanyUpdateApplicationStatusState<T> {
  const factory CompanyUpdateApplicationStatusState.initial() = _Initial;

  const factory CompanyUpdateApplicationStatusState.loading() = Loading;

  const factory CompanyUpdateApplicationStatusState.success(T data) =
      Success<T>;

  const factory CompanyUpdateApplicationStatusState.error(
      {required String error}) = Error;
}
