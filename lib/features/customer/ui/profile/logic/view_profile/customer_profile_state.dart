import 'package:freezed_annotation/freezed_annotation.dart';

part 'customer_profile_state.freezed.dart';

@freezed
class CustomerProfileState<T> with _$CustomerProfileState<T> {
  const factory CustomerProfileState.initial() = _Initial;

  const factory CustomerProfileState.loading() = Loading;

  const factory CustomerProfileState.success(T data) = Success<T>;

  const factory CustomerProfileState.error({
    required String error,
  }) = Error;
}
