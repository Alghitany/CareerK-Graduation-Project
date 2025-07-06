import 'package:freezed_annotation/freezed_annotation.dart';

part 'customer_home_state.freezed.dart';

@freezed
class CustomerHomeState<T> with _$CustomerHomeState<T> {
  const factory CustomerHomeState.initial() = _Initial;

  const factory CustomerHomeState.loading() = Loading;

  const factory CustomerHomeState.success(T data) = Success<T>;

  const factory CustomerHomeState.error({
    required String error,
  }) = Error;
}
