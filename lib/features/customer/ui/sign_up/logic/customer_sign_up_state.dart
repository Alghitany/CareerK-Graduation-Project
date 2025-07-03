import 'package:freezed_annotation/freezed_annotation.dart';

part 'customer_sign_up_state.freezed.dart';

@freezed
class CustomerSignUpState<T> with _$CustomerSignUpState<T> {
  const factory CustomerSignUpState.initial() = _Initial;

  const factory CustomerSignUpState.customerSignupLoading() =
      CustomerSignupLoading;

  const factory CustomerSignUpState.customerSignupSuccess(T data) =
      CustomerSignupSuccess<T>;

  const factory CustomerSignUpState.customerSignupError({
    required String error,
  }) = CustomerSignupError;
}
