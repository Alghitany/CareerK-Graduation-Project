import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/networking/api_error_model.dart';

part 'change_password_state.freezed.dart';

@freezed
class ChangePasswordState<T> with _$ChangePasswordState<T> {
  const factory ChangePasswordState.initial() = _Initial;

  const factory ChangePasswordState.loading() = Loading;

  const factory ChangePasswordState.success(T data) = Success<T>;

  const factory ChangePasswordState.error(ApiErrorModel apiErrorModel) = Error;
}
