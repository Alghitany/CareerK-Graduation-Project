import 'package:carrerk/features/customer/profile/data/model/customer_profile_info/customer_profile_info_response_body.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'customer_profile_info_state.freezed.dart';

@freezed
class CustomerProfileInfoState with _$CustomerProfileInfoState {
  const factory CustomerProfileInfoState.initial() =
      _CustomerProfileInfoInitial;

  const factory CustomerProfileInfoState.loading() = CustomerProfileInfoLoading;

  const factory CustomerProfileInfoState.success(
    CustomerProfileInfoResponseBody response,
  ) = CustomerProfileInfoSuccess;

  const factory CustomerProfileInfoState.error({
    required String error,
  }) = CustomerProfileInfoError;
}
