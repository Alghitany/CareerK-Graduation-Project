import 'package:freezed_annotation/freezed_annotation.dart';

part 'company_home_main_page_state.freezed.dart';

@freezed
class CompanyHomeMainPageState<T> with _$CompanyHomeMainPageState<T> {
  const factory CompanyHomeMainPageState.initial() = _Initial;

  const factory CompanyHomeMainPageState.loading() = Loading;

  const factory CompanyHomeMainPageState.success(T data) = Success<T>;

  const factory CompanyHomeMainPageState.error({required String error}) = Error;
}
