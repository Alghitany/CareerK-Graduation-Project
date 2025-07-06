import 'package:freezed_annotation/freezed_annotation.dart';

part 'verify_code_state.freezed.dart';

@freezed
class VerifyCodeState<T> with _$VerifyCodeState<T> {
  const factory VerifyCodeState.initial() = _Initial;

  const factory VerifyCodeState.loading() = Loading;

  const factory VerifyCodeState.success(T data) = Success<T>;

  const factory VerifyCodeState.error({required String error}) = Error;
}
