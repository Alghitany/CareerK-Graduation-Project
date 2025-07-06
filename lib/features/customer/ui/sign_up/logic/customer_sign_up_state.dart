import 'package:freezed_annotation/freezed_annotation.dart';

part 'customer_sign_up_state.freezed.dart';

@freezed
class CustomerSignupState<T> with _$CustomerSignupState<T> {
  const factory CustomerSignupState.initial() = _Initial;

  const factory CustomerSignupState.customerSignupLoading() =
      CustomerSignupLoading;

  const factory CustomerSignupState.customerSignupSuccess(T data) =
      CustomerSignupSuccess<T>;

  const factory CustomerSignupState.customerSignupError({
    required String error,
  }) = CustomerSignupError;
}
