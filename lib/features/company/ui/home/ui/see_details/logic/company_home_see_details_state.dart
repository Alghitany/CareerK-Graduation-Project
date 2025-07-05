import 'package:freezed_annotation/freezed_annotation.dart';

part 'company_home_see_details_state.freezed.dart';

@freezed
class CompanyHomeSeeDetailsState<T> with _$CompanyHomeSeeDetailsState<T> {
  const factory CompanyHomeSeeDetailsState.initial() = _Initial;

  const factory CompanyHomeSeeDetailsState.loading() = Loading;

  const factory CompanyHomeSeeDetailsState.success(T data) = Success<T>;

  const factory CompanyHomeSeeDetailsState.error({required String error}) =
      Error;
}
